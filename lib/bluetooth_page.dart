import 'package:flutter/material.dart';
import 'package:fp_modul_2/main_page.dart';

class HalBluetooth extends StatelessWidget {
  const HalBluetooth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // buat app bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: new Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return const MainPage();
              }),
            );
            print("lanjut ke main page");
          },
        ),
        title: const Text(
          "Sambungkan Perangkat",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
      ),
      // container utama
      body: Column(
          children: <Widget> [
            // expand widget untuk mengisi whitespace (responsive height)
            Expanded(
              // teks deskripsi
              child: Container(
                // jarak sekitar text
                padding: const EdgeInsets.fromLTRB(25, 17, 25, 20),
                child: const Text(
                  "Sinkronkan kebunmu via bluetooth",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            // note diatas tombol
            Container(
              // distance around text
              padding: const EdgeInsets.fromLTRB(70, 20, 70, 20),
              child: const Text(
                "Tekan tombol 'back' pada app bar untuk melanjutkan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 23.0,
                ),
              ),
            ),
            // tombol bluetooth
            Center(
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.all(10.0),
                    minimumSize: const Size(300, 66),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33),
                    ),
                    side: const BorderSide(
                      color: Color.fromRGBO(101, 185, 1, 1.0),
                      width:1.5,
                    ),
                  ),
                  // jika ditekan
                  onPressed: (){
                    print("Open bluetooth in Smartphone");
                  },
                  child: const Text(
                    "Nyalakan Bluetooth",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Poppins',
                      color: Colors.black,
                  ),
                  )
              ),
            ),
            // jarak dari bawah
            const Padding (padding: EdgeInsets.all(30.0,),),
          ]
      ),
    );
  }
}