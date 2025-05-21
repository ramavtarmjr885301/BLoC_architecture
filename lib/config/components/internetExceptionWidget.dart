
import 'package:flutter/material.dart';


class Internetexceptionwidget extends StatelessWidget {
  const Internetexceptionwidget({super.key, required Null Function() onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        SizedBox(
          height: MediaQuery.sizeOf(context).height * .15,
          width: MediaQuery.sizeOf(context).width * .15,
        ),
        const Icon(Icons.cloud_off,
        color: Colors.red,
        size: 60,
        )
        
      ],
    );
  }
}