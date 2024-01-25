import 'package:flutter/material.dart';
import 'package:final_app/app/app.bottomsheets.dart';
import 'package:final_app/app/app.dialogs.dart';
import 'package:final_app/app/app.locator.dart';
import 'package:final_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.page2View,
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: const Color.fromARGB(255, 0, 0, 0)),
        // canvasColor: secondaryColor,
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
