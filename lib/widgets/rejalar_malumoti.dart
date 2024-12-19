import 'package:flutter/material.dart';
import 'package:rejalar_apps/models/reja_modeli.dart';

class RejalarMalumoti extends StatelessWidget {
  List<RejaModeli> ruyxat;

  RejalarMalumoti(this.ruyxat);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ruyxat.length < 10 ? "0${ruyxat.length}":"${ruyxat.length}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Barcha rajlaringiz",style: TextStyle(color: Colors.grey,fontSize: 15,),)
            ],
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "00",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Bajargan rejalaringiz",style: TextStyle(color: Colors.grey,fontSize: 15,),)
            ],
          ),
        ],
      ),
    );
  }
}
