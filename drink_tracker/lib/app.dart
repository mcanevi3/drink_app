import 'package:drink_tracker/providers/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/app_router.dart';

class DrinkTrackerApp extends StatelessWidget {
  const DrinkTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CoffeeProvider()..loadItems()),
      ],
      child: MaterialApp.router(
        title: 'Drink Tracker',
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // scaffoldBackgroundColor: const Color.fromARGB(255, 43, 43, 43),
          // appBarTheme: AppBarTheme(backgroundColor: Colors.blueGrey),
          // drawerTheme: DrawerThemeData(backgroundColor: Colors.blueGrey),
        ),
      ),
    );
  }
}
