import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/model.dart';

class  UserCubit extends Cubit<UserModel?> {
  UserCubit() : super(null);

  userKaydet( UserModel userModel) => emit(userModel);


}