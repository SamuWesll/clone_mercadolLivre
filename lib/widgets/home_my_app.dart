import 'package:flutter/material.dart';

import 'package:clone_mercado_livre/widgets/app_menu_drawer.dart';
import 'package:clone_mercado_livre/widgets/app_bar_search.dart';

class HomeMyApp extends StatefulWidget {
  HomeMyApp({Key? key}) : super(key: key);

  @override
  _HomeMyAppState createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppMenuDrawer(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text('Mercado Livre', style: TextStyle(color: Colors.black)),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: AppSearchBar());
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: Center(
        child: Text('Mercado Livre'),
      ),
    );
  }
}
