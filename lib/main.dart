import 'package:flutter/material.dart';
import 'package:tiendita/pages/menu_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Peliculas',
      initialRoute: 'home',
      //Creamos ruta de inicio
      routes: {
        'home': ( _ ) =>  MenuPage(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
         color: Colors.indigo
        )
      ),
         
    );
  }
}