import 'package:flutter/material.dart';
import 'package:mysite/core/providers/drawer_provider.dart';
import 'package:mysite/core/providers/scroll_provider.dart';
import 'package:mysite/core/app_theme.dart';
import 'package:mysite/sections/main/main_section.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MySiteApp());
}

class MySiteApp extends StatelessWidget {
  const MySiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Wilou',
            theme: AppTheme.themeData(context),
            home: const MainPage(),
          );
        },
      ),
    );
  }
}
