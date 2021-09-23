import 'package:flutter/material.dart';
import 'package:tiendita/pages/soda_pages.dart';

class InformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          children:  [
            ListTile(
              leading: const Icon(
                Icons.local_drink,
                size: 30,
                color: Colors.red,
              ),
              title: const Text(
                'Bebidas',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SodasPage(),));
              },
              
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                size: 30,
                color: Colors.green,
              ),
              title: Text(
                'Ubicación',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.smartphone,
                size: 30,
                color: Colors.indigo,
              ),
              title: Text(
                'Contacto',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
