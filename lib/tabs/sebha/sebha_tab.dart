import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int num = 0;
  String text = '';
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head_sebha_logo.png'),
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (num == 132) {
                        angle += 2 * 3.14159265359; // Rotate 360 degrees
                        num = 0;
                        _updateText();
                      } else {
                        angle += (3.14159265359 / 2); // Rotate 90 degrees
                        num++;
                      }
                    });
                  },
                  child: Image.asset('assets/images/body_sebha_logo.png'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xfffB7935F)),
                ),
                onPressed: () {
                  setState(() {
                    num++;
                    if (num > 132) {
                      num = 0;
                    }
                    _updateText();
                  });
                },
                child: Text(
                  '$num',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xfffB7935F)),
                ),
                onPressed: () {
                  setState(() {
                    num++;
                    if (num > 132) {
                      num = 0;
                    }
                    _updateText();
                  });
                },
                child: Text(
                  '$text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _updateText() {
    if (num == 0) {
      text = '';
    } else if (num <= 33) {
      text = 'سبحان الله';
    } else if (num <= 66) {
      text = 'الحمد لله';
    } else if (num <= 99) {
      text = 'لا اله الا الله';
    } else if (num <= 132) {
      text = 'الله اكبر';
    }
  }
}
