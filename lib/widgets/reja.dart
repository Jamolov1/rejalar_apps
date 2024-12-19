import 'package:flutter/material.dart';
import 'package:rejalar_apps/models/reja_modeli.dart';
import 'package:rejalar_apps/widgets/rejalar_ruyxati.dart';

class Reja extends StatefulWidget {
  RejaModeli reja;
  Reja(this.reja);

  @override
  State<Reja> createState() => _RejaState();
}

class _RejaState extends State<Reja> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {
          setState(() {
            widget.reja.bajarilganReja();
          });
        },
        icon: widget.reja.bajarildi
            ? Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              )
            : Icon(Icons.circle_outlined),
      ),
      title: Text(
        widget.reja.name,
        style: TextStyle(
          color: widget.reja.bajarildi ? Colors.grey : Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 17,
          decoration: widget.reja.bajarildi
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: IconButton(
        onPressed: () {
        },
        icon: Icon(
          Icons.delete_forever,
          color: Colors.red,
        ),
      ),
    );
  }
}
