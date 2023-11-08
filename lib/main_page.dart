import 'package:flutter/material.dart';

import './template_page.dart' as template;
import './custom_page.dart' as custom;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
            print("Kembali ke Bluetooth");
          },
        ),
        title: const Text(
          "Pilih Tanamanmu",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        bottom: TabBar(
            indicatorWeight: 5.0,
            indicatorColor: const Color.fromRGBO(101, 185, 1, 1.0),
            labelColor: Colors.black,
            labelStyle: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Poppins',
            ),
            controller: controller,
            tabs: const <Widget>[
              Tab(text: "TEMPLATE"),
              Tab(text: "CUSTOM"),
            ]),
      ),
      body: TabBarView(
          controller: controller,
          children: const <Widget>[
            template.TemplatePage(),
            custom.CustomPage(),
          ]
      ),
    );
  }
}
