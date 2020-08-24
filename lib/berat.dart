import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'hasil.dart';

class BeratPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<BeratPage> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();

  final myUnameController = TextEditingController();
  final myBeratController = TextEditingController();
  final myTinggiController = TextEditingController();
  String nUname;
  int nBerat = 0;
  int nTinggi = 0;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _formKey,
        appBar: AppBar(
            //title: Text('Login Screen App'),
            ),

        //var column = Column(children: <Widget>[
        //crossAxisAlignment: CrossAxisAlignment.start,
        body: Form(
            key: _formKey,
            //Padding(
            // children: padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'BMI Form',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                //...end untuk tampilan login form//

                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '',
                      style: TextStyle(fontSize: 20),
                    )),

                // Container(
                //   padding: EdgeInsets.all(10),
                //   child: TextFormField(
                //     controller: myUnameController,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       labelText: 'Nama',
                //     ),
                //   ),
                // ),
                //end untuk tampilan user name//

                //awal tampilan berat
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //tambahan
                    onChanged: (txt) {
                      setState(() {
                        nBerat = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        suffix: Text('kg'),
                        filled: true,
                        hintText: 'Berat Badan'),
                    //end tambahan
                  ),
                ),
                //end tampilan isian berat

                //awal tampilan tinggi
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    //tambahan
                    onChanged: (txt) {
                      setState(() {
                        nTinggi = int.parse(txt);
                      });
                    },
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        suffix: Text('cm'),
                        filled: true,
                        hintText: 'Tinggi Badan'),
                    //end tambahan
                    controller: myTinggiController,
                  ),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Hitung'),

                        //aksi pindah
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageHasil(
                                        // Bmiresult(tinggib: tinggi, beratb: berat
                                        namab: nUname,
                                        beratb: nBerat,
                                        tinggib: nTinggi,
                                        // variable yang di pass ke page home
                                      )));
                        }
                        //akhir aksi pindah
                        ))
              ],
            )));
  }
}
