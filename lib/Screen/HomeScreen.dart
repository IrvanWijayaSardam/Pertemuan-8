import 'dart:io';
import 'package:flutter/material.dart';
import '../Widgets/Agama.dart';
import '../Widgets/Bahasa.dart';
import '../Widgets/JenisKelamin.dart';
import '../Widgets/StatusPernikahan.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

int _selectedIndex = 0;

class _HomeState extends State<Home> {
  TextEditingController controllernama = TextEditingController();
  TextEditingController controlleralamat = TextEditingController();
  TextEditingController controllertempatlahir = TextEditingController();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) {
        _kirimData();
      } else if (index == 3) {
        _kosongkan();
      } else if (index == 4) {
        exit(0);
      }
    });
  }

  void _kosongkan() {
    controllernama.text = "";
    controllertempatlahir.text = "";
    controlleralamat.text = "";
    jenisKelaminDipilih = "";
    statusPernikahanDipilih = "";
    agamaDipilih = "Silakan Pilih Agama Anda";
    chKIndonesia = false;
    chKInggris = false;
    chKArab = false;
    chKSunda = false;
    chKJawa = false;
    chKMadura = false;
    chKMandarin = false;
    chKJepang = false;
    chKKorea = false;
  }

  void _kirimData() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        width: 100.0,
        height: 200.0,
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("OK")),
                ),
                Text("Nama Lengkap : " + controllernama.text),
                Text("Alamat : " + controlleralamat.text),
                Text("Tempat Lahir : " + controllertempatlahir.text),
                Text("Jenis Kelamin : " + jenisKelaminDipilih),
                Text("Status : " + statusPernikahanDipilih),
                Text("Agama : " + agamaDipilih),
                Text("Kemampuan Berbaasa : " + cariBahasa()),
              ],
            ),
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  void _pencarian() {
    AlertDialog alertDialog = AlertDialog(
      content: Container(
        height: 200.0,
        width: 200.0,
        child: Column(
          children: [
            Text("Proses Pencarian"),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.list),
        title: const Text("Latihan Formulir"),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              onPressed: () {
                _pencarian();
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Nama Lengkap", labelText: "Nama Lengkap"),
                  controller: controllernama,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Alamat", labelText: "Alamat"),
                  controller: controlleralamat,
                ),
                TextField(
                  decoration: const InputDecoration(
                      hintText: "Tempat Lahir", labelText: "Tempat Lahir"),
                  controller: controllertempatlahir,
                ),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                JenisKelamin(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                StatusPernikahan(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Bahasa(),
                const Divider(
                  height: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
                Agama(),
                ElevatedButton(
                    onPressed: () {
                      _kirimData();
                    },
                    child: const Text("Proses")),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Camera"),
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Proses"),
          BottomNavigationBarItem(icon: Icon(Icons.clear), label: "Kosonkan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app), label: "Keluar"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
