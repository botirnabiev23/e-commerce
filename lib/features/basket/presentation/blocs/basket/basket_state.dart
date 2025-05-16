part of 'basket_bloc.dart';

@freezed
class BasketState with _$BasketState {
  const factory BasketState({
    @Default([]) List<BasketProduct> items,
  }) = _BasketState;
}
