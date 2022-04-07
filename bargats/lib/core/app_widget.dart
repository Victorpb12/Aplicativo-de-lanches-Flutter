import 'package:bargats/pages/Categorias/categorias.dart';
import 'package:bargats/pages/Mesas/Consumo/consumo_page.dart';
import 'package:flutter/material.dart';
import '../pages/Home/home_page.dart';
import '../pages/Login/login_page.dart';
import 'app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bargats Burguer',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: AppColors.primary, secondary: AppColors.secondary),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/categorias': (context) => CategoriasPage(
              numeroMesa: ModalRoute.of(context)!.settings.arguments as int,
            ),
        '/consumo': (context) => ConsumoPage(
              numeroMesa: ModalRoute.of(context)!.settings.arguments as int,
            ),
      },
    );
  }
}
