import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  double sliderValue = 100;
  bool isOff = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SliderTheme(
              data: SliderThemeData(
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.grey,
                  thumbColor: Colors.white,
                  overlayColor: Colors.white10,
                  trackHeight: 3),
              child: Slider.adaptive(
                value: sliderValue,
                min: 0,
                label: '${sliderValue.toStringAsFixed(0)}',
                divisions: 100,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Switch.adaptive(
              activeColor: Colors.green,
              value: isOff,
              onChanged: (value) {
                setState(() {
                  isOff = value;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )
            // CupertinoSwitch(
            //   activeColor: Colors.green,
            //   value: isOff,
            //   onChanged: (value) {
            //     setState(() {
            //       isOff = value;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
