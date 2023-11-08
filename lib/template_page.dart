import 'package:flutter/material.dart';
import 'package:fp_modul_2/model/template_plants.dart';
import 'package:fp_modul_2/detail_plants.dart';
class TemplatePage extends StatelessWidget {

  const TemplatePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder (
          itemBuilder: (context, index) {
            final TemplatePlants plants = templatePlantsList[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPlants(plants: plants);
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17.0),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Image.asset(plants.imageAssets),
                    ),
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              plants.name,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Klik untuk melihat detail"),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            );
          },
          itemCount: templatePlantsList.length,
      ),
    );
  }
}