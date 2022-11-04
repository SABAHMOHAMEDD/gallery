/// status : "success"
/// data : {"images":["https://technichal.prominaagency.com/media/1/IMG_1460.JPG","https://technichal.prominaagency.com/media/2/switch.zip","https://technichal.prominaagency.com/media/3/wallet.png","https://technichal.prominaagency.com/media/4/image_picker6786931877519241096.jpg","https://technichal.prominaagency.com/media/5/image_picker738781892256465965.jpg","https://technichal.prominaagency.com/media/7/logo.png","https://technichal.prominaagency.com/media/12/1500x500.jpg","https://technichal.prominaagency.com/media/16/R.jpg","https://technichal.prominaagency.com/media/17/dell-glitter-logo-black-background-dell-logo-white-glitter-art-dell.jpg","https://technichal.prominaagency.com/media/50/30202060101872.jpeg","https://technichal.prominaagency.com/media/54/Group-1.png","https://technichal.prominaagency.com/media/58/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/59/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/60/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/61/imag3.png","https://technichal.prominaagency.com/media/62/imag4.png","https://technichal.prominaagency.com/media/74/fov.webp","https://technichal.prominaagency.com/media/75/Star.png","https://technichal.prominaagency.com/media/93/kfclogo.png","https://technichal.prominaagency.com/media/95/photo.jpg","https://technichal.prominaagency.com/media/96/photo.jpg","https://technichal.prominaagency.com/media/130/R.jpg","https://technichal.prominaagency.com/media/148/image_picker4093618698434268903.jpg","https://technichal.prominaagency.com/media/153/image_picker5540913037483301795.jpg","https://technichal.prominaagency.com/media/154/image_picker5844669100874478870.jpg","https://technichal.prominaagency.com/media/156/image_picker7819509321635463015.jpg","https://technichal.prominaagency.com/media/176/1.jpg","https://technichal.prominaagency.com/media/188/code.png","https://technichal.prominaagency.com/media/201/Screenshot-2022-07-28-174859.png","https://technichal.prominaagency.com/media/202/gallery–background.png","https://technichal.prominaagency.com/media/203/robot.png","https://technichal.prominaagency.com/media/215/gellary-–-1.png","https://technichal.prominaagency.com/media/216/arrowOut.jpg","https://technichal.prominaagency.com/media/217/2.png","https://technichal.prominaagency.com/media/218/image_picker249136141670347079.jpg","https://technichal.prominaagency.com/media/219/image_picker5059500132340337932.jpg","https://technichal.prominaagency.com/media/220/image_picker4633194850148110195.jpg","https://technichal.prominaagency.com/media/241/image_picker3770304622623136396.jpg","https://technichal.prominaagency.com/media/242/mesho.jpg","https://technichal.prominaagency.com/media/255/Ellipse-1627.png","https://technichal.prominaagency.com/media/259/mesho.jpg","https://technichal.prominaagency.com/media/260/mesho.jpg","https://technichal.prominaagency.com/media/263/Ellipse-1627.png","https://technichal.prominaagency.com/media/275/Ellipse-1627.png","https://technichal.prominaagency.com/media/278/Little-Nightmares--2_7_2022-4_20_35-PM.png","https://technichal.prominaagency.com/media/283/triangles.png","https://technichal.prominaagency.com/media/307/pngfuel-14.png","https://technichal.prominaagency.com/media/320/Zelda_Breath_of_the_Wild_all_shrines_map_Champions_Ballad_DLC.0.jpg","https://technichal.prominaagency.com/media/336/2de33ac51e8df7fcb21c625c41bd41a8.jpg"]}
/// message : "Gallery retrieved successfully"

class GalleryModel {
  GalleryModel({
      this.status, 
      this.data, 
      this.message,});

  GalleryModel.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    message = json['message'];
  }
  String? status;
  Data? data;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['message'] = message;
    return map;
  }

}

/// images : ["https://technichal.prominaagency.com/media/1/IMG_1460.JPG","https://technichal.prominaagency.com/media/2/switch.zip","https://technichal.prominaagency.com/media/3/wallet.png","https://technichal.prominaagency.com/media/4/image_picker6786931877519241096.jpg","https://technichal.prominaagency.com/media/5/image_picker738781892256465965.jpg","https://technichal.prominaagency.com/media/7/logo.png","https://technichal.prominaagency.com/media/12/1500x500.jpg","https://technichal.prominaagency.com/media/16/R.jpg","https://technichal.prominaagency.com/media/17/dell-glitter-logo-black-background-dell-logo-white-glitter-art-dell.jpg","https://technichal.prominaagency.com/media/50/30202060101872.jpeg","https://technichal.prominaagency.com/media/54/Group-1.png","https://technichal.prominaagency.com/media/58/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/59/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/60/WhatsApp-Image-2022-10-26-at-8.58.11-PM.jpeg","https://technichal.prominaagency.com/media/61/imag3.png","https://technichal.prominaagency.com/media/62/imag4.png","https://technichal.prominaagency.com/media/74/fov.webp","https://technichal.prominaagency.com/media/75/Star.png","https://technichal.prominaagency.com/media/93/kfclogo.png","https://technichal.prominaagency.com/media/95/photo.jpg","https://technichal.prominaagency.com/media/96/photo.jpg","https://technichal.prominaagency.com/media/130/R.jpg","https://technichal.prominaagency.com/media/148/image_picker4093618698434268903.jpg","https://technichal.prominaagency.com/media/153/image_picker5540913037483301795.jpg","https://technichal.prominaagency.com/media/154/image_picker5844669100874478870.jpg","https://technichal.prominaagency.com/media/156/image_picker7819509321635463015.jpg","https://technichal.prominaagency.com/media/176/1.jpg","https://technichal.prominaagency.com/media/188/code.png","https://technichal.prominaagency.com/media/201/Screenshot-2022-07-28-174859.png","https://technichal.prominaagency.com/media/202/gallery–background.png","https://technichal.prominaagency.com/media/203/robot.png","https://technichal.prominaagency.com/media/215/gellary-–-1.png","https://technichal.prominaagency.com/media/216/arrowOut.jpg","https://technichal.prominaagency.com/media/217/2.png","https://technichal.prominaagency.com/media/218/image_picker249136141670347079.jpg","https://technichal.prominaagency.com/media/219/image_picker5059500132340337932.jpg","https://technichal.prominaagency.com/media/220/image_picker4633194850148110195.jpg","https://technichal.prominaagency.com/media/241/image_picker3770304622623136396.jpg","https://technichal.prominaagency.com/media/242/mesho.jpg","https://technichal.prominaagency.com/media/255/Ellipse-1627.png","https://technichal.prominaagency.com/media/259/mesho.jpg","https://technichal.prominaagency.com/media/260/mesho.jpg","https://technichal.prominaagency.com/media/263/Ellipse-1627.png","https://technichal.prominaagency.com/media/275/Ellipse-1627.png","https://technichal.prominaagency.com/media/278/Little-Nightmares--2_7_2022-4_20_35-PM.png","https://technichal.prominaagency.com/media/283/triangles.png","https://technichal.prominaagency.com/media/307/pngfuel-14.png","https://technichal.prominaagency.com/media/320/Zelda_Breath_of_the_Wild_all_shrines_map_Champions_Ballad_DLC.0.jpg","https://technichal.prominaagency.com/media/336/2de33ac51e8df7fcb21c625c41bd41a8.jpg"]

class Data {
  Data({
      this.images,});

  Data.fromJson(dynamic json) {
    images = json['images'] != null ? json['images'].cast<String>() : [];
  }
  List<String>? images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['images'] = images;
    return map;
  }

}