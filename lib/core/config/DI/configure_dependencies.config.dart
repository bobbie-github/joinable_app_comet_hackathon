// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_comet_hackathon/core/services/api_service.dart' as _i3;
import 'package:app_comet_hackathon/features/auth/data/datasources/todo_remote_datasources.dart'
    as _i4;
import 'package:app_comet_hackathon/features/auth/data/repositories/auth_repository.dart'
    as _i6;
import 'package:app_comet_hackathon/features/auth/domain/repositories/auth_repository.dart'
    as _i5;
import 'package:app_comet_hackathon/features/auth/domain/usecase/auth_usecase.dart'
    as _i7;
import 'package:app_comet_hackathon/features/auth/presentation/cubit/auth_cubit.dart'
    as _i12;
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart'
    as _i8;
import 'package:app_comet_hackathon/features/todo/data/datasources/todo_remote_datasources.dart'
    as _i9;
import 'package:app_comet_hackathon/features/todo/data/repositories/todo_repository_impl.dart'
    as _i11;
import 'package:app_comet_hackathon/features/todo/domain/repositories/TodoRepository.dart'
    as _i10;
import 'package:app_comet_hackathon/features/todo/domain/usecase/todo_usecase.dart'
    as _i13;
import 'package:app_comet_hackathon/features/todo/presentation/cubit/todo_cubit.dart'
    as _i14;
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
  gh.lazySingleton<_i4.AuthRemoteDataSources>(
      () => _i4.AuthRemoteDataSourcesImpl(gh<_i3.ApiService>()));
  gh.lazySingleton<_i5.AuthRepository>(
      () => _i6.AuthRepositoryImpl(gh<_i4.AuthRemoteDataSources>()));
  gh.lazySingleton<_i7.GetCodeCompanyUseCase>(
      () => _i7.GetCodeCompanyUseCase(gh<_i5.AuthRepository>()));
  gh.factory<_i8.RootCubit>(() => _i8.RootCubit());
  gh.lazySingleton<_i9.TodoRemoteDataSources>(
      () => _i9.TodoRemoteDataSourcesImpl(gh<_i3.ApiService>()));
  gh.lazySingleton<_i10.TodoRepository>(
      () => _i11.TotoRepositoryImpl(gh<_i9.TodoRemoteDataSources>()));
  gh.factory<_i12.AuthCubit>(() => _i12.AuthCubit(
        gh<_i7.GetCodeCompanyUseCase>(),
        gh<_i3.ApiService>(),
      ));
  gh.lazySingleton<_i13.GetTodosUseCase>(
      () => _i13.GetTodosUseCase(gh<_i10.TodoRepository>()));
  gh.factory<_i14.TodoCubit>(() => _i14.TodoCubit(gh<_i13.GetTodosUseCase>()));
  return getIt;
}
