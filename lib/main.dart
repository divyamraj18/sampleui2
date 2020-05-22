import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sampleui2/ListViewVeg.dart';
import 'package:sampleui2/call_button.dart';
import 'package:sampleui2/persistent_tab_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ],
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*.4,
                child: Stack(
                  //fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Card(
                        child: Image.network(
                      'https://blog.radissonblu.com/wp-content/uploads/2017/07/Calade-rooftop-restaurant-inside-and-view.jpg',
                      fit: BoxFit.cover,
                    )),
                    Positioned(
                      top: MediaQuery.of(context).size.height*.3,
                      left: MediaQuery.of(context).size.width *0.05,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Card(
                          elevation: 10,
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.18,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 20, top: 20),
                                  height: 90,
                                  child: Row(
                                    //row1
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              'Lorem Ipsum Name',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              'Lorem Ipsum Address',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 5, left: 0),
                                            child: Text(
                                              'Information                  ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 100, right: 25, bottom: 30),
                                          child: CallWidget()),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(right: 20),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Icon(
                                                Icons.star,
                                              ),
                                            ),
                                            Container(
                                              child: Text('  3.5'),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(right: 20, left: 20),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Icon(
                                                Icons.access_time,
                                              ),
                                            ),
                                            Container(
                                              child: Text('    28 min'),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 50),
                                        child: RaisedButton(
                                          child: Text('Open'),
                                          disabledTextColor: Colors.black,
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              side: BorderSide(
                                                  color: Colors.blue, width: 2)),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                height: MediaQuery.of(context).size.height*.05,
                  child: MainPersistentTabBar()),
              Container(height: MediaQuery.of(context).size.height*.38, child: ListViewVeg()),
              Expanded(

                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Card(
                    elevation: 5,
                    child: Container(
                        height: MediaQuery.of(context).size.height*.1,

                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              margin: EdgeInsets.only(left: 30,top: 10),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Show Order',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30
                                    ),
                                  ),
                                  IconButton(icon: Icon(Icons.arrow_forward,size: 40,), onPressed: null),
                                ],

                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                '\$ 91.6',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
