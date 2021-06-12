import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  Buttons({Key key}) : super(key: key);

  List<String> btnList = <String>[
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '+',
    '.',
    '0',
    '=',
    '-'
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          children: List.generate(btnList.length, ([index]) {
            return FlatButton(
              child: Text(
                btnList[index],
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {},
            );
          }),
        ));
  }
}

/*
GridView.count(
  // Create a grid with 2 columns. If you change the scrollDirection to
  // horizontal, this produces 2 rows.
  crossAxisCount: 2,
  // Generate 100 widgets that display their index in the List.
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }),
);
 */
