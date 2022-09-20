import 'package:flutter/material.dart';
import 'package:pper/main.dart';

import 'map.dart';

class MapDirections extends StatefulWidget {
  const MapDirections({super.key});

  @override
  State<MapDirections> createState() => _MapDirectionsState();
}

class _MapDirectionsState extends State<MapDirections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MapScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main()),
              );
            },
),
    bottomNavigationBar: BottomNavigationBar(
         items: const [
              BottomNavigationBarItem(icon: Icon(Icons.assistant_direction),
              label: 'New Route',
            
             )
             
             ,
              BottomNavigationBarItem(icon: Icon(Icons.assistant_direction_sharp),
              label: 'Previous Route',
             )

           ],
           onTap: (int index) {
            if(index == 0) { 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main()), //This will go to the settings
              );
            } else if(index ==1) {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Main()), //This will go to the split map
              );
            }
           }
        )
      //This would lead to 
    );
  }
}