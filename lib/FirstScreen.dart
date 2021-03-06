import 'package:flutter/material.dart';  
import './TwoIcon.dart';   
import './OneIcon.dart'; 

class FirstScreen extends StatefulWidget {  
  
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  
  final  List<IconData> icons = [
    Icons.autorenew_sharp,
    Icons.signal_wifi_4_bar,
    Icons.home,
    Icons.drafts,
    Icons.backspace,
    Icons.ac_unit_rounded
];

  var namesOfIot =["Plug Ammar","Bilik Hana","Gate Light Switch","Plug 3 patio","Parking lights","Bridge"];
  
  var descriptionIot=["","subdevice 3"]; 

  @override  
  Widget build(BuildContext context) {  
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        children: [
          StructureTwo(icons[0],namesOfIot[0]), // structur two you can press 
          StructureOne(icons[1],namesOfIot[1],descriptionIot[0]), // structur one you can not press 
          StructureTwo(icons[2],namesOfIot[2]), 
          StructureTwo(icons[3],namesOfIot[3]),
          StructureTwo(icons[4],namesOfIot[4]),  
          StructureOne(icons[5],namesOfIot[5],descriptionIot[1]),
        ],
        )
    );       
  }  
}  
