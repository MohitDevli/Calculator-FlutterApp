import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Buttons extends StatefulWidget {
  Buttons({Key key}) : super(key: key);
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  // ignore: non_constant_identifier_names
  String expression = '';

  String evaluate() {
    expression = expression.replaceAll("x", "*");
    print(expression);
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm).toString();
  }

  int _width = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      // Display
      Container(
        alignment: Alignment.bottomRight,
        child: Text(expression, style: TextStyle(fontSize: 45)),
      ),
      Align(
          alignment: Alignment.bottomRight,
          child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              height: null, //(MediaQuery.of(context).size.height / 3),
              width: (MediaQuery.of(context).size.width - _width),
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 4,
                  childAspectRatio: (MediaQuery.of(context).size.width) /
                      (MediaQuery.of(context).size.height / 3),
                  children: List.generate(btnList.length, ([index]) {
                    if (btnList[index].title == "op") {
                      return IconButton(
                        icon: Icon(
                          btnList[index].icon,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          if (_width == 0) {
                            setState(() {
                              _width = 50;
                            });
                          } else {
                            setState(() {
                              _width = 0;
                            });
                          }

                          ;
                        },
                      );
                    } else if (btnList[index].title == "C") {
                      return FlatButton(
                        child: Text(
                          btnList[index].title,
                          style: TextStyle(
                              fontSize: 25,
                              color: btnList[index].color,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (expression != '') {
                            setState(() {
                              expression = '';
                            });
                          }
                        },
                      );
                    } else if (btnList[index].title == "=") {
                      return FlatButton(
                        child: Text(
                          btnList[index].title,
                          style: TextStyle(
                              fontSize: 25,
                              color: btnList[index].color,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (expression != '') {
                            setState(() {
                              expression = "=" + evaluate();
                            });
                          }
                        },
                      );
                    } else if (btnList[index].iconReq == false) {
                      return FlatButton(
                        child: Text(
                          btnList[index].title,
                          style: TextStyle(
                              fontSize: 25,
                              color: btnList[index].color,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            expression += btnList[index].title;
                          });
                        },
                      );
                    } else if (btnList[index].title == "BA") {
                      return IconButton(
                        icon: Icon(
                          btnList[index].icon,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          if (expression != '') {
                            setState(() {
                              expression = expression.substring(
                                  0, expression.length - 1);
                            });
                          }
                          ;
                        },
                      );
                    } else {
                      return IconButton(
                        icon: Icon(
                          btnList[index].icon,
                          color: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            expression += btnList[index].title;
                          });
                        },
                      ); //;
                    }
                  }))))
    ]);
  }
}

class BtnList {
  const BtnList({this.title, this.icon, this.iconReq, this.color});
  final String title;
  final IconData icon;
  final bool iconReq;
  final Color color;
}

const List<BtnList> btnList = const <BtnList>[
  const BtnList(title: "C", icon: null, iconReq: false, color: Colors.orange),
  const BtnList(
      title: "BA",
      icon: Icons.backspace_outlined,
      iconReq: true,
      color: Colors.orange),
  const BtnList(title: '%', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '/', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '7', icon: null, iconReq: false, color: null),
  const BtnList(title: '8', icon: null, iconReq: false, color: null),
  const BtnList(title: '9', icon: null, iconReq: false, color: null),
  const BtnList(title: 'x', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '4', icon: null, iconReq: false, color: null),
  const BtnList(title: '5', icon: null, iconReq: false, color: null),
  const BtnList(title: '6', icon: null, iconReq: false, color: null),
  const BtnList(title: '-', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '1', icon: null, iconReq: false, color: null),
  const BtnList(title: '2', icon: null, iconReq: false, color: null),
  const BtnList(title: '3', icon: null, iconReq: false, color: null),
  const BtnList(title: '+', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(
      title: "op", icon: Icons.apps, iconReq: true, color: Colors.orange),
  const BtnList(title: '0', icon: null, iconReq: false, color: null),
  const BtnList(title: '.', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '=', icon: null, iconReq: false, color: Colors.orange),
];

/*
class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  // ignore: non_constant_identifier_names
  String Expression = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      alignment: Alignment.bottomRight,
      child: Text(Expression, style: TextStyle(fontSize: 50)),
    );
  }

  void setScreen(String text) async {
    print(text);
    setState(() {
      Expression += text;
    });
  }

  void clearScreen() async {
    setState(() {
      Expression = "";
    });
  }
}
*/
