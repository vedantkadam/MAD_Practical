import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _prevValue = 0.0;
  String _currOperation = '+';
  final TextEditingController _controller = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(40)),
            SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  controller: _controller,
                  enabled: false,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 40),
                )),
            const Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _controller.value = const TextEditingValue(text: '0');
                    _prevValue = 0;
                  },
                  child: const Text(
                    "C",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_currOperation == '+')
                      {
                        _controller.value = TextEditingValue(
                            text: '${_prevValue + double.parse(_controller.text)}')
                      }
                    else if (_currOperation == '-')
                      {
                        _controller.value = TextEditingValue(
                            text: '${_prevValue - double.parse(_controller.text)}')
                      }
                    else if (_currOperation == '*')
                      {
                        _controller.value = TextEditingValue(
                            text: '${_prevValue * double.parse(_controller.text)}')
                      }
                    else if (_currOperation == '/')
                      {
                        _controller.value = TextEditingValue(
                            text: '${_prevValue / double.parse(_controller.text)}')
                      }
                  },
                  child: const Text(
                    "=",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _prevValue = double.parse(_controller.text);
                    _currOperation = '-';
                    _controller.value = const TextEditingValue(text: '0');
                  },
                  child: const Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _prevValue = double.parse(_controller.text);
                    _currOperation = '+';
                    _controller.value = const TextEditingValue(text: '0');
                  },
                  child: const Text(
                    "+",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _prevValue = double.parse(_controller.text);
                    _currOperation = '*';
                    _controller.value = const TextEditingValue(text: '0');
                  },
                  child: const Text(
                    "*",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _prevValue = double.parse(_controller.text);
                    _currOperation = '/';
                    _controller.value = const TextEditingValue(text: '0');
                  },
                  child: const Text(
                    "/",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '0')
                      }
                  },
                  child: const Text(
                    "0",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '1')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '1')}
                  },
                  child: const Text(
                    "1",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '2')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '2')}
                  },
                  child: const Text(
                    "2",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '3')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '3')}
                  },
                  child: const Text(
                    "3",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '4')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '4')}
                  },
                  child: const Text(
                    "4",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '5')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '5')}
                  },
                  child: const Text(
                    "5",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '6')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '6')}
                  },
                  child: const Text(
                    "6",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '7')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '7')}
                  },
                  child: const Text(
                    "7",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '8')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '8')}
                  },
                  child: const Text(
                    "8",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    if (_controller.text != '0')
                      {
                        _controller.value =
                            TextEditingValue(text: _controller.text + '9')
                      }
                    else
                      {_controller.value = const TextEditingValue(text: '9')}
                  },
                  child: const Text(
                    "9",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
