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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Restaurant'),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Image(image: AssetImage('assets/restaurant_logo.jpg'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DisplayPage()),
          )
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          centerTitle: true,
        ),
        body: Center(
            child: Card(
                child: SingleChildScrollView(
                  child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: const <Widget>[
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza1.jpg')),
                    title: Text('Tandoori Paneer'),
                    subtitle: Text('''
                ₹350.
                Spiced paneer, Onion, Green Capsicum & Red Paprika in Tandoori Sauce
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza2.jpg')),
                    title: Text('Veggie Supreme'),
                    subtitle: Text(
                        '''
                ₹400.
                Black Olives, Green Capsicum, Mushroom, Onion, Red Paprika, Sweet Corn
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza3.jpg')),
                    title: Text('Double Paneer Supreme'),
                    subtitle: Text(
                        '''
                ₹420.
                Spiced Paneer, Herbed Onion & Green Capsicum, Red Paprika
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza4.jpg')),
                    title: Text('Veg Kebab Surprise'),
                    subtitle: Text(
                        '''
                ₹400.
                Veg Kebab, Onion, Green Capsicum, Tomato & Sweet Corn in Tandoori Sauce
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza5.jpg')),
                    title: Text('Chicken Supreme'),
                    subtitle: Text(
                        '''
                ₹370.
                Herbed Chicken, Schezwan Chicken Meatball, Chicken Tikka
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza6.jpg')),
                    title: Text('Chicken Tikka Supreme'),
                    subtitle: Text(
                        '''
                ₹350.
                Chicken Tikka, Chicken Malai Tikka, Onion, Red Paprika
                '''),
                  )),
                            SizedBox(
                  height: 110,
                  child: ListTile(
                    leading: Image(image: AssetImage('assets/pizza7.jpg')),
                    title: Text('Triple Chicken Feast'),
                    subtitle: Text(
                        '''
                ₹500.
                Schezwan Chicken Meatball, Herbed Chicken, Chicken Sausage, Green Capsicum, Onion, Red Paprika
                '''),
                  )),
                          ],
                        ),
                ))));
  }
}