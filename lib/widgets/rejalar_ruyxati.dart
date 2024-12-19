import 'package:flutter/material.dart';
import 'package:rejalar_apps/widgets/reja.dart';

import '../models/reja_modeli.dart';

class RejalarRuyxati extends StatelessWidget {

  List<RejaModeli> ruyxat;
  RejalarRuyxati(this.ruyxat);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: ruyxat.length,
        itemBuilder: (ctx, index) {
          return Reja(ruyxat[index]);
        },
      ),
    );
  }
}
