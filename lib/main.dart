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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Emoji as Input'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    const Text('Only Length Check', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    TextField(
                      controller: _firstController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your text to check length',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        counter: TFCounterWidget(number: _firstController.text.length.toString(), color: _firstController.text.length >= 10 ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.onSurface),
                      ),
                      maxLength: 10,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    const Text('Runes Length Check', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    TextField(
                      controller: _secondController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your text to check length',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        counter: TFCounterWidget(number: _secondController.text.runes.length.toString(), color: _secondController.text.runes.length >= 10 ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.onSurface),
                      ),
                      maxLength: 10,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    const Text('Characters Length Check', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    TextField(
                      controller: _thirdController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: 'Enter your text to check length',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        counterText: '',
                        counter: TFCounterWidget(number: _thirdController.text.characters.length.toString(), color: _thirdController.text.characters.length >= 10 ? Theme.of(context).colorScheme.error : Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 200),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class TFCounterWidget extends StatelessWidget {
  final String number;
  final Color color;
  const TFCounterWidget({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$number/10',
      style: TextStyle(
        color: color,
        fontSize: 16,
      ),
    );
  }
}
