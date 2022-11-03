import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/gallery_screen.dart';
import 'package:gallery/shared/bloc_observer.dart';
import 'package:gallery/shared/network/local/cache_helper.dart';
import 'package:gallery/shared/network/remote/dio_helper.dart';

import 'cubit/cubit.dart';
void main() async {

WidgetsFlutterBinding.ensureInitialized();

Bloc.observer = MyBlocObserver();
DioHelper.init();
await CacheHelper.init();





runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [

          BlocProvider(
            create: (BuildContext context) => ShopCubit()..getGallery()

    ,
          ),
        ],
        child: MaterialApp(
         debugShowCheckedModeBanner: false,

          routes: {
            GalleryScreen.routeName: (_) => GalleryScreen()},

          initialRoute: GalleryScreen.routeName,
        ));
  }
}

