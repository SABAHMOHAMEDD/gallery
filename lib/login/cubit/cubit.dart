import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/login/cubit/states.dart';

import '../../models/Login_model.dart';
import '../../shared/network/endPoint.dart';
import '../../shared/network/remote/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginIntialState()); // need intial state in the super

  static LoginCubit get(context) => BlocProvider.of(context);


  LoginModel? loginModel;
  bool securedPassword = true;
  IconData Suffix = Icons.visibility;
  void ChangePasswordVisibility() {
    securedPassword = !securedPassword;

    Suffix = securedPassword ? Icons.visibility_off : Icons.visibility;
    emit(ChangePasswordVisibilityState());
  }

  void userLogin(

      {
    required String email,
    required String password,
  }) {
    emit(LoginLoadinState());
    DioHelper.PostData(
      url: LOGIN,
      data: {
        'email': email,
        'password': password,
      },
    ).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      print(loginModel?.token.toString());
      emit(LoginSuccessState(loginModel!));
    }).catchError((error) {
      print('xxxxxxxxxxxxxx');
      emit(LoginErrorState(error.toString()));
    });
  }

  static showLoading(context, String loadingMessage,
      {bool isCancelabele = true}) {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  width: 12,
                ),
                Text(loadingMessage),
              ],
            ),
          );
        },
        barrierDismissible: isCancelabele);
  }
}
