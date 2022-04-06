import 'package:flutter/material.dart';
import 'package:drawer/sidebar.dart';
import 'package:drawer/pages/contact.dart';
import 'package:drawer/pages/galery.dart';
import 'package:drawer/pages/song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        drawer: MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                toolbarHeight: 100,
                pinned: true,
                expandedHeight: 110,
                backgroundColor: Colors.blue,
                title: const Text(
                  'Drawer Navigation',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23, color: Colors.white),
                ),
                centerTitle: true,
                bottom: const PreferredSize(
                  child: TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(text: "Songs"),
                      Tab(text: "Gallery"),
                      Tab(text: "Contact"),
                    ],
                  ),
                  preferredSize: Size.fromHeight(0),
                ),
              )
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SongsScreen(),
              GaleryScreen(),
              ContactScreen()
            ],
          ),
        ),
      ),
    );
  }
}
