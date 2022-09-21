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

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint( 
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}


class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Properties
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.moveTo( 0 , size.height * 0.35);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0 );
    path.lineTo( 0, 0);
    //path.lineTo( 0, size.height * 0.5);

    canvas.drawPath(path,lapiz);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}