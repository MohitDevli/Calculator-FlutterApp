import 'package:flutter/material.dart';
import 'buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: "Flutter Calculator"),
    );
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text(title),
        ),

        body: Buttons(),
    );
  }
}

/*
// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  String title;

  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<HomePage> {
  bool a = false;

  void _values() {
    setState(() {
      a = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tITLE"),
        ),
        //AppBar(key: _appBarKey, title: Text(widget.title)),

        body: Container(color: Colors.amber, height: 100, width: 100));
  }
}
*/
/*
GridView.count(
			crossAxisCount: 4,
			
			children: [
				    
					FlatButton(
						onPressed: (){}, 
						child: Text("1", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
						
					),

					FlatButton(
						onPressed: (){}, 
						child: Text("2", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("3", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("/", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("4", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("5", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("6", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("*", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("7", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("8", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("9", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("+", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("0", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text(".", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
					FlatButton(
						onPressed: (){}, 
						child: Text("-", style: TextStyle(fontSize: 30)),
						color: Colors.amber,
					),
			],
			
		),
 */

/*

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'LandingBody.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: "Flutter Calculator"),
    );
  }
}

class HomePage extends StatelessWidget {
	HomePage({Key key, this.title}) : super(key: key);

	final String title;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
		appBar: AppBar(title: Text(title)),
		body: Column(
				mainAxisSize: MainAxisSize.max,
				children: <Widget>[
					Expanded(child: DisplayScreen()),
					Expanded(child: Keys()),
					
					
				],
			)
		
		
		
		);
	}
}



/*

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/



*/
