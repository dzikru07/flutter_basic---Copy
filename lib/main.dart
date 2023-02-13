import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int initial = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic If Else Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: initial == 0 ? Colors.amber : Colors.redAccent,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // addValueInitial(initial);
                  // _loopingFunction();
                },
                child: Text("Run Funcion")),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        initial++;
                      });
                    },
                    child: Text("increase")),
                Text(_functionParam(
                  1,
                ).toString()),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        initial--;
                      });
                    },
                    child: Text("decrease")),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //if else switch case
  _ifElseFunction() {
    // switch (initial) {
    //   case 0:
    //     print("initial zero");
    //     break;
    //   case 1:
    //     print("initial 1");
    //     break;
    //   case 2:
    //     print("initial 2");
    //     break;
    //   case -1:
    //     print("initial -1");
    //     break;
    //   default:
    //     print("another value");
    // }
    if (initial == 0) {
      setState(() {
        initial++;
      });
    } else if (initial == 5) {
      setState(() {
        initial--;
      });
    } else {
      setState(() {
        initial++;
      });
    }
  }

  //return Value
  // int addValueInitial(int value) {
  // int finalValue = 0;

  // setState(() {
  //   finalValue = initial + value;
  // });
  // print("$initial and $value");
  // print(finalValue);
  // return finalValue;
  // }

  //for in loopingz
  // _loopingFunction() {
  //   while (initial < 5) {
  //     print("Number 1");
  //     setState(() {
  //       initial++;
  //     });
  //   }
  //   // do {
  //   //   print("Number 1");
  //   //   setState(() {
  //   //     initial++;
  //   //   });
  //   // } while (initial < 5);
  // }

  //function param
  _functionParam(int a, [String? data, int? data2 = 0]) {
    int number = 0;
    print(data);
    print(data2);

    number = initial + a + int.parse(data2.toString());

    return number;
  }
}
