import 'package:flutter/material.dart';
import 'package:coursefidence/pages/login_page.dart';
import 'package:coursefidence/pages/signup_page.dart';
import 'package:coursefidence/pages/courses.dart';
import 'package:coursefidence/pages/overview.dart';
import 'package:provider/provider.dart';
import 'package:coursefidence/utils/course_model.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CourseModel>(
      builder: (context) => CourseModel(),
      child: MaterialApp(
        initialRoute: '/login',
        routes: {
          '/': (BuildContext context) => Overview(),
          '/signup': (BuildContext context) => SignupPage(),
          '/login': (BuildContext context) => LoginPage(),
          '/courses': (BuildContext context) => Courses(),
        },
      ), // theme: Theme(data: ThemeData(accentColor: Color(Colors.orange)), child: null),
    );
  }
}
