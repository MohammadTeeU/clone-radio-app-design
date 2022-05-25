import 'package:flutter/material.dart';

class NavigBarSide extends StatefulWidget {
  const NavigBarSide({Key? key}) : super(key: key);

  @override
  State<NavigBarSide> createState() => _NavigBarSidestate();
}

class _NavigBarSidestate extends State<NavigBarSide> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 8, 8, 51),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 100),
            child: Icon(
              Icons.slow_motion_video_rounded,
              size: 50,
              color: Color.fromARGB(255, 255, 41, 109),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: RotatedBox(
              quarterTurns: 1,
              child: TextButton(
                onPressed: () {
                  _selectedIndex = 0;
                  setState(() {});
                },
                child: Row(
                  children: [
                    _selectedIndex == 0
                        ? const Icon(Icons.circle,
                            color: Color.fromARGB(
                              255,
                              6,
                              216,
                              232,
                            ))
                        : Text(''),
                    Text(
                      'All Stations',
                      style: TextStyle(
                        fontSize: 25,
                        color: _selectedIndex != 0
                            ? const Color.fromARGB(
                                255,
                                82,
                                82,
                                112,
                              )
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: RotatedBox(
              quarterTurns: 1,
              child: TextButton(
                onPressed: () {
                  _selectedIndex = 1;
                  setState(() {});
                },
                child: Row(
                  children: [
                    _selectedIndex == 1
                        ? const Icon(Icons.circle,
                            color: Color.fromARGB(
                              255,
                              6,
                              216,
                              232,
                            ))
                        : Text(''),
                    Text(
                      'Favorites',
                      style: TextStyle(
                        fontSize: 25,
                        color: _selectedIndex != 1
                            ? const Color.fromARGB(
                                255,
                                82,
                                82,
                                112,
                              )
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: RotatedBox(
              quarterTurns: 1,
              child: TextButton(
                onPressed: () {
                  _selectedIndex = 2;
                  setState(() {
                    debugPrint('object');
                  });
                },
                child: Row(
                  children: [
                    _selectedIndex == 2
                        ? const Icon(Icons.circle,
                            color: Color.fromARGB(
                              255,
                              6,
                              216,
                              232,
                            ))
                        : Text(''),
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 25,
                        color: _selectedIndex != 2
                            ? const Color.fromARGB(
                                255,
                                82,
                                82,
                                112,
                              )
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
