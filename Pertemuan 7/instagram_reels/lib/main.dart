import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // TRY THIS: Try changing the color here to a specific color (to
            // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
            // change color while the other colors stay the same.
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            backgroundColor: Colors.transparent,
            title: Container(
              padding: const EdgeInsetsDirectional.only(end: 10),
              alignment: Alignment.topRight,
              child: const Icon(
                Icons.camera,
                color: Colors.black,
              ),
            )),
        body: Column(children: [
          Column(
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/image.jpg"),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    height: 550,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: IntrinsicHeight(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'Nama User',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.white)),
                                              child: Text(
                                                'Follow',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          'Deskripsi...',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'Liked by',
                                          style:
                                              TextStyle(color: Colors.white54),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Liked',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Comments',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.send,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Share',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              Container(
                height: 50,
                color: Colors.white,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home,
                        size: 30,
                      ),
                      Icon(
                        Icons.search,
                        size: 30,
                      ),
                      Icon(
                        Icons.add,
                        size: 30,
                      ),
                      Icon(
                        Icons.video_library,
                        size: 30,
                      ),
                      Icon(
                        Icons.circle,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ]));
  }
}
