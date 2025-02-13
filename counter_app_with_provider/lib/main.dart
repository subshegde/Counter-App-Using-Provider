import 'package:counter_app_with_provider/counterpageModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context)=> CounterModel(),
    child: const MyApp(),
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Provider Demo',
      home: MyHomePage(title: 'Flutter Provider Demo'),
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
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(builder: (context,value,child)=>Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              value.count.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(left: 40,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          FloatingActionButton(
          onPressed: (){
            // access to the model class & access the method
            context.read<CounterModel>().decrementCounter();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: (){
            // access to the model class & access the method
            context.read<CounterModel>().incrementCounter();
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        ],),
      )
      
    ));
  }
}
