import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RouteTwo extends StatelessWidget {
  const RouteTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(
      title: 'Route Two',
      children: [
        Text(
          'arguments : ${arguments}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(
              '/three',
              arguments: 999,
            );
          },
          child: Text('push Named'),
        ),
        ElevatedButton(
          onPressed: () {
            // [Home Screen(), RouteOne(), RouteTwo(), RouteThree()]
            // [Home Screen(), RouteOne(), RouteThree()]
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(
            //     builder: (_) => RouteThree(),
            //   ),
            // );
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text('push Replacement'),
        ),
        ElevatedButton(
          onPressed: () {
            // Navigator.of(context).pushAndRemoveUntil(
            //   MaterialPageRoute(
            //     builder: (_) => RouteThree(),
            //   ),
            //   // route에 return 값을 false로 주면 라우트 삭제, true면 유지
            //   (route) => route.settings.name == '/',
            // );
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/three',
              (route) => route.settings.name == '/',
            );
          },
          child: Text('pushAndRemoveUntil'),
        ),
      ],
    );
  }
}
