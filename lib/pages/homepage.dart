import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Pertemuan 6"),
      ),
      body:
          // GestureDetector(
          // onTap: () {
          //   setState(() {
          //     selected = !selected;
          //   });
          // },
          //   onDoubleTap: (){
          //               setState(() {
          //       selected = !selected;
          //     });
          //   },
          //   child: Center(
          //     child: AnimatedContainer(
          //       duration: const Duration(seconds: 1),
          //       width: selected ? 300.0 : 100.0,
          //       height: selected ? 300.0 : 100.0,
          //       color: selected ? Colors.red : Colors.blue,
          //       alignment:
          //           selected ? Alignment.center : AlignmentDirectional.topCenter,
          //       child: const FlutterLogo(size: 75),
          //     ),
          //   ),
          // ),
          Center(
        child: ElevatedButton(
          onPressed: () {
            final mySnackBar = SnackBar(
              content: Text("Berhasil membuat SnackBar"),
              duration: Duration(seconds: 3),
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.amberAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
          },
          child: Text(
            "Tampilkan SnackBar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Headline Large',
      //           style: Theme.of(context).textTheme.headlineLarge),
      //       const SizedBox(height: 20),
      //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      //       Text('Body Medium',
      //           style: Theme.of(context).textTheme.bodyMedium),
      //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text('Elevated Button'),
      //       ),
      //       const SizedBox(height: 20),
      //       OutlinedButton(
      //         onPressed: () {},
      //         child: const Text('Outlined Button'),
      //       ),
      //       const SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {},
      //         child: const Text('Text Button'),
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
