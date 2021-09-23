import 'package:flutter/material.dart';
import 'package:tiendita/pages/menu_page.dart';

class IconHeader extends StatelessWidget {
  final String nameTaqueria;
  final IconData icon;
  final Color color1;
  final Color color2;

  IconHeader(
      {required this.icon,
      required this.nameTaqueria,
      this.color1 = Colors.orangeAccent,
      this.color2 = Colors.orange});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height*0.13,
          decoration: BoxDecoration(
            
            //color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                this.color1,
                this.color2,
              ],
            ),
           
          ),
        
          
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            
            child: Image.asset('assets/parrilla.jpg',
            
            width: 60,
            height: 60,
            fit: BoxFit.fill,
            
            
            ),
          ),
         
          
           
           
          alignment: Alignment.bottomCenter
         
          
          ),
        
         Positioned(
          top: size.height*.02,
          left: size.width*.28, 
          child: GestureDetector(  
              onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage())),
          child: Text('La parrilla', style: TextStyle(
            
            color: Colors.white,
            fontSize: size.width*.08,
            fontWeight: FontWeight.w600,
          ),),
          
          ),
         ),
      ],
    );
  }
}
