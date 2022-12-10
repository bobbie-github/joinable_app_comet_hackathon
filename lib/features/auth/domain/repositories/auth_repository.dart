
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/get_code_company_model.dart';


abstract class AuthRepository{
  Future<Either<Failure, dynamic>> getCode(code);
}