import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/models/GalleryModel.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';

class GalleryScreen extends StatelessWidget {
  static const String routeName = 'gallery';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, States>(
      listener: (context, state) {},

      builder: (context, state) {
        return ConditionalBuilder(
            condition: ShopCubit.get(context).galleryModel != null  ,
            builder: (context) =>
                ProductsBuilder(ShopCubit.get(context).galleryModel),
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            )); //if it didnot yet show loadindg
      },
    );
  }

  Widget ProductsBuilder(
    GalleryModel? model,
  ) =>
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[300],
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
                            Image(
                                height: 200,
                                image: NetworkImage(model.data?.images![index] ?? ""),
                                width: double.infinity),
                          ]),
                    )),
              ),
            )
          ],
        ),
      );
}
