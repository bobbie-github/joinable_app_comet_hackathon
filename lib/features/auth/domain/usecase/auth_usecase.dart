

import 'package:app_comet_hackathon/features/auth/data/models/get_code_company_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/auth_repository.dart';

@lazySingleton
class GetCodeCompanyUseCase implements UseCase<GetCodeCompanyModel, dynamic> {
  final AuthRepository authRepository;
  GetCodeCompanyUseCase(this.authRepository);

  @override
  Future<Either<Failure, GetCodeCompanyModel>> call(code) async {
    return await authRepository.getCode(code);
  }
}