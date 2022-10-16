import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Adaptive',
      theme: ThemeData.light(),
      home: Scaffold(
      appBar: AppBar(
        title: Text('Adaptive Demo'),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Slider.adaptive(value: 1,
             onChanged: (double newValue){},
            ),
            SwitchListTile.adaptive(value: true, 
            onChanged: (bool newValue){}, 
            title: const Text('Turn On'),),
            Switch.adaptive(value: true, onChanged: (bool newValue){} ),
            Icon(
              Icons.adaptive.share,
            ),
            const CircularProgressIndicator.adaptive(),
              
              ]),
           
      ),
    )
    );
  }
}
