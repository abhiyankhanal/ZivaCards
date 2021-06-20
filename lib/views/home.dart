import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zivacards/constants/color.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          title: Text('Ziva Cards'),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.person_outlined,
                  color: white,
                  size: 25,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.qr_code,
                  color: white,
                  size: 25,
                )),
          ],
          elevation: 0,
        ),
        body: Column(
          children: <Widget>[
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl:
                      "https://static.wixstatic.com/media/72c0b2_71ddacaae7af473590d36a0bb72d2292~mv2.jpg/v1/fill/w_1000,h_594,al_c,q_90,usm_0.66_1.00_0.01/72c0b2_71ddacaae7af473590d36a0bb72d2292~mv2.jpg",
                  height: Get.height * 0.25,
                  width: Get.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 60,
                      foregroundImage: CachedNetworkImageProvider(
                        "https://cdn.cliqueinc.com/posts/280333/celebrity-new-haircut-280333-1619199407294-main.700x0c.jpg",
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
