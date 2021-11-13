import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'results.dart';

enum gender { Male, Female }
gender Gender = gender.Male;
Color genderColor = Colors.white38;
int weight = 40;
int age = 10;
double height = 80;
double bmi = 0.0;
String status = "";
String message = "";
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => App(),
        '/results': (context) =>
            Results(bmi: bmi, status: status, message: message),
      },
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff090E21),
        title: Text("BMI CALCULATOR"),
      ),
      body: BMI(),
    );
  }
}

class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff090E21),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Gender = gender.Male;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Gender == gender.Male
                                ? genderColor
                                : Color(0xff1D1C2A)),
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 74.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "MALE",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Gender = gender.Female;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Gender == gender.Female
                                ? genderColor
                                : Color(0xff1D1C2A)),
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 74.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "FEMALE",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xff1D1C2A),
                        ),
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "HEIGHT",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  height.toInt().toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "cm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 3.0,
                                activeTrackColor: Colors.white,
                                thumbColor: Colors.pink,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                              ),
                              child: Slider(
                                value: height,
                                min: 10,
                                max: 200,
                                onChanged: (double value) {
                                  setState(() {
                                    height = value;
                                  });
                                },
                                thumbColor: Colors.pink,
                                inactiveColor: Colors.white38,
                                activeColor: Colors.white,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xff1D1C2A),
                        ),
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 3.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    weight.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "Kg",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 0.0),
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.pink,
                                    onPressed: () {
                                      setState(() {
                                        weight = weight + 1;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 0.0),
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.pink,
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 0) {
                                          weight = weight - 1;
                                        }
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Color(0xff1D1C2A),
                        ),
                        margin: EdgeInsets.all(10.0),
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 3.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    age.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(
                                      "Yrs",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      // textAlignVer: TextAlignVertical.bottom,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 0.0),
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.pink,
                                    onPressed: () {
                                      setState(() {
                                        age = age + 1;
                                      });
                                    },
                                    child: Text(
                                      "+",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 0.0),
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.pink,
                                    onPressed: () {
                                      setState(() {
                                        if (age > 0) {
                                          age = age - 1;
                                        }
                                      });
                                    },
                                    child: Text(
                                      "-",
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.pink)),
                      onPressed: () {
                        bmi = (weight) / ((height / 100) * (height / 100));
                        if (bmi < 18) {
                          status = "Under Weight";
                          message =
                              "You have to increase your weight to remain fit";
                        } else if (bmi > 25) {
                          status = "Over Weight";
                          message = "You have to loose weight to remain fit";
                        } else {
                          status = "Normal";
                          message =
                              "You have a Normal body weight !! Got Job!!";
                        }
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Results(
                                  bmi: bmi,
                                  status: status,
                                  message: message,
                                )));
                      },
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 0.0),
                          child: Text(
                            "CALCULATE",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
