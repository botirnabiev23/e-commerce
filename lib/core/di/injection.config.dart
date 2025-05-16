// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:market_place/core/di/register_modules.dart' as _i112;
import 'package:market_place/db/app_database.dart' as _i961;
import 'package:market_place/db/dao/meals_dao.dart' as _i418;
import 'package:market_place/db/dao/meals_dao_impl.dart' as _i677;
import 'package:market_place/features/basket/data/data_sources/local/basket_local_data_source.dart'
    as _i157;
import 'package:market_place/features/basket/data/data_sources/local/basket_local_data_source_impl.dart'
    as _i64;
import 'package:market_place/features/basket/data/repositories/basket_repository_impl.dart'
    as _i720;
import 'package:market_place/features/basket/domain/repositories/basket_repository.dart'
    as _i581;
import 'package:market_place/features/basket/domain/use_cases/clear_meals_use_case.dart'
    as _i429;
import 'package:market_place/features/basket/domain/use_cases/decrement_meal_use_case.dart'
    as _i272;
import 'package:market_place/features/basket/domain/use_cases/delete_meal_use_case.dart'
    as _i741;
import 'package:market_place/features/basket/domain/use_cases/save_meal_use_case.dart'
    as _i1000;
import 'package:market_place/features/basket/domain/use_cases/watch_all_basket_meals_use_case.dart'
    as _i136;
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart'
    as _i461;
import 'package:market_place/features/home/data/data_sources/remote/meal_remote_data_source.dart'
    as _i119;
import 'package:market_place/features/home/data/data_sources/remote/meal_remote_data_source_impl.dart'
    as _i336;
import 'package:market_place/features/home/data/repositories/meal_repository_impl.dart'
    as _i1038;
import 'package:market_place/features/home/domain/repositories/meal_repository.dart'
    as _i546;
import 'package:market_place/features/home/domain/use_cases/get_meal_categories_use_case.dart'
    as _i200;
import 'package:market_place/features/home/domain/use_cases/get_meal_info_by_id_use_case.dart'
    as _i658;
import 'package:market_place/features/home/domain/use_cases/get_meals_by_category_use_case.dart'
    as _i883;
import 'package:market_place/features/home/presentation/blocs/meals/meals_bloc.dart'
    as _i1055;
import 'package:market_place/features/home/presentation/blocs/meals_info/meals_info_bloc.dart'
    as _i560;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.singletonAsync<_i961.AppDatabase>(
      () => registerModule.database,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.singleton<_i418.MealsDao>(
        () => _i677.MealsDaoImpl(gh<_i961.AppDatabase>()));
    gh.lazySingleton<_i157.BasketLocalDataSource>(
        () => _i64.BasketLocalDataSourceImpl(gh<_i418.MealsDao>()));
    gh.lazySingleton<_i581.BasketRepository>(
        () => _i720.BasketRepositoryImpl(gh<_i157.BasketLocalDataSource>()));
    gh.lazySingleton<_i119.MealRemoteDataSource>(
        () => _i336.MealRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i546.MealRepository>(
        () => _i1038.MealRepositoryImpl(gh<_i119.MealRemoteDataSource>()));
    gh.factory<_i658.GetMealInfoByIdUseCase>(
        () => _i658.GetMealInfoByIdUseCase(gh<_i546.MealRepository>()));
    gh.factory<_i883.GetMealsByCategoryUseCase>(
        () => _i883.GetMealsByCategoryUseCase(gh<_i546.MealRepository>()));
    gh.factory<_i200.GetMealCategoriesUseCase>(
        () => _i200.GetMealCategoriesUseCase(gh<_i546.MealRepository>()));
    gh.factory<_i136.WatchAllBasketMealsUseCase>(
        () => _i136.WatchAllBasketMealsUseCase(gh<_i581.BasketRepository>()));
    gh.factory<_i272.DecrementMealUseCase>(
        () => _i272.DecrementMealUseCase(gh<_i581.BasketRepository>()));
    gh.factory<_i429.ClearMealsUseCase>(
        () => _i429.ClearMealsUseCase(gh<_i581.BasketRepository>()));
    gh.factory<_i1000.SaveMealUseCase>(
        () => _i1000.SaveMealUseCase(gh<_i581.BasketRepository>()));
    gh.factory<_i741.DeleteMealUseCase>(
        () => _i741.DeleteMealUseCase(gh<_i581.BasketRepository>()));
    gh.factory<_i1055.MealsBloc>(() => _i1055.MealsBloc(
          gh<_i200.GetMealCategoriesUseCase>(),
          gh<_i883.GetMealsByCategoryUseCase>(),
          gh<_i658.GetMealInfoByIdUseCase>(),
        ));
    gh.factory<_i560.MealsInfoBloc>(
        () => _i560.MealsInfoBloc(gh<_i658.GetMealInfoByIdUseCase>()));
    gh.factory<_i461.BasketBloc>(() => _i461.BasketBloc(
          gh<_i1000.SaveMealUseCase>(),
          gh<_i429.ClearMealsUseCase>(),
          gh<_i272.DecrementMealUseCase>(),
          gh<_i136.WatchAllBasketMealsUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i112.RegisterModule {}
