import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String statusPernikahanDipilih = "";

class StatusPernikahan extends StatefulWidget {
  const StatusPernikahan({Key? key}) : super(key: key);
  @override
  State<StatusPernikahan> createState() => _StatusPernikahanState();
}

class _StatusPernikahanState extends State<StatusPernikahan> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Status Perkawinan"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: RadioListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: const Text("Kawin"),
                  value: "Kawin",
                  groupValue: statusPernikahanDipilih,
                  onChanged: (String? statusPernikahan) {
                    setState(() {
                      statusPernikahanDipilih = statusPernikahan!;
                    });
                  }),
            ),
            Expanded(
              child: RadioListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: const Text("Tidak Kawin"),
                  value: "Tidak Kawin",
                  groupValue: statusPernikahanDipilih,
                  onChanged: (String? statusPernikahan) {
                    setState(() {
                      statusPernikahanDipilih = statusPernikahan!;
                    });
                  }),
            )
          ],
        ),
      ],
    );
  }
}
