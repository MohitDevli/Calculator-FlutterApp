import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  void setScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 80,
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 4,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 3),
            children: List.generate(btnList.length, ([index]) {
              if (btnList[index].iconReq == false) {
                return FlatButton(
                  child: Text(
                    btnList[index].title,
                    style: TextStyle(
                        fontSize: 25,
                        color: btnList[index].color,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                );
              } else {
                return IconButton(onPressed: (){}, icon: Icon(btnList[index].icon, color: Colors.orange,)); //;
              }

            })));
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
  const BtnList(title: 'C', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: 'B', icon: Icons.backspace_outlined, iconReq: true, color: Colors.orange),
  const BtnList(title: '%', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '/', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '7', icon: null, iconReq: false, color: null),
  const BtnList(title: '8', icon: null, iconReq: false, color: null),
  const BtnList(title: '9', icon: null, iconReq: false, color: null),
  const BtnList(title: 'X', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '4', icon: null, iconReq: false, color: null),
  const BtnList(title: '5', icon: null, iconReq: false, color: null),
  const BtnList(title: '6', icon: null, iconReq: false, color: null),
  const BtnList(title: '-', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '1', icon: null, iconReq: false, color: null),
  const BtnList(title: '2', icon: null, iconReq: false, color: null),
  const BtnList(title: '3', icon: null, iconReq: false, color: null),
  const BtnList(title: '+', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: 'op', icon: Icons.apps, iconReq: true, color: Colors.orange),
  const BtnList(title: '0', icon: null, iconReq: false, color: null),
  const BtnList(title: '.', icon: null, iconReq: false, color: Colors.orange),
  const BtnList(title: '=', icon: null, iconReq: false, color: Colors.orange),
];
