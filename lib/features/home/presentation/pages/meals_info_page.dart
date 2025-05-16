import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place/core/di/injection.dart';
import 'package:market_place/core/enums/status.dart';
import 'package:market_place/core/extensions/price_extension.dart';
import 'package:market_place/features/home/presentation/blocs/meals_info/meals_info_bloc.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';
import 'package:market_place/features/home/presentation/pages/widgets/background_youtube_video.dart';

class MealsInfoPage extends StatelessWidget {
  final String mealId;
  final int mealPrice;

  const MealsInfoPage({
    super.key,
    required this.mealId,
    required this.mealPrice,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MealsInfoBloc>()
        ..add(
          MealsInfoEvent.loadMealInfo(
            mealId,
          ),
        ),
      child: MealsInfoPageBody(
        mealId: mealId,
        mealPrice: mealPrice,
      ),
    );
  }
}

class MealsInfoPageBody extends StatefulWidget {
  final String mealId;
  final int mealPrice;

  const MealsInfoPageBody({
    super.key,
    required this.mealId,
    required this.mealPrice,
  });

  @override
  State<MealsInfoPageBody> createState() => _MealsInfoPageBodyState();
}

class _MealsInfoPageBodyState extends State<MealsInfoPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MealsInfoBloc, MealsInfoState>(
        builder: (context, state) {
          if (state.status.isInitialOrLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          final meal = state.meal;
          if (state.status.isError || meal == null) {
            return const Center(child: Text('Блюдо не найдено'));
          }
          final String? youtubeUrl = meal.youtube;

          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Builder(
                  builder: (_) {
                    if (youtubeUrl == null || youtubeUrl.isEmpty) {
                      return SizedBox.shrink();
                    }

                    return BackgroundYoutubeVideo(
                      youtubeUrl: youtubeUrl,
                    );
                  },
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList.list(
                  children: [
                    Text(
                      meal.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      meal.instructions ?? '',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff161B26),
                      ),
                    ),
                    SizedBox(height: 24),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<BasketBloc>().add(
                                BasketEvent.addMeal(meal),
                              );
                          context.pop();
                        },
                        style: ButtonStyle(
                          elevation: WidgetStateProperty.all(0),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.white),
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xff0ABAB5)),
                          overlayColor:
                              WidgetStateProperty.all(Colors.transparent),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          padding: WidgetStateProperty.all(EdgeInsets.zero),
                        ),
                        child: Text(
                          '+ ${widget.mealPrice.formatPrice()} монет',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 120),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
