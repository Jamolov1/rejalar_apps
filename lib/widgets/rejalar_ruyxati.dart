import 'package:flutter/material.dart';

class RejalarRuyxati extends StatelessWidget {
  const RejalarRuyxati({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.circle_outlined)),
            title: Text("Bozorga borish"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
