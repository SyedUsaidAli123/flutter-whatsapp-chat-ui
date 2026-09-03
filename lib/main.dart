import 'package:flutter/material.dart';
import 'package:app2/ChatListView.dart';
// import 'package:app2/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Home Page',
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
        colorScheme: .fromSeed(seedColor: Colors.yellow),
      ),
      home: const MyHomePage(title: 'Home Page Main'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text(widget.title),
        //
        // ),
      body: const ChatListView(),
      // body: const LoginPage(),

      // body:
        // Center(
        //   child: Container(
        //     width: 800,
        //     height: 800,
        //     color: Colors.red,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         Center(child: Text("Practice Rows & Columns",
        //             style:TextStyle(color: Colors.white,
        //                 fontSize: 25.0,
        //                 fontWeight: FontWeight.bold))),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.green,
        //               child: Row( mainAxisAlignment:MainAxisAlignment.center,
        //                   children:[
        //                     Icon(Icons.home,color :Colors.white),
        //                     SizedBox(width: 4,),
        //                     Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight:FontWeight.bold ),)),
        //                   ]),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.green,
        //               child: Row( mainAxisAlignment:MainAxisAlignment.center,
        //                   children:[
        //                 Icon(Icons.home,color :Colors.white),
        //                 SizedBox(width: 4,),
        //                 Center(child: Text("Home",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight:FontWeight.bold ),)),
        //               ]),
        //             ),
        //
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.blueGrey,
        //               child: Row( mainAxisAlignment:MainAxisAlignment.center,
        //                   children:[
        //                     Icon(Icons.fifteen_mp_rounded,color :Colors.white),
        //                     SizedBox(width: 4,),
        //                     Center(child: Text("MP ROUNDED",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight:FontWeight.bold ),)),
        //                   ]),
        //             ),
        //
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.lightBlue,
        //               child: Row( mainAxisAlignment:MainAxisAlignment.center,
        //                   children:[
        //                     Icon(Icons.eighteen_mp_sharp,color :Colors.white),
        //                     SizedBox(width: 4,),
        //                     Center(child: Text("18 MP",style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight:FontWeight.bold ),)),
        //                   ]),
        //             ),
        //
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.white,
        //               child: Center(child: Text("button 3")),
        //             ),
        //           ],
        //         ),
        //
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.green,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.grey,
        //               child: Center(child: Text("button 3")),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.white,
        //               child: Center(child: Text("button 3")),
        //             ),
        //           ],
        //         ),
        //
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.green,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.grey,
        //               child: Center(child: Text("button 3")),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.white,
        //               child: Center(child: Text("button 3")),
        //             ),
        //           ],
        //         ),
        //
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.green,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.grey,
        //               child: Center(child: Text("button 3")),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.yellow,
        //               child: Center(child: Icon(Icons.home)),
        //             ),
        //             Container(
        //               width: 150,
        //               height: 100,
        //               color: Colors.white,
        //               child: Center(child: Text("button 3")),
        //             ),
        //           ],
        //         ),
        //
        //       ],
        //     )
        //
        //
        //
        //
        //   ),
        // )

        // body: Container(
        //     width: 2000,
        //     height: 800,
        //     color: Colors.yellow,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween, // X Axix Main
        //       crossAxisAlignment: CrossAxisAlignment.start, // Cross Y Axis
        //       children: [
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.blue,
        //           // child: Text("Container"),
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black87,
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.blue,
        //         ),
        //         // Column(
        //         //   mainAxisAlignment: MainAxisAlignment.end,
        //         //   children: [
        //         //     Container(
        //         //       width: 100,
        //         //       height: 100,
        //         //       color: Colors.green,
        //         //     ),
        //         //     Container(
        //         //       width: 100,
        //         //       height: 100,
        //         //       color: Colors.deepOrangeAccent,
        //         //     ),
        //         //     Container(
        //         //       width: 100,
        //         //       height: 100,
        //         //       color: Colors.deepOrangeAccent,
        //         //     ),
        //         //   ],
        //         // )
        //       ],
        //     )
        // )
    );
  }
}