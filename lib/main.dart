import 'package:age_finder/to_do_list/presentation/pages/to_do_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData.light(
      //   useMaterial3: true,
      // ),
      // builder: (context, child) => ResponsiveBreakpoints.builder(
      //   child: child!,
      //   breakpoints: [
      //     const Breakpoint(start: 0, end: 550, name: MOBILE),
      //     const Breakpoint(start: 551, end: 800, name: TABLET),
      //     const Breakpoint(start: 801, end: 1920, name: DESKTOP),
      //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      //   ],
      // ),
      home: ToDoListPage(),
    );
  }
}