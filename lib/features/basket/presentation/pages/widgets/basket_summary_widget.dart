import 'package:flutter/material.dart';
import 'package:market_place/core/extensions/price_extension.dart';
import 'package:market_place/features/basket/domain/entities/basket_product_model.dart';

class BasketSummaryWidget extends StatefulWidget {
  const BasketSummaryWidget({
    super.key,
    required this.items,
  });

  final List<BasketProduct> items;

  @override
  State<BasketSummaryWidget> createState() => _BasketSummaryWidgetState();
}

class _BasketSummaryWidgetState extends State<BasketSummaryWidget> {
  int _totalCount = 0;
  int _totalPrice = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotals();
  }

  @override
  void didUpdateWidget(covariant BasketSummaryWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      _calculateTotals();
    }
  }

  void _calculateTotals() {
    _totalCount = widget.items.fold(0, (sum, e) => sum + e.count);
    _totalPrice =
        widget.items.fold(0, (sum, e) => sum + e.count * e.meal.price);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xff161B26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRow(
            'Товары, $_totalCount шт.',
            '${_totalPrice.formatPrice()} монет',
          ),
          const SizedBox(height: 10),
          _buildRow(
            'Скидка',
            '0 монет',
          ),
          const Divider(
            color: Color(0xff2C3343),
            height: 24,
          ),
          _buildRow(
            'Итого к оплате',
            '${_totalPrice.formatPrice()} монет',
            isBold: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    String label,
    String value, {
    bool isBold = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: const Color(0xffF5F5F6),
            fontSize: 16,
            fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: const Color(0xffF5F5F6),
            fontSize: 16,
            fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
