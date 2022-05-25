import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomItems extends StatefulWidget {
  const BottomItems({Key? key}) : super(key: key);

  @override
  State<BottomItems> createState() => _BottomItems();
}

class _BottomItems extends State<BottomItems> {
  var _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 60,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Polygon7.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/Polygon 10.png',
                    scale: 0.7,
                  ),
                ),
              ),
            ),
            Stack(
                alignment: Alignment.center,
                textDirection: TextDirection.rtl,
                fit: StackFit.loose,
                overflow: Overflow.visible,
                clipBehavior: Clip.hardEdge,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Polygon 13.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Text(''),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/Polygon 5.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Text(''),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 125,
                      height: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/Polygon 12.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/Polygon 8.png',
                          scale: 1,
                        ),
                      ),
                    ),
                  ),
                ]),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 60,
                height: 65,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/Polygon7.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'images/Polygon 8.png',
                    scale: 1.4,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.volume_up,
              size: 30,
              color: Color.fromARGB(255, 50, 50, 78),
            ),
            Slider(
              min: 0,
              max: 100,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Text('${_value.toStringAsFixed(1)}%',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 50, 50, 78),
                )),
          ],
        )
      ],
    );
  }
}
