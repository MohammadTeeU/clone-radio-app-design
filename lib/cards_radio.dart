import 'package:flutter/material.dart';

Widget BuildCard(double Freq, String Name, bool isClicked) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: Container(
      width: 135,
      height: 135,
      decoration: BoxDecoration(
          color: isClicked
              ? Color.fromARGB(255, 255, 41, 109)
              : Colors.white.withOpacity(0),
          border: Border.all(
            color: isClicked
                ? Color.fromARGB(255, 255, 41, 109)
                : const Color.fromARGB(
                    255,
                    82,
                    82,
                    112,
                  ),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                isClicked
                    ? Text('Playing', style: TextStyle(fontSize: 10))
                    : Text(''),
                Expanded(child: Container()),
                Icon(
                  isClicked
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_outlined,
                  color: Colors.white,
                )
              ],
            ),
            Center(
              child: Column(
                children: [
                  Text(Freq.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isClicked ? Colors.white : Colors.grey,
                          fontSize: 35,
                          height: 1.2)),
                  Text(Name,
                      style: TextStyle(
                          color: isClicked ? Colors.white : Colors.grey,
                          fontSize: 15,
                          height: 0.5))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: CustomPaint(
                foregroundPainter: isClicked
                    ? CircularPoint(
                        clr: Color.fromARGB(255, (Freq / 150).toInt(),
                            (Freq.toInt() % 150) * 20, Freq.toInt()))
                    : CircularPoint(clr: Colors.grey),
                size: Size(
                    100,
                    (100 * 0.26136363636363635)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: isClicked
                    ? RPSCustomPainter(clr: Colors.white)
                    : RPSCustomPainter(clr: Colors.grey),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

class CircularPoint extends CustomPainter {
  CircularPoint({required this.clr});
  Color clr;
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = clr
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(4, 5), 5, paint1);
    canvas.drawCircle(Offset(100, 5), 5, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter({required this.clr});
  Color clr;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6206591, size.height * 0.9850565);
    path_0.cubicTo(
        size.width * 0.5806261,
        size.height * 0.9850565,
        size.width * 0.5640409,
        size.height * 0.8055565,
        size.width * 0.5474557,
        size.height * 0.6304348);
    path_0.cubicTo(
        size.width * 0.5348739,
        size.height * 0.4990957,
        size.width * 0.5211477,
        size.height * 0.3502417,
        size.width * 0.5011318,
        size.height * 0.3502417);
    path_0.cubicTo(
        size.width * 0.4811159,
        size.height * 0.3502417,
        size.width * 0.4696773,
        size.height * 0.4137230,
        size.width * 0.4536648,
        size.height * 0.5209826);
    path_0.cubicTo(
        size.width * 0.4376511,
        size.height * 0.6260565,
        size.width * 0.4193500,
        size.height * 0.7442652,
        size.width * 0.3816045,
        size.height * 0.7442652);
    path_0.cubicTo(
        size.width * 0.3415716,
        size.height * 0.7442652,
        size.width * 0.3244148,
        size.height * 0.5647652,
        size.width * 0.3084023,
        size.height * 0.3896439);
    path_0.cubicTo(
        size.width * 0.2958205,
        size.height * 0.2583030,
        size.width * 0.2820943,
        size.height * 0.1094504,
        size.width * 0.2620784,
        size.height * 0.1094504);
    path_0.cubicTo(
        size.width * 0.2420614,
        size.height * 0.1094504,
        size.width * 0.2283364,
        size.height * 0.2583030,
        size.width * 0.2157545,
        size.height * 0.3896439);
    path_0.cubicTo(
        size.width * 0.1991693,
        size.height * 0.5625739,
        size.width * 0.1825841,
        size.height * 0.7442652,
        size.width * 0.1425511,
        size.height * 0.7442652);
    path_0.cubicTo(
        size.width * 0.1042338,
        size.height * 0.7442652,
        size.width * 0.08650489,
        size.height * 0.6260565,
        size.width * 0.07049170,
        size.height * 0.5209826);
    path_0.cubicTo(
        size.width * 0.05447852,
        size.height * 0.4159117,
        size.width * 0.04304057,
        size.height * 0.3502417,
        size.width * 0.02302409,
        size.height * 0.3502417);
    path_0.cubicTo(
        size.width * 0.01501750,
        size.height * 0.3502417,
        size.width * 0.008726636,
        size.height * 0.3261626,
        size.width * 0.008726636,
        size.height * 0.2955165);
    path_0.cubicTo(
        size.width * 0.008726636,
        size.height * 0.2648700,
        size.width * 0.01501750,
        size.height * 0.2407913,
        size.width * 0.02302409,
        size.height * 0.2407913);
    path_0.cubicTo(
        size.width * 0.06134136,
        size.height * 0.2407913,
        size.width * 0.07907023,
        size.height * 0.3589978,
        size.width * 0.09508341,
        size.height * 0.4640696);
    path_0.cubicTo(
        size.width * 0.1110966,
        size.height * 0.5691435,
        size.width * 0.1225341,
        size.height * 0.6348130,
        size.width * 0.1425511,
        size.height * 0.6348130);
    path_0.cubicTo(
        size.width * 0.1625670,
        size.height * 0.6348130,
        size.width * 0.1762932,
        size.height * 0.4859609,
        size.width * 0.1888750,
        size.height * 0.3546196);
    path_0.cubicTo(size.width * 0.2054602, size.height * 0.1816878,
        size.width * 0.2220455, 0, size.width * 0.2620784, 0);
    path_0.cubicTo(
        size.width * 0.3021114,
        0,
        size.width * 0.3186955,
        size.height * 0.1794987,
        size.width * 0.3352807,
        size.height * 0.3546196);
    path_0.cubicTo(
        size.width * 0.3478625,
        size.height * 0.4859609,
        size.width * 0.3615886,
        size.height * 0.6348130,
        size.width * 0.3816045,
        size.height * 0.6348130);
    path_0.cubicTo(
        size.width * 0.4016216,
        size.height * 0.6348130,
        size.width * 0.4130591,
        size.height * 0.5713304,
        size.width * 0.4290727,
        size.height * 0.4640696);
    path_0.cubicTo(
        size.width * 0.4450852,
        size.height * 0.3589978,
        size.width * 0.4633864,
        size.height * 0.2407913,
        size.width * 0.5011318,
        size.height * 0.2407913);
    path_0.cubicTo(
        size.width * 0.5411648,
        size.height * 0.2407913,
        size.width * 0.5577500,
        size.height * 0.4202900,
        size.width * 0.5743352,
        size.height * 0.5954087);
    path_0.cubicTo(
        size.width * 0.5869170,
        size.height * 0.7267522,
        size.width * 0.6006420,
        size.height * 0.8756043,
        size.width * 0.6206591,
        size.height * 0.8756043);
    path_0.cubicTo(
        size.width * 0.6406750,
        size.height * 0.8756043,
        size.width * 0.6544011,
        size.height * 0.7267522,
        size.width * 0.6669830,
        size.height * 0.5954087);
    path_0.cubicTo(
        size.width * 0.6835682,
        size.height * 0.4224791,
        size.width * 0.7001523,
        size.height * 0.2407913,
        size.width * 0.7401852,
        size.height * 0.2407913);
    path_0.cubicTo(
        size.width * 0.7785034,
        size.height * 0.2407913,
        size.width * 0.7962318,
        size.height * 0.3589978,
        size.width * 0.8122455,
        size.height * 0.4640696);
    path_0.cubicTo(
        size.width * 0.8282580,
        size.height * 0.5691435,
        size.width * 0.8396966,
        size.height * 0.6348130,
        size.width * 0.8597125,
        size.height * 0.6348130);
    path_0.cubicTo(
        size.width * 0.8797295,
        size.height * 0.6348130,
        size.width * 0.8911670,
        size.height * 0.5713304,
        size.width * 0.9071807,
        size.height * 0.4640696);
    path_0.cubicTo(
        size.width * 0.9231932,
        size.height * 0.3589978,
        size.width * 0.9414943,
        size.height * 0.2407913,
        size.width * 0.9792398,
        size.height * 0.2407913);
    path_0.cubicTo(
        size.width * 0.9872466,
        size.height * 0.2407913,
        size.width * 0.9935375,
        size.height * 0.2648700,
        size.width * 0.9935375,
        size.height * 0.2955165);
    path_0.cubicTo(
        size.width * 0.9935375,
        size.height * 0.3261626,
        size.width * 0.9872466,
        size.height * 0.3502417,
        size.width * 0.9792398,
        size.height * 0.3502417);
    path_0.cubicTo(
        size.width * 0.9592227,
        size.height * 0.3502417,
        size.width * 0.9477852,
        size.height * 0.4137230,
        size.width * 0.9317716,
        size.height * 0.5209826);
    path_0.cubicTo(
        size.width * 0.9157591,
        size.height * 0.6260565,
        size.width * 0.8974580,
        size.height * 0.7442652,
        size.width * 0.8597125,
        size.height * 0.7442652);
    path_0.cubicTo(
        size.width * 0.8219670,
        size.height * 0.7442652,
        size.width * 0.8036659,
        size.height * 0.6260565,
        size.width * 0.7876534,
        size.height * 0.5209826);
    path_0.cubicTo(
        size.width * 0.7716398,
        size.height * 0.4159117,
        size.width * 0.7602023,
        size.height * 0.3502417,
        size.width * 0.7401852,
        size.height * 0.3502417);
    path_0.cubicTo(
        size.width * 0.7201693,
        size.height * 0.3502417,
        size.width * 0.7064432,
        size.height * 0.4990957,
        size.width * 0.6938614,
        size.height * 0.6304348);
    path_0.cubicTo(
        size.width * 0.6772773,
        size.height * 0.8055565,
        size.width * 0.6606920,
        size.height * 0.9850565,
        size.width * 0.6206591,
        size.height * 0.9850565);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = clr;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
