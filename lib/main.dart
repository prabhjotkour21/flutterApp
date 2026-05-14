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
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _clickCount = 0;
  String _userText = "";
  List<String> _tasks = []; // stores all our todo items
  TextEditingController _controller =
      TextEditingController(); // reads text from input box
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      // This todo app code
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter task",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _tasks.add(_controller.text);
                  _controller.clear();
                });
              },
              child: const Text("Add Task"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length,
                itemBuilder: (context, index) {
                  // return ListTile(title: Text(_tasks[index]));
                  return ListTile(
                    title: Text(_tasks[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        setState(() {
                          _tasks.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      //***************************this is login page code **********************/
      //  Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text(
      //         "Login Screen",
      //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //       ),
      //       const SizedBox(height: 20),
      //       TextField(
      //         decoration: const InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: "Username",
      //         ),
      //       ),
      //       const SizedBox(height: 15),
      //       TextField(
      //         obscureText: true,
      //         decoration: const InputDecoration(
      //           border: OutlineInputBorder(),
      //           labelText: "Password",
      //         ),
      //       ),
      //       const SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {
      //           print("Login button clicked");
      //         },
      //         child: const Text("login"),
      //       ),
      //     ],
      //   ),
      // ),
      // *********************** This is the basic features for couter app , innput box ,button
      // Center(
      //   // Center is a layout widget. It takes a single child and positions it
      //   // in the middle of the parent.
      //   child: Column(
      //     // Column is also a layout widget. It takes a list of children and
      //     // arranges them vertically. By default, it sizes itself to fit its
      //     // children horizontally, and tries to be as tall as its parent.
      //     //
      //     // Column has various properties to control how it sizes itself and
      //     // how it positions its children. Here we use mainAxisAlignment to
      //     // center the children vertically; the main axis here is the vertical
      //     // axis because Columns are vertical (the cross axis would be
      //     // horizontal).
      //     //
      //     // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
      //     // action in the IDE, or press "p" in the console), to see the
      //     // wireframe for each widget.
      //     mainAxisAlignment: .center,
      //     children: [
      //       // This is simple counter app code
      //       // const Text('My First Flutter Counter App 🚀'),
      //       // const Text(
      //       //  'Hi this is my first android app am first time learning this app devlopment',
      //       // ),
      //       // Text(
      //       //  '$_counter',
      //       //  style: Theme.of(context).textTheme.headlineMedium,
      //       // ),
      //       // Text('I am learning Flutter step by step 🚀'),
      //       //=========================

      //       //This Column children layout code

      //       //Container(
      //       //    color: Colors.blue,
      //       //  padding: const EdgeInsets.all(20),
      //       //  child: const Text("Container Example"),
      //       // ),
      //       // ==========================

      //       //  This is Row children lauout code
      //       //Row(
      //       //  mainAxisAlignment: MainAxisAlignment.center,
      //       //  children: [
      //       //    const Text("A"),
      //       //    const SizedBox(width: 20),
      //       //    const Text("B"),
      //       //    const SizedBox(width: 10),
      //       //    const Text("C"),
      //       //    const SizedBox(width: 10),
      //       //  ],
      //       //),

      //       //===========================================

      //       // This is Paddding +SizeBox  layout code
      //       //Padding(
      //       //  padding: const EdgeInsets.all(20),
      //       //  child: Row(
      //       //    mainAxisAlignment: MainAxisAlignment.center,
      //       //    children: [
      //       //      const Text("Flutter"),
      //       //      const SizedBox(width: 20),
      //       //      const Text("is"),
      //       //     const SizedBox(width: 20),
      //       //      const Text("Fun"),
      //       //    ],
      //       //  ),
      //       // ),

      //       //=============================================

      //       // This is elevatedButton + Lcon ( this will  make your  app interactive (clickable ui))
      //       // ElevatedButton(
      //       //   onPressed: () {
      //       //     setState(() {
      //       //       _clickCount++;
      //       //     });
      //       //     print("Buttom clicked $_clickCount times");
      //       //   },
      //       //   child: const Text("Click Me"),
      //       // ),
      //       // const SizedBox(height: 20),
      //       // const Icon(Icons.favorite, color: Colors.red, size: 40),
      //       // Text(
      //       //   '$_clickCount',
      //       //   style: Theme.of(context).textTheme.headlineMedium,
      //       // ),

      //       //=====================================================

      //       // This is the Textfield (user input like login forms ,search bars , etc)
      //       // TextField(
      //       //   onChanged: (value) {
      //       //     setState(() {
      //       //       _userText = value;
      //       //     });
      //       //     print("User input $_userText");
      //       //   },
      //       //   decoration: const InputDecoration(
      //       //     border: OutlineInputBorder(),
      //       //     labelText: "Enter something",
      //       //   ),
      //       // ),
      //       // Text("User typed: $_userText"),

      //       // ==========================================================

      //       // This is the
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
