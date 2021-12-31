import 'package:flutter/material.dart';  
import './FirstScreen.dart';  
 
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: DefaultTabController(  
        length: 1,  // only 1 tab
        child: Scaffold(  
          appBar: AppBar(                 
            title: Text('My Home'),  
            bottom: TabBar(   
              tabs: [  
                Tab( text: "All"),  // the title of the tab       
              ],
            ),  
          ),  
          body: Container(
            color: Colors.green[50],
            child: TabBarView(  
              children: [  
                FirstScreen(),      
              ],  
            ),
          ),  
        ),  
      ),  
    );  
  }  
}  