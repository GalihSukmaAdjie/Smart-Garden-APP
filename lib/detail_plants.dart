import 'package:flutter/material.dart';
import 'package:fp_modul_2/model/template_plants.dart';

class DetailPlants extends StatelessWidget {
  final TemplatePlants plants;
  const DetailPlants({super.key, required this.plants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Center(
                      child: Image.asset(plants.imageAssets)
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    plants.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 33,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 15, left: 15, right: 15),
                  child: Text(
                    plants.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
