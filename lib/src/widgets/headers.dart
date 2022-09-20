import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 3,
      color: Color( 0xff615AAB),
    );
  }
}


class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.50,
      
      child: Container(
        width: 5,
        height: 3,

        decoration: const BoxDecoration(  
          color: Color(0xff615AAB),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(320),
            bottomLeft: Radius.circular(90),
            bottomRight: Radius.circular(320)
         )
        ),
      ),

    );
  }
}