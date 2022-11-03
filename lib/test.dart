// import 'package:flutter/material.dart';
//
// class GalleryWidget extends StatelessWidget {
//   static const String routeName = 'GalleryWidget';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body:
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:gallery/models/GalleryModel.dart';
//
// class GalleryScreen extends StatelessWidget {
//   static const String routeName = 'gallery';
//   GalleryModel model;
//   GalleryScreen(this.model);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.lightBlue,
//
//         body: ProductsBuilder(model)
//
//     );
//   }
//
//   Widget ProductsBuilder(GalleryModel model,) => SingleChildScrollView(
//     physics: BouncingScrollPhysics(),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(
//           height: 10,
//         ),
//
//         Container(
//           color: Colors.grey[300],
//           child: GridView.count(
//               mainAxisSpacing: 1,
//               crossAxisSpacing: 1,
//               shrinkWrap: true,
//               childAspectRatio: 1 / 1.7,
//               physics: NeverScrollableScrollPhysics(),
//               crossAxisCount: 3,
//               children: List.generate(
//                 model!.data!.images!.length,
//                     (index) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//                   Image(
//                       height: 200,
//                       image: NetworkImage(model.data?.images![0]??""),
//                       width: double.infinity),
//
//                 ]),)),
//         )
//       ],
//     ),
//   );
//
//
// }