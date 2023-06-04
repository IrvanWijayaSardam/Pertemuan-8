import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool chKIndonesia = false;

bool chKInggris = false;
bool chKArab = false;
bool chKSunda = false;
bool chKJawa = false;
bool chKMadura = false;
bool chKMandarin = false;
bool chKJepang = false;
bool chKKorea = false;

class Bahasa extends StatefulWidget {
  const Bahasa({Key? key}) : super(key: key);
  @override
  State<Bahasa> createState() => _BahasaState();
}

class _BahasaState extends State<Bahasa> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Kemampuan Berbahasa"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKIndonesia,
                    onChanged: (bool? value) {
                      setState(() {
                        chKIndonesia = value!;
                      });
                    },
                  ),
                  const Text("Indonesia"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKInggris,
                    onChanged: (bool? value) {
                      setState(() {
                        chKInggris = value!;
                      });
                    },
                  ),
                  const Text("Inggris"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKArab,
                    onChanged: (bool? value) {
                      setState(() {
                        chKArab = value!;
                      });
                    },
                  ),
                  const Text("Arab"),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKSunda,
                    onChanged: (bool? value) {
                      setState(() {
                        chKSunda = value!;
                      });
                    },
                  ),
                  const Text("Sunda"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKJawa,
                    onChanged: (bool? value) {
                      setState(() {
                        chKJawa = value!;
                      });
                    },
                  ),
                  const Text("Jawa"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKMadura,
                    onChanged: (bool? value) {
                      setState(() {
                        chKMadura = value!;
                      });
                    },
                  ),
                  const Text("Madura"),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKMandarin,
                    onChanged: (bool? value) {
                      setState(() {
                        chKMandarin = value!;
                      });
                    },
                  ),
                  const Text("Mandarin"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKJepang,
                    onChanged: (bool? value) {
                      setState(() {
                        chKJepang = value!;
                      });
                    },
                  ),
                  const Text("Jepang"),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    value: chKKorea,
                    onChanged: (bool? value) {
                      setState(() {
                        chKKorea = value!;
                      });
                    },
                  ),
                  const Text("Korea"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

String cariBahasa() {
  String _bahasa = "";
  if (chKIndonesia) {
    _bahasa += "Indonesia,";
  }
  if (chKInggris) {
    _bahasa += "Inggris,";
  }
  if (chKArab) {
    _bahasa += "Arab,";
  }
  if (chKSunda) {
    _bahasa += "Sunda,";
  }
  if (chKJawa) {
    _bahasa += "Jawa,";
  }
  if (chKMadura) {
    _bahasa += "Madura,";
  }
  if (chKMandarin) {
    _bahasa += "Mandarin,";
  }
  if (chKJepang) {
    _bahasa += "Jepang";
  }
  if (chKKorea) {
    _bahasa += "Korea,";
  }
  if (_bahasa.length > 0) {
    _bahasa = _bahasa.substring(0, _bahasa.length - 1);
  }
  return _bahasa;
}
