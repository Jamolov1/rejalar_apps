import 'package:flutter/material.dart';
import 'package:rejalar_apps/models/reja_modeli.dart';
import 'package:rejalar_apps/widgets/rajalar_sanasi.dart';
import 'package:rejalar_apps/widgets/reja_qushish.dart';
import 'package:rejalar_apps/widgets/rejalar_malumoti.dart';
import 'package:rejalar_apps/widgets/rejalar_ruyxati.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime belgilanganSana = DateTime.now();

  var ruyxat = Rejalar();


  void sananiTanlash() {
    showDatePicker(
            context: context,
            firstDate: DateTime(2020),
            lastDate: DateTime(2030),
            initialDate: DateTime.now())
        .then((sana) {
      setState(() {
        belgilanganSana = sana!;
      });
    });
  }

  void oldingiSana() {
    setState(() {
      belgilanganSana = DateTime(
          belgilanganSana.year, belgilanganSana.month, belgilanganSana.day + 1);
    });
  }

  void keyingiSana() {
    setState(() {
      belgilanganSana = DateTime(
          belgilanganSana.year, belgilanganSana.month, belgilanganSana.day - 1);
    });
  }

  void yangiRejaQushish() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return YangiReja(rejaQushish);
        });
  }

  void rejaQushish(String name,DateTime kun){
    setState(() {
      ruyxat.addReja(name, kun);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rejalar Dasturi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          RajalarSanasi(
            sananiTanlash,
            belgilanganSana,
            oldingiSana,
            keyingiSana,
          ),
          RejalarMalumoti(ruyxat.rejalar),
          RejalarRuyxati(ruyxat.rejalar),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          yangiRejaQushish();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
