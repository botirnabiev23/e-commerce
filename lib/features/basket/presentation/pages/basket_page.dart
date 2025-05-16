import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place/features/basket/presentation/pages/widgets/basket_item_widget.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';
import 'package:market_place/features/basket/presentation/pages/widgets/basket_summary_widget.dart';
import 'package:market_place/features/basket/presentation/pages/widgets/clear_basket_dialog_widget.dart';
import 'package:market_place/features/basket/presentation/pages/widgets/confirm_order_dialog_widget.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0C111D),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<BasketBloc, BasketState>(
          builder: (context, state) {
            final hasItems = state.items.isNotEmpty;

            return AppBar(
              backgroundColor: const Color(0xff161B26),
              title: const Text(
                'Корзина',
                style: TextStyle(fontSize: 22, color: Color(0xffF5F5F6)),
              ),
              actions: hasItems
                  ? [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => ClearBasketDialog(
                              onConfirm: () {
                                context
                                    .read<BasketBloc>()
                                    .add(BasketEvent.clean());
                                context.pop();
                              },
                              onCancel: () {
                                context.pop();
                              },
                            ),
                          );
                        },
                        icon: SvgPicture.asset('assets/images/trash.svg'),
                      ),
                    ]
                  : [],
            );
          },
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<BasketBloc, BasketState>(
          builder: (context, state) {
            final basketItems = state.items;

            if (basketItems.isEmpty) {
              return Center(
                child: SvgPicture.asset('assets/images/button.svg'),
              );
            }

            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(
                    top: 64,
                    left: 16,
                    right: 16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff161B26),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: basketItems.length,
                        separatorBuilder: (_, __) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: const Divider(color: Color(0xff1F242F)),
                        ),
                        itemBuilder: (context, index) {
                          return BasketItemWidget(item: basketItems[index]);
                        },
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: BasketSummaryWidget(
                      items: state.items,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => ConfirmOrderDialog(),
                          );
                          context.read<BasketBloc>().add(BasketEvent.clean());
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
                        child: const Text(
                          'Оформить заказ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Gap(100),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
