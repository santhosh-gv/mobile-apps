import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[900],
              title: Text('Smart Timer',style: TextStyle(color: Colors.grey[300]),),
            ),
            backgroundColor: Colors.grey[850],
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                print('Adding New Timer');
              },
              child: Icon(Icons.add,),
              backgroundColor: Colors.grey[800],
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 80.0,
                    // width: 300.0,
                    color: Colors.transparent,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                        ),
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              // padding: const EdgeInsets.all(10.0),
                              padding: EdgeInsets.all(0),
                              child: IconButton(
                                onPressed: null,
                                icon: Icon(Icons.mail,),
                                iconSize: 50,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    'Name',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[900],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Text(
                                    '00:00:00',
                                    style: TextStyle(
                                      fontSize: 30,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.grey[900],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30,0,30,30),
                              child: IconButton(
                                icon: Center(
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    color: Colors.grey[850],
                                    size: 60,),
                                ) ,
                                onPressed: (){
                                  print('Starting timer!');
                                },
                              ),
                            )
                          ],
                        ),

                        // new Center(
                        //   child: new Text(
                        //     "Rounded Corner Rectangle Shape",
                        //     style: TextStyle(color: Colors.grey[200], fontSize: 22),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // )
                    ),
                  ),
                ),
                ],
            )
            ),
            bottomNavigationBar: SizedBox(
              height: 100,
              child: BottomNavigationBar(
                backgroundColor: Colors.grey[900],
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.timer,color: Colors.grey,),
                    title: Text('Timers',style: TextStyle(color: Colors.grey),),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.alarm_add,color: Colors.grey,),
                    title: Text('Create',style: TextStyle(color: Colors.grey),),                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings,color: Colors.grey,),
                    title: Text('Settings',style: TextStyle(color: Colors.grey),),                  ),
                ],


              ),
            ),
        )
    );
  }
}
