/*
 * @Author: 郝怿
 * @Date: 2022-02-08 23:35:49
 * @LastEditTime: 2022-02-09 00:24:15
 * @LastEditors: 郝怿
 * @Description: 
 * @FilePath: /sakura/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'package:sakura/pachong/home.dart';
import 'package:video_box/video_box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late VideoController vc;
  @override
  void initState() {
    super.initState();
    Home().getHomeData();
    // vc = VideoController(
    //   source: VideoPlayerController.network(
    //       'https://v2.szjal.cn/20191220/Pq810Y2q/index.m3u8'),
    // )
    //   ..addInitializeErrorListenner((e) {
    //     print('[video box init] error: ' + e.message);
    //   })
    //   ..initialize().then((e) {
    //     if (e != null) {
    //       print('[video box init] error: ' + e.message);
    //     } else {
    //       print('[video box init] success');
    //     }
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      // body: Center(
      //   child: AspectRatio(
      //     aspectRatio: 16 / 9,
      //     // child: VideoBox(controller: vc),
      //   ),
      // ),
    );
  }
}
