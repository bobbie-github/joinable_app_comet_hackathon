import 'package:app_comet_hackathon/features/auth/domain/usecase/auth_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';


@injectable
class AuthCubit extends Cubit<AuthState> {
  final GetCodeCompanyUseCase getCodeCompanyUseCase;
  AuthCubit(this.getCodeCompanyUseCase) : super(AuthInitial());

  Future<void> getCode(String code)async{
   print(code);
  }
}
