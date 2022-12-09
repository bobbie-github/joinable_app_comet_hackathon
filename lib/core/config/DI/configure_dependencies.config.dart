// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_comet_hackathon/core/services/api_service.dart' as _i3;
import 'package:app_comet_hackathon/features/todo/data/datasources/todo_remote_datasources.dart'
    as _i4;
import 'package:app_comet_hackathon/features/todo/data/repositories/todo_repository_impl.dart'
    as _i6;
import 'package:app_comet_hackathon/features/todo/domain/repositories/TodoRepository.dart'
    as _i5;
import 'package:app_comet_hackathon/features/todo/domain/usecase/todo_usecase.dart'
    as _i7;
import 'package:app_comet_hackathon/features/todo/presentation/cubit/todo_cubit.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ApiService>(() => _i3.ApiService.create());
  gh.lazySingleton<_i4.TodoRemoteDataSources>(
      () => _i4.TodoRemoteDataSourcesImpl(gh<_i3.ApiService>()));
  gh.lazySingleton<_i5.TodoRepository>(
      () => _i6.TotoRepositoryImpl(gh<_i4.TodoRemoteDataSources>()));
  gh.lazySingleton<_i7.GetTodosUseCase>(
      () => _i7.GetTodosUseCase(gh<_i5.TodoRepository>()));
  gh.factory<_i8.TodoCubit>(() => _i8.TodoCubit(gh<_i7.GetTodosUseCase>()));
  return getIt;
}
