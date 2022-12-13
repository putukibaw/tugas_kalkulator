import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:k3519044_bmicalculator/components/GenderCard.dart';
import 'package:k3519044_bmicalculator/components/RoundedButton.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _tinggi = 170;
  int _berat = 60;
  int _umur = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("=================BMI CALCULATOR==================\n"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Height Section
            GenderCard(
              color: Color(0xff1d1e33),
              contentChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Container(
                        child: Text(
                          _tinggi.toString(),
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(child: Text('cm'))
                    ],
                  ),
                  Container(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2,
                        activeTrackColor: Colors.red,
                        thumbColor: Color.fromARGB(255, 66, 34, 172),
                        overlayColor: Color.fromARGB(255, 66, 34, 172),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20),
                      ),
                      child: Slider(
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            _tinggi = newValue.toInt().round();
                          });
                        },
                        value: _tinggi.toDouble(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Gender Section
            Expanded(
              child: Row(
                children: [
                  GenderCard(
                    color: Color.fromARGB(255, 202, 10, 10),
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.male_outlined,
                            size: 100,
                          ),
                        ),
                        Container(
                          child: Text('MALE'),
                        )
                      ],
                    ),
                  ),
                  GenderCard(
                    color: Color.fromARGB(255, 202, 10, 10),
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(
                            Icons.female_outlined,
                            size: 100,
                          ),
                        ),
                        Container(
                          child: Text(
                            'FEMALE',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Option Section
            Expanded(
              child: Row(
                children: [
                  // Weight Section
                  GenderCard(
                    color: Color.fromARGB(255, 202, 10, 10),
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('WEIGHT'),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Container(
                              child: Text(
                                _berat.toString(),
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(child: Text('kg')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              color: Color(0xff0A0E21),
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RoundedButton(
                              color: Color(0xff0A0E21),
                              icon: Icons.minimize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Age Section
                  GenderCard(
                    color: Color.fromARGB(255, 202, 10, 10),
                    contentChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text('AGE'),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Container(
                              child: Text(
                                _umur.toString(),
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(child: Text('year old')),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              color: Color(0xff0A0E21),
                              icon: Icons.add,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RoundedButton(
                              color: Color(0xff0A0E21),
                              icon: Icons.minimize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Section
            ElevatedButton(
              onPressed: () {},
              child: Text('CALCULATE'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Color.fromARGB(255, 66, 34, 172),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
