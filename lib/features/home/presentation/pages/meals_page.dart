import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_place/core/di/injection.dart';
import 'package:market_place/core/enums/status.dart';
import 'package:market_place/core/extensions/context_extension.dart';
import 'package:market_place/core/extensions/price_extension.dart';
import 'package:market_place/features/home/presentation/blocs/meals/meals_bloc.dart';
import 'package:market_place/features/home/presentation/pages/widgets/background_youtube_video.dart';
import 'package:market_place/features/home/presentation/pages/widgets/meals_bottom_sheet_widget.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';

class MealsPage extends StatelessWidget {
  const MealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MealsBloc>()
        ..add(
          const MealsEvent.loadCategories(),
        ),
      child: const MealsPageBody(),
    );
  }
}

class MealsPageBody extends StatefulWidget {
  const MealsPageBody({super.key});

  @override
  State<MealsPageBody> createState() => _MealsPageBodyState();
}

class _MealsPageBodyState extends State<MealsPageBody> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<MealsBloc, MealsState>(
          listenWhen: (prev, curr) =>
              prev.selectedCategory != curr.selectedCategory &&
              curr.selectedCategory != null,
          listener: (context, state) {
            final category = state.selectedCategory!;
            context.read<MealsBloc>().add(
                  MealsEvent.loadMeals(category.name),
                );
          },
        ),
        BlocListener<MealsBloc, MealsState>(
          listenWhen: (prev, curr) =>
              prev.mealsStatus != curr.mealsStatus &&
              curr.mealsStatus.isSuccess,
          listener: (context, state) {
            final meal = state.meals.firstOrNull!;
            context.read<MealsBloc>().add(
                  MealsEvent.loadMealInfo(meal.id),
                );
          },
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<MealsBloc, MealsState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                BlocBuilder<MealsBloc, MealsState>(
                  builder: (context, state) {
                    if (state.youtubeUrl == null || state.youtubeUrl!.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return FittedBox(
                      fit: BoxFit.cover,
                      child: BackgroundYoutubeVideo(
                        youtubeUrl: state.youtubeUrl!,
                      ),
                    );
                  },
                ),
                SafeArea(
                  bottom: false,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.categories.length,
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          itemBuilder: (context, index) {
                            final category = state.categories[index];
                            final isSelected =
                                category == state.selectedCategory;
                            return TextButton(
                              onPressed: () => context.read<MealsBloc>().add(
                                    MealsEvent.selectCategory(category),
                                  ),
                              style: ButtonStyle(
                                foregroundColor: WidgetStatePropertyAll(
                                  isSelected
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.4),
                                ),
                              ),
                              child: Text(
                                category.name,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (_, __) => const SizedBox(width: 8),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Expanded(
                        child: GridView.builder(
                          padding: EdgeInsets.only(
                            top: context.width * 0.3,
                            left: 8,
                            right: 8,
                            bottom: 120,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: state.meals.length,
                          itemBuilder: (context, index) {
                            final meal = state.meals[index];
                            return GestureDetector(
                              onTap: () => showMealsBottomSheet(
                                context,
                                meal.id,
                                meal.price,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: BackdropFilter(
                                  filter:
                                      ImageFilter.blur(sigmaX: 58, sigmaY: 58),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.24),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          meal.thumbnail,
                                          height: 100,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          meal.name,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Spacer(),
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            context
                                                .read<BasketBloc>()
                                                .add(BasketEvent.addMeal(meal));
                                          },
                                          icon: const Icon(Icons.add),
                                          label: Text(
                                              '${meal.price.formatPrice()} монет'),
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.grey.shade800,
                                            foregroundColor: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
