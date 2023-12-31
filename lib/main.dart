import 'package:atre_website/Provider/nav_bar_provider.dart';
import 'package:atre_website/Routes/web_route_config.dart';
import 'package:atre_website/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavBarProvider>(
          create: (context) => NavBarProvider(),
        )
      ],
      child: MaterialApp.router(
        //Using for routes configuration
        routerConfig: MyRoutes().myRouter,
        // ----------------------------
        debugShowCheckedModeBanner: false,
        title: 'Atre Health Tech',
        theme: ThemeData(
          primaryColor: Palette.primary,
          fontFamily: 'DMSans',
          brightness: Brightness.light,
          useMaterial3: true,
        ),
      ),
    );
  }
}
