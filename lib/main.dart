import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grade_tech/appWigets.dart';

//https://medium.com/firebase-tips-tricks/how-to-use-firebase-realtime-database-with-flutter-ebd98aba2c91

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final fb = FirebaseDatabase.instance;
  final myContoller_hh_1 = TextEditingController();
  final myContoller_hh_2 = TextEditingController();
  final myContoller_hh_3 = TextEditingController();
  final myContoller_hh_4 = TextEditingController();
  final myContoller_hh_5 = TextEditingController();
  final myContoller_hh_6 = TextEditingController();
  final myContoller_hh_7 = TextEditingController();
  final myContoller_hh_8 = TextEditingController();
  final myContoller_hh_9 = TextEditingController();
  final myContoller_hh_10 = TextEditingController();
  final myContoller_hh_11 = TextEditingController();
  //for mins
  final myContoller_mm_1 = TextEditingController();
  final myContoller_mm_2 = TextEditingController();
  final myContoller_mm_3 = TextEditingController();
  final myContoller_mm_4 = TextEditingController();
  final myContoller_mm_5 = TextEditingController();
  final myContoller_mm_6 = TextEditingController();
  final myContoller_mm_7 = TextEditingController();
  final myContoller_mm_8 = TextEditingController();
  final myContoller_mm_9 = TextEditingController();
  final myContoller_mm_10 = TextEditingController();
  final myContoller_mm_11 = TextEditingController();

  var retrivedStatus = "refresh to get data";
  var retrivedActive = "refresh to get data";
  var retrivedId = "refresh to get data";
  var last_hh1 = "refresh to get data";
  var last_mm1 = "refresh to get data";
  var last_hh2 = "refresh to get data";
  var last_mm2 = "refresh to get data";
  var last_hh3 = "refresh to get data";
  var last_mm3 = "refresh to get data";
  var last_hh4 = "refresh to get data";
  var last_mm4 = "refresh to get data";
  var last_hh5 = "refresh to get data";
  var last_mm5 = "refresh to get data";
  var last_hh6 = "refresh to get data";
  var last_mm6 = "refresh to get data";
  var last_hh7 = "refresh to get data";
  var last_mm7 = "refresh to get data";
  var last_hh8 = "refresh to get data";
  var last_mm8 = "refresh to get data";
  var last_hh9 = "refresh to get data";
  var last_mm9 = "refresh to get data";
  var last_hh10 = "refresh to get data";
  var last_mm10 = "refresh to get data";
  var last_hh11 = "refresh to get data";
  var last_mm11 = "refresh to get data";
  @override
  void dispose() {
    myContoller_hh_1.dispose();
    myContoller_hh_2.dispose();
    myContoller_hh_3.dispose();
    myContoller_hh_4.dispose();
    myContoller_hh_5.dispose();
    myContoller_hh_6.dispose();
    myContoller_hh_7.dispose();
    myContoller_hh_8.dispose();
    myContoller_hh_9.dispose();
    myContoller_hh_10.dispose();
    myContoller_hh_11.dispose();

    myContoller_mm_1.dispose();
    myContoller_mm_2.dispose();
    myContoller_mm_3.dispose();
    myContoller_mm_4.dispose();
    myContoller_mm_5.dispose();
    myContoller_mm_6.dispose();
    myContoller_mm_7.dispose();
    myContoller_mm_8.dispose();
    myContoller_mm_9.dispose();
    myContoller_mm_10.dispose();
    myContoller_mm_11.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final ref = fb.reference();
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.home,
              size: 30,
            ),
            title: Text("Grade Tech"),
            actions: [
              IconButton(
                icon: Icon(Icons.refresh_rounded, size: 30),
                onPressed: () {
                  ref.child("status").once().then((DataSnapshot status_data) {
                    print(status_data.value);
                    print(status_data.key);
                    setState(() {
                      retrivedStatus = status_data.value;
                    });
                  });
                  ref.child("id").once().then((DataSnapshot status_data) {
                    print(status_data.value);
                    print(status_data.key);
                    setState(() {
                      retrivedId = status_data.value;
                    });
                  });
                  ref.child("active").once().then((DataSnapshot active_data) {
                    print(active_data.value);
                    print(active_data.key);
                    setState(() {
                      retrivedActive = active_data.value;
                    });
                  });
                  ref.child("hh1").once().then((DataSnapshot hh1_data) {
                    print(hh1_data.value);
                    print(hh1_data.key);
                    setState(() {
                      last_hh1 = hh1_data.value;
                    });
                  });
                  ref.child("mm1").once().then((DataSnapshot mm1_data) {
                    print(mm1_data.value);
                    print(mm1_data.key);
                    setState(() {
                      last_mm1 = mm1_data.value;
                    });
                  });
                  ref.child("hh2").once().then((DataSnapshot hh2_data) {
                    print(hh2_data.value);
                    print(hh2_data.key);
                    setState(() {
                      last_hh2 = hh2_data.value;
                    });
                  });
                  ref.child("mm2").once().then((DataSnapshot mm2_data) {
                    print(mm2_data.value);
                    print(mm2_data.key);
                    setState(() {
                      last_mm2 = mm2_data.value;
                    });
                  });
                  ref.child("hh3").once().then((DataSnapshot hh3_data) {
                    print(hh3_data.value);
                    print(hh3_data.key);
                    setState(() {
                      last_hh3 = hh3_data.value;
                    });
                  });
                  ref.child("mm3").once().then((DataSnapshot mm3_data) {
                    print(mm3_data.value);
                    print(mm3_data.key);
                    setState(() {
                      last_mm3 = mm3_data.value;
                    });
                  });
                  ref.child("hh4").once().then((DataSnapshot hh4_data) {
                    print(hh4_data.value);
                    print(hh4_data.key);
                    setState(() {
                      last_hh4 = hh4_data.value;
                    });
                  });
                  ref.child("mm4").once().then((DataSnapshot mm4_data) {
                    print(mm4_data.value);
                    print(mm4_data.key);
                    setState(() {
                      last_mm4 = mm4_data.value;
                    });
                  });
                  ref.child("hh5").once().then((DataSnapshot hh5_data) {
                    print(hh5_data.value);
                    print(hh5_data.key);
                    setState(() {
                      last_hh5 = hh5_data.value;
                    });
                  });
                  ref.child("mm5").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm5 = id_data.value;
                    });
                  });
                  ref.child("hh6").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh6 = id_data.value;
                    });
                  });
                  ref.child("mm6").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm6 = id_data.value;
                    });
                  });
                  ref.child("hh7").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh7 = id_data.value;
                    });
                  });
                  ref.child("mm7").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm7 = id_data.value;
                    });
                  });
                  ref.child("hh8").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh8 = id_data.value;
                    });
                  });
                  ref.child("mm8").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm8 = id_data.value;
                    });
                  });
                  ref.child("hh9").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh9 = id_data.value;
                    });
                  });
                  ref.child("mm9").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm9 = id_data.value;
                    });
                  });
                  ref.child("hh10").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh10 = id_data.value;
                    });
                  });
                  ref.child("mm10").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm10 = id_data.value;
                    });
                  });

                  ref.child("hh11").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_hh11 = id_data.value;
                    });
                  });
                  ref.child("mm11").once().then((DataSnapshot id_data) {
                    print(id_data.value);
                    print(id_data.key);
                    setState(() {
                      last_mm11 = id_data.value;
                    });
                  });
                },
              ),
            ],
            backgroundColor: Color(0xFF06674B),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppWidget(
                        value: "Device ID",
                        widgetValue: retrivedId,
                      ),
                    ),
                    Expanded(
                      child: AppWidget(
                        value: "Status",
                        widgetValue: retrivedStatus,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: AppWidget(
                        value: "Active Devices",
                        widgetValue: retrivedActive,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    // color: Colors.amberAccent,
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 1",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_1,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_1.text);
                              print(myContoller_mm_1.text);
                              ref.child("hh1").set(myContoller_hh_1.text);
                              ref.child("mm1").set(myContoller_mm_1.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 1: "),
                          Text(last_hh1),
                          Text(":"),
                          Text(last_mm1),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 2",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_2,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_2,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_2.text);
                              print(myContoller_mm_2.text);
                              ref.child("hh2").set(myContoller_hh_2.text);
                              ref.child("mm2").set(myContoller_mm_2.text);
                            }),
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 2: "),
                          Text(last_hh2),
                          Text(":"),
                          Text(last_mm2),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 3",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_3,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_3,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_3.text);
                              print(myContoller_mm_3.text);
                              ref.child("hh3").set(myContoller_hh_3.text);
                              ref.child("mm3").set(myContoller_mm_3.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 3: "),
                          Text(last_hh3),
                          Text(":"),
                          Text(last_mm3),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 4",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_4,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_4,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_4.text);
                              print(myContoller_mm_4.text);
                              ref.child("hh4").set(myContoller_hh_4.text);
                              ref.child("mm4").set(myContoller_mm_4.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 4: "),
                          Text(last_hh4),
                          Text(":"),
                          Text(last_mm4),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 5",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_5,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_5,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_5.text);
                              print(myContoller_mm_5.text);
                              ref.child("hh5").set(myContoller_hh_5.text);
                              ref.child("mm5").set(myContoller_mm_5.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 5: "),
                          Text(last_hh5),
                          Text(":"),
                          Text(last_mm5),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 6",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_6,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_6,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_6.text);
                              print(myContoller_mm_6.text);
                              ref.child("hh6").set(myContoller_hh_6.text);
                              ref.child("mm6").set(myContoller_mm_6.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 6: "),
                          Text(last_hh6),
                          Text(":"),
                          Text(last_mm6),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 7",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_7,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_7,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_7.text);
                              print(myContoller_mm_7.text);
                              ref.child("hh7").set(myContoller_hh_7.text);
                              ref.child("mm7").set(myContoller_mm_7.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 7: "),
                          Text(last_hh7),
                          Text(":"),
                          Text(last_mm7),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 8",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_8,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_8,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_8.text);
                              print(myContoller_mm_8.text);
                              ref.child("hh8").set(myContoller_hh_8.text);
                              ref.child("mm8").set(myContoller_mm_8.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 8: "),
                          Text(last_hh8),
                          Text(":"),
                          Text(last_mm8),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 9",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_9,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_9,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_9.text);
                              print(myContoller_mm_9.text);
                              ref.child("hh9").set(myContoller_hh_9.text);
                              ref.child("mm9").set(myContoller_mm_9.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 9: "),
                          Text(last_hh9),
                          Text(":"),
                          Text(last_mm9),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 10",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_10,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_10,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_10.text);
                              print(myContoller_mm_10.text);
                              ref.child("hh10").set(myContoller_hh_10.text);
                              ref.child("mm10").set(myContoller_mm_10.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 10: "),
                          Text(last_hh10),
                          Text(":"),
                          Text(last_mm10),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Time 11",
                          style: TextStyle(fontSize: 20),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_hh_11,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "HH",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                              controller: myContoller_mm_11,
                              keyboardType: TextInputType.number,
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "MM",
                                  border: InputBorder.none,
                                  fillColor: Colors.black)),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 35,
                            ),
                            onPressed: () {
                              print(myContoller_hh_11.text);
                              print(myContoller_mm_11.text);
                              ref.child("hh11").set(myContoller_hh_11.text);
                              ref.child("mm11").set(myContoller_mm_11.text);
                            })
                      ],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("last Time 11: "),
                          Text(last_hh11),
                          Text(":"),
                          Text(last_mm11),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
