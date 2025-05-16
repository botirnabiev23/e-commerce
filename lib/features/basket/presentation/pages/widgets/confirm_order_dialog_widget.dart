import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place/router/app_routes.dart';

class ConfirmOrderDialog extends StatelessWidget {
  const ConfirmOrderDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xff161B26),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/images/check_icon.svg'),
            const Gap(12),
            const Text(
              'Успешно',
              style: TextStyle(
                fontSize: 28,
                color: Color(0xffF5F5F6),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Ваш заказ успешно создан. Спасибо за покупку.',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xff94969C),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(24),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.goNamed(AppRoutes.home.name);
                  context.pop();
                },
                style: ButtonStyle(
                  elevation: WidgetStateProperty.all(0),
                  foregroundColor:
                  WidgetStateProperty.all(Colors.white),
                  backgroundColor:
                  WidgetStateProperty.all(Color(0xff0ABAB5)),
                  overlayColor:
                  WidgetStateProperty.all(Colors.transparent),
                  shape:
                  WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  padding: WidgetStateProperty.all(EdgeInsets.zero),
                ),
                child: Text(
                  'Вернуться на главную страницу',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
