import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:zivacards/views/home.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return GetMaterialApp(
      title: "Krishi Culture",
      debugShowCheckedModeBanner: false,
      // initialBinding: HomeBinding(),

      getPages: [
        GetPage(
          name: "/",
          page: () => Home(),
        ),
      ],
    );
  }
}
