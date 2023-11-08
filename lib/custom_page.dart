import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({ Key? key }) : super(key: key);

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {

  RangeValues valueLight = const RangeValues(30, 70);
  RangeValues valueMoisture = const RangeValues(60, 90);
  RangeValues valueTemperature = const RangeValues(30, 40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderTheme (
        data: const SliderThemeData(
          // warna pointer
          thumbColor: Color.fromRGBO(101, 185, 1, 1.0),
          // ukuran pointer
          rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 27.0),
          // warna slider pointer
          activeTrackColor: Color.fromRGBO(101, 185, 1, 1.0),
          inactiveTrackColor: Color.fromRGBO(209, 234, 179, 1.0),
          // tinggi slider
          trackHeight: 10.0,
          // warna transparan
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
        ),
        // bagian utama untuk body CustomPage
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // container intensitas
               Container(
                 height: 190.0,
                 // buat padding pada widget card
                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                 // card intensitas cahaya
                 child: Card(
                   // border round
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(17.0),
                   ),
                   // kolom isian intensitas cahaya
                   child: Column(
                     children: <Widget>[
                       const Padding(padding: EdgeInsets.all(7.0)),
                       const Icon(Icons.wb_sunny_outlined, color: Colors.black, size: 37.0,),
                       const Padding(padding: EdgeInsets.all(3.0)),
                       const Text(
                         "Intensitas Cahaya",
                         style: TextStyle(
                         fontFamily: 'Poppins',
                         fontSize: 20.0,
                       ),
                       ),
                       // berikan jarak antara widget
                       Expanded(child: Container(),),
                       // buat slider intensitas cahaya
                       RangeSlider(
                         values: valueLight,
                         min: 0,
                         max: 100,
                         divisions: 100,
                         labels: RangeLabels(
                             valueLight.start.round().toString(),
                             valueLight.end.round().toString()
                         ),
                         onChanged: (values) => setState (()=>valueLight = values),
                       ),
                       // jarak dari bawah
                       const Padding(padding: EdgeInsets.all(7.0)),
                     ],
                   ),
                 ),
               ),

              // container kelembapan
               Container(
                 height: 190.0,
                 // buat jarak pada card
                 padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                 // card kelembapan tanah
                 child: Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(17.0),
                   ),
                   // kolom isian kelembapan
                   child: Column(
                     children: <Widget>[
                       const Padding(padding: EdgeInsets.all(7.0)),
                       const Icon(Icons.format_color_fill_rounded, size: 37.0,),
                       const Padding(padding: EdgeInsets.all(3.0)),
                       const Text(
                         "Kelembapan Tanah", style: TextStyle(
                         fontFamily: 'Poppins',
                         fontSize: 20.0,
                       ),
                       ),
                       // berikan jarak antar widget
                       Expanded(child: Container(),),
                       // buatkan slider kelembapan tanah
                       RangeSlider(
                         values: valueMoisture,
                         min: 0,
                         max: 100,
                         divisions: 100,
                         labels: RangeLabels(
                             valueMoisture.start.round().toString(),
                             valueMoisture.end.round().toString()
                         ),
                         onChanged: (values) => setState (()=>valueMoisture = values),
                       ),
                       // jarak dari bawah
                       const Padding(padding: EdgeInsets.all(7.0)),
                     ],
                   ),
                 ),
               ),

              // container temperature
              Container(
                height: 190.0,
                // buat jarak pada card
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                // card suhu sekitar
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  // kolom isian suhu sekitar
                  child: Column(
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.all(7.0)),
                      const Icon(Icons.device_thermostat_rounded, size: 37.0,),
                      const Padding(padding: EdgeInsets.all(3.0)),
                      const Text(
                        "Temperature Sekitar",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                        ),
                      ),
                      // jarak antar widget
                      Expanded(child: Container(),),
                      // buat slider suhu
                      RangeSlider(
                        values: valueTemperature,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        labels: RangeLabels(
                            valueTemperature.start.round().toString(),
                            valueTemperature.end.round().toString()
                        ),
                        onChanged: (values) => setState (()=>valueTemperature = values),
                      ),
                      // jarak dari bawah
                      const Padding(padding: EdgeInsets.all(7.0)),
                    ],
                  ),
                ),
              ),
              // button "ok" in bottom
              // certering button x axis
              Center(
                child: ElevatedButton(
                  // customize button
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(101, 185, 1, 1.0),
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(150, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: const Text(
                    "Ok",
                    style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 23.0,
                  ),
                  ),
                  // while button on press
                  onPressed: (){
                    // on press to do
                    print("Custom Ok");
                  },
                ),
              ),
              // create distance from bottom
              const Padding(padding: EdgeInsets.fromLTRB(0, 7, 0, 8),),
            ],
          ),
        ),
      ),
    );
  }
}