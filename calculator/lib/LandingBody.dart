
import 'package:math_expressions/math_expressions.dart';

void main() {
 print("2x2".replaceAll("x" , "*"));
}

void parser(String _exp) {
  String sol = '=';

  List<String> operands = ['+', '-', 'x', '/', '%'];
  List<String> parts = [];

  Parser p = Parser();
  Expression exp = p.parse(_exp);
  ContextModel cm = ContextModel();
  print(exp.evaluate(EvaluationType.REAL, cm).toString());

  print(parts);
}

void p(exp) {
  String sol = '=';
  List parts = [];

  for (int i; i == exp.length; i++) {}

  print(parts);
}

/*
for (var i = 0; i == exp.length; i++) {
    print(i);
    if (exp[i] == "+") {
      parts.add(exp[i]);
    } else if (exp[i] == "+") {
      parts.add(exp[i]);
    } else if (exp[i] == "-") {
      parts.add(exp[i]);
    } else if (exp[i] == "/") {
      parts.add(exp[i]);
    } else if (exp[i] == "x") {
      parts.add(exp[i]);
    } else if (exp[i] == "%") {
      parts.add(exp[i]);
    }
  }
*/

/*
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DisplayScreen extends StatefulWidget {
  DisplayScreen({Key key, this.appBarKey}) : super(key: key);

  var appBarKey;

  @override
  _DisplayScreen createState() => _DisplayScreen();
}

class _DisplayScreen extends State<DisplayScreen> {
  void _toogle() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height ,
      child: FlatButton(
        child: Text("data"),
        onPressed: () {
          print(widget.appBarKey);
        },
      ),
    );
  }
}

/*
class Keys extends StatelessWidget {
	  @override
  Widget build(BuildContext context) {
    return Container(
		
		child: GridView.count(
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
    );
  }
}
*/
*/
