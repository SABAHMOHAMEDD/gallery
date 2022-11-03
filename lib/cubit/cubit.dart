

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/cubit/states.dart';
import 'package:gallery/models/GalleryModel.dart';
import 'package:gallery/shared/network/endPoint.dart';

import '../shared/network/remote/dio_helper.dart';

class ShopCubit extends Cubit<States> {
  ShopCubit() : super(IntialState()); // need intial state in the super

  static ShopCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;



  GalleryModel? galleryModel;

  void getGallery() {
    DioHelper.getData(

        url: MYGALLERY).then((value) {
      galleryModel = GalleryModel.fromJson(value.data);

      emit(SuccessGetGalleryState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetGalleryState());
    });
  }







}
