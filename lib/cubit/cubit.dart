

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/cubit/states.dart';
import 'package:gallery/models/GalleryModel.dart';
import 'package:gallery/shared/components/constant.dart';
import 'package:gallery/shared/network/endPoint.dart';

import '../shared/network/remote/dio_helper.dart';

class MyCubit extends Cubit<States> {
  MyCubit() : super(IntialState()); // need intial state in the super

  static MyCubit get(context) => BlocProvider.of(context);



  GalleryModel? model;

  void getGallery() {
    emit(LoadingGetGalleryState());
    DioHelper.getData(

        url: MYGALLERY,
      token:token

    ).then((value) {
      model = GalleryModel.fromJson(value.data);
      print(model?.data?.images![0]);

      emit(SuccessGetGalleryState());
    }).catchError((error) {
      print(error.toString());
      emit(ErrorGetGalleryState());
    });
  }







}
