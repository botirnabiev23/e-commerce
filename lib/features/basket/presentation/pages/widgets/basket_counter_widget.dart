import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasketCounter extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final int count;

  const BasketCounter({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xff1F242F);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _CounterButton(
          icon: CupertinoIcons.minus,
          onTap: onDecrement,
          backgroundColor: backgroundColor,
        ),
        const SizedBox(width: 16),
        Text(
          '$count',
          style:  TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 16),
        _CounterButton(
          icon: CupertinoIcons.add,
          onTap: onIncrement,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}

class _CounterButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final Color backgroundColor;

  const _CounterButton({
    required this.icon,
    required this.onTap,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
