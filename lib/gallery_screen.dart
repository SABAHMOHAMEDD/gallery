import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'models/GalleryModel.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = 'gallery';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MyCubit()..getGallery(),
      child: BlocConsumer<MyCubit, States>(
        listener: (context, state) {

        },
        builder: (context, state) {
            return   ConditionalBuilder(
                 condition: MyCubit.get(context).model !=null ,
                 builder: (context) =>
                     ProductsBuilder(MyCubit.get(context).model),
                 fallback: (context) => Center(
                   child:CircularProgressIndicator(),
                 )); //if it didnot yet show loadindg
        },
      ),
    );
  }

  Widget ProductsBuilder( GalleryModel? model,) =>
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
           decoration: BoxDecoration(
          //   color: Colors.red,
             image: DecorationImage(image: AssetImage('assets/images/background.jpg')
             //NetworkImage('https://technichal.prominaagency.com/media/202/gallery–background.png')
           )
           ),
        //  color: Colors.grey[300],
          child: Expanded(
            child: GridView.count(

                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.7,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: List.generate(
                  model!.data!.images!.length,
                  (index) => Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Card(

                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
                elevation: 5,
                child:Image(
                 // fit: BoxFit.cover,
                    height: 108,
                    image: NetworkImage(model.data?.images?[index] ?? ""),
                    width: 108), ),

                      ]),
                )),
          ),
        ),
      );
}
