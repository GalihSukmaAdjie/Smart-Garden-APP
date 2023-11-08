import 'package:flutter/material.dart';
import 'package:fp_modul_2/bluetooth_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // buat background image
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bgtree.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // menegnahkan widget di kolom
          mainAxisAlignment: MainAxisAlignment.center,
          // sesuaikan ukuuran gambar
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // ubah ukuran widget agar dapat mengisi whitespace
            Expanded(child: Container(),),
            // masukkan logo
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
              child: Image.asset("images/kebunku.png", height: 60.0,),
            ),
            // teks dibawah logo
            const Center(
              child: Text(
                "Kebun Cerdas",
                style: TextStyle(
                fontSize: 33.0,
                fontFamily: 'Poppins',
              ),
              ),
            ),
            // jarak antara teks dan tombol
            const Padding (padding: EdgeInsets.all(10.0,),),
            // tombol start untuk ke halaman selanjutnya
            Center(
              child: ElevatedButton(
                // buat teks di tombol
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(10.0),
                  minimumSize: const Size(150.0, 60.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                // ketika ditekan
                onPressed: (){
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                      return const HalBluetooth();
                    }),
                  );
                  print("Lanjut kehalaman bluetooth");
                },
                // buat teks di tombol
                child: const Text(
                  "Start",
                  style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppins',
                ),
                ),
              ),
            ),
            // jarak antara teks dan tombol
            const Padding (padding: EdgeInsets.all(53.0,),), //83
          ],
        ),
      ),
    );
  }
}