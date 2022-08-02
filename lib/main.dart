import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'utils/routes.dart';
import 'utils/theme_light.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student Management System',
        // Theme config
        themeMode: ThemeMode.system,
        theme: themeDataLight,
        // Routes config
        initialRoute: RouteGenerator.home,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
      designSize: const Size(375, 812),
    );
  }
}
