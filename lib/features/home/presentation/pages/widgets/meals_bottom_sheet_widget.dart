import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';
import 'package:market_place/features/home/presentation/pages/meals_info_page.dart';

void showMealsBottomSheet(
    BuildContext context,
    String mealsId,
    int mealPrice,
    ) async {
  final basketBloc = context.read<BasketBloc>();

  await showCupertinoSheet(
    context: context,
    pageBuilder: (_) => BlocProvider.value(
      value: basketBloc,
      child: MealsInfoPage(
        mealId: mealsId,
        mealPrice: mealPrice,
      ),
    ),
  );
}

