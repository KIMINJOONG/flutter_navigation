import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_two_screen.dart';

class RouteOne extends StatelessWidget {
  final int? number;

  const RouteOne({this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Route one',
      children: [
        Text(
          'arguments : ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () async {
            print(Navigator.of(context).canPop());
          },
          child: Text('canPop'),
        ),
        ElevatedButton(
          onPressed: () async {
            Navigator.of(context).maybePop();
          },
          child: Text('maybePop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => RouteTwo(),
                settings: RouteSettings(arguments: 789),
              ),
            );
          },
          child: Text('push'),
        ),
      ],
    );
  }
}
