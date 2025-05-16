import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:market_place/core/extensions/price_extension.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';
import 'package:market_place/features/basket/presentation/pages/widgets/basket_counter_widget.dart';

class BasketItemWidget extends StatelessWidget {
  final BasketProduct item;

  const BasketItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final meal = item.meal;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xff161B26),
      ),
      child: Row(
        children: [
          Hero(
            tag: meal.id,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                meal.thumbnail,
                width: 56,
                height: 56,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.broken_image),
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const Gap(4),
                Text(
                  '${item.meal.price.formatPrice()} монет',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xffF5F5F6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Gap(16),
          BasketCounter(
            count: item.count,
            onIncrement: () {
              context.read<BasketBloc>().add(BasketEvent.addMeal(meal));
            },
            onDecrement: () {
              context.read<BasketBloc>().add(BasketEvent.removeMeal(meal));
            },
          ),
        ],
      ),
    );
  }
}
