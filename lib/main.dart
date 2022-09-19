
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:pper/map.dart';

import 'drawer_header.dart';
import 'drone_list_view.dart';

void main() {
  runApp (MyApp());
}

//Stateless widget that the home body is being passed into

//A stateful widget that'll be the home body
//It'll contain a two containers, one with a map, another blank conatiner, or with an image error screen
//There will be a floating_action_button for the menu
//There will be a bottom naviagation bar for which routes to take

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Autonomous Reconnaissance Drone';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
    return const Main();
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
       body: Align(
         alignment: Alignment.topLeft,
         child: LayoutBuilder(
           builder: (BuildContext context, BoxConstraints constraints) {
             return Row(children: [
               Container(
               width: constraints.maxWidth / 2,
               height: constraints.maxHeight,
               color: Colors.red,
               alignment: Alignment.topRight,
               child: const MapScreen(),
             ),
             Container(
               height: constraints.maxHeight,
                width: constraints.maxWidth / 2,
                color: Colors.pink[400],
                alignment: Alignment.topLeft,
                child: const Text('The video output would go here'),
                //Video error picture would go here
              ),
             ]
             );
           },
         ),
        
       ),

      
      // floatingActionButton: const FloatingActionButton(
      //   onPressed: null,
      //   child: Icon(Icons.menu),
      //   shape: RoundedRectangleBorder(),
      //   ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        bottomNavigationBar: BottomNavigationBar(
         items: const [
              BottomNavigationBarItem(icon: Icon(Icons.assistant_direction),
              label: 'New Route',
             ),
              BottomNavigationBarItem(icon: Icon(Icons.assistant_direction_sharp),
              label: 'Previous Route',
             )
           ]
        )
    )
    );
        
  }
}
