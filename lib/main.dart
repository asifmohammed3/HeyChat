
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heychat/pages/login_page.dart';
import 'package:heychat/services/navigation_service.dart';
import 'package:heychat/services/services.dart';
import 'package:heychat/utils.dart';

void main() async {
  await setup();
  runApp( MainApp());
}

Future<void> setup()async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupFirebase();
  await registerServices();
}

class MainApp extends StatelessWidget {
   MainApp({super.key}){
     _navigationService = _getIt.get<NavigationService>();
     _authService = _getIt.get<AuthService>();
   }
  final GetIt _getIt = GetIt.instance;
  late NavigationService _navigationService;
  late AuthService _authService;


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      navigatorKey: _navigationService.navigatorKey,
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        textTheme: GoogleFonts.montserratTextTheme()
      ),
      initialRoute:_authService.user!=null ? "/home": "/login",
      routes: _navigationService.routes,
    );
  }

}

