import 'package:flutter/material.dart';
import 'dart:math';
//import 'berat.dart';

class PageHasil extends StatelessWidget {
  final int tinggib;
  final int beratb;
  final String namab;

  PageHasil(
      {Key key,
      @required this.tinggib,
      @required this.beratb,
      @required this.namab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bmi = beratb / pow(tinggib / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obese";
    else if (bmi >= 23)
      cBMI = "Overweight";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Underweight";
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('RESULT'),
        ),

        //body
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                // 'Welcome Back : ${widget.nama}',
                cBMI,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.green,
                ),
              ),

              // Text(
              //     //'Your Password is : ' + widget.password,
              //     'Welcome Back : ' + namab,
              //     style: TextStyle(
              //         color: Colors.blue,
              //         fontWeight: FontWeight.w500,
              //         fontSize: 15)
              //     //style: TextStyle(Colors.blue)
              //     ),
              //
              Text(
                bmi.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w800,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
        // leading: IconButton(

        //rubahan
        bottomSheet: Container(
          width: double.infinity,
          child: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },

            //   ),
            //ading perubahan
          ),
        ));
  }
}
