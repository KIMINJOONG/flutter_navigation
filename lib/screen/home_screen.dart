import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // true : pop 가능
        // false : pop 불가능

        // 작업 실행
        final canPop = Navigator.of(context).canPop();
        return canPop;
      },
      child: MainLayout(
        title: 'Home screen',
        children: [
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
            onPressed: () async {
              Navigator.of(context).pop();
            },
            child: Text('pop'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => RouteOne(
                    number: 123,
                  ),
                ),
              );
              print(result);
            },
            child: Text('push'),
          )
        ],
      ),
    );
  }
}
