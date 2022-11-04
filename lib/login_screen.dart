import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/gallery_screen.dart';
import 'package:gallery/shared/components/components.dart';
import 'package:gallery/shared/components/constant.dart';
import 'package:gallery/shared/network/local/cache_helper.dart';

import 'login/cubit/cubit.dart';
import 'login/cubit/states.dart';

class LoginScreen extends StatelessWidget {
  static const String RouteName = 'login';

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool securedPassword = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if(state is LoginSuccessState){
            CacheHelper.saveData(key: 'token', value: state.loginModel.token)
                .then((value) {
              if(value==true){
                print(state.loginModel.token);
                token = '${state.loginModel.token}';
                Navigator.pushReplacementNamed(context, GalleryScreen.routeName);

                // navigateToReplacement(context, const ShopLayout());
              }

            });
          }

    }, builder: (context, state) {
      return Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOGIN',
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: Colors.black),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        onChange: () {},
                        validator: (String? text) {
                          if (text!.isEmpty) {
                            return 'please enter Your Email';
                          }
                          return null;
                        },
                        label: 'Email',
                        prefix: Icons.email),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormField(
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        onChange: () {},
                        validator: (String? text) {
                          if (text!.isEmpty) {
                            return 'please enter Your password';
                          }
                          return null;
                        },
                        label: 'Password',
                        prefix: Icons.lock),
                    SizedBox(
                      height: 30,
                    ),
                    ConditionalBuilder(
                        condition: state is! LoginLoadinState,
                        builder: (context) => defaultButton(
                            function: () {
                              if (formKey.currentState?.validate() == true) {
                                LoginCubit.get(context).userLogin(
                                    email: emailController.text,
                                    password: passwordController.text);
                                print(emailController.text + passwordController.text);
                              }
                            },
                            text: 'Login',
                            background: Colors.black),
                        fallback: (context) =>
                            Center(child: CircularProgressIndicator())),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
