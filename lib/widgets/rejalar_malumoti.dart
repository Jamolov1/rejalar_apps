import 'package:flutter/material.dart';

class RejalarMalumoti extends StatelessWidget {
  const RejalarMalumoti({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "03",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Barcha rajlaringiz",style: TextStyle(color: Colors.grey,fontSize: 15,),)
            ],
          ),
          Column(
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
