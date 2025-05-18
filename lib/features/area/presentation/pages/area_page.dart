import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_place/core/di/injection.dart';
import 'package:market_place/features/area/presentation/blocs/bloc/area_bloc.dart';
import 'package:market_place/core/enums/status.dart';

class AreaPage extends StatelessWidget {
  const AreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AreaBloc>()..add(const AreaEvent.loadAreas()),
      child: Scaffold(
        backgroundColor: const Color(0xff0c111d),
        appBar: AppBar(
          title: const Text(
            'Выбор страны',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff161b26),
        ),
        body: BlocBuilder<AreaBloc, AreaState>(
          builder: (context, state) {
            if (state.status is LoadingStatus) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status is ErrorStatus) {
              final error = (state.status as ErrorStatus).failure;
              return Center(
                child: Text(
                  error.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              );
            } else if (state.status is SuccessStatus) {
              final areas = state.areas;
              final selectedArea = state.selectedAreaName;
              final meals = state.meals;

              return Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: areas.length,
                      itemBuilder: (context, index) {
                        final area = areas[index];
                        return ListTile(
                          title: Text(
                            area.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          selected: selectedArea == area.name,
                          onTap: () {
                            context
                                .read<AreaBloc>()
                                .add(AreaEvent.selectArea(area.name));
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Блюда региона "$selectedArea":',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  Expanded(
                    flex: 3,
                    child: Builder(
                      builder: (_) {
                        if (state.mealsStatus is LoadingStatus) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (state.mealsStatus is ErrorStatus) {
                          final error = (state.mealsStatus as ErrorStatus).failure;
                          return Center(
                            child: Text(
                              error.toString(),
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        } else if (meals.isEmpty) {
                          return const Center(
                            child: Text(
                              'Блюда не найдены',
                              style: TextStyle(color: Colors.white),
                            ),
                          );
                        } else {
                          return ListView.builder(
                            itemCount: meals.length,
                            itemBuilder: (context, index) {
                              final meal = meals[index];
                              return ListTile(
                                title: Text(
                                  meal.name,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
