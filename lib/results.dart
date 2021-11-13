import 'package:flutter/material.dart';
class Results extends StatelessWidget {
  final double bmi;
  final String status;
  final String message;
  const Results({Key? key , required this.bmi , required this.status , required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff090E21),
        title: Text("BMI CALCULATOR"),
      ),
      body: Container(
        color: Color(0xff090E21),
        child : Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
              child: Text("Your Results" , style: TextStyle(
                fontSize: 43.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
            Expanded(
              child : Container(
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xff1D1C2A),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(status , style : TextStyle(
                      color : Color(0xff2ecc71),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                    )),
                    Text(bmi.toStringAsFixed(2) , style : TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0
                    )),
                    Text(message ,
                        style : TextStyle(
                        color : Colors.white,
                        fontSize: 20.0
                    ),
                    textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ),
            Row(
              children: [
                Expanded(child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0 , vertical: 0.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.pink)
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    } , child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0 , horizontal: 0.0),
                      child: Text("GO BACK" , style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),)),
                  ),
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
