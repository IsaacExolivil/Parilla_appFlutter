import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiendita/model/tacos.dart';
import 'package:tiendita/pages/information_page.dart';
import 'package:tiendita/widgets/icon_header.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  

  final items = <Taco>[
    Taco(
      'descriptionTaco',
      'Taco pastor',
      30,
     
    ),
    Taco(
      'descriptionTaco',
      'Pizza Pastor',
      299,
  
    ),
    Taco(
      'descriptionTaco',
      'Nachos ',
      199,
     
    ),
    Taco(
      'descriptionTaco',
      'Pozole',
      130,
     
    ),
    Taco(
      'descriptionTaco',
      'gringas',
      130,
     
    ),
    Taco(
      'descriptionTaco',
      '¿Hambre?',
      0,
     
    ),
    Taco(
      'descriptionTaco',
      'Cocteles 2x1',
      13,
     
    ),
    Taco(
      'descriptionTaco',
      'ven a comer',
      0,
     
    ),
     
  ];
 List<String> imagenTaco = [
      'assets/pastor.jpg',
      'assets/pizzapastor.jpg',
      'assets/nachospastor.jpg',
      'assets/pozole.jpg',
      'assets/gringapastor.jpg',
      'assets/burro.jpg',
      'assets/cocteles.jpg',
       'assets/publicidad.jpg',



    ];
  @override
  Widget build(BuildContext context) {

   

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.15),
              child: SafeArea(
                child: GridView.builder(
                  gridDelegate:
                      //Horizontal
                      SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  //vertical
                  itemCount:  items.length, 
                  //Agregue index y 
                  itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27),
                          ),
                            child: Column(
                              
                              
                              
                              children: [
                               Flexible(child: Image.asset(imagenTaco[index])),
                                //LLamamos  nuestro  taco Array atraves de index y uppercase vuelve todo en mayusculas
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(items[index].nameTaco.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ),
                                //Text(items[index].descriptionTaco),
                                 Text('\$${items[index].priceTaco}',
                                 style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                  ),
                                 
                                 
                                 
                              
                                
                                
                               
                               
                             
                              ],
                            ),
                            
                            color: Colors.white70,
                            elevation: 10.0,
                          ),
                      );
                  },
                      ),
                    ),
                  
                ),
                 HeaderDesign(),
            
           
             ],
            ),
          ),
        );
      
  
  }
}

class HeaderDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconHeader(
          icon: Icons.icecream_outlined,
          nameTaqueria: '',
        ),
        Positioned(
          right: 0,
          top: 30,
          child: RawMaterialButton(
            onPressed: () {
              showModalBottomSheet(context: context,
              isScrollControlled: true,
               builder: (context) => SingleChildScrollView(
                 child: Container(
                   padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                   child: InformationPage(),
                   ),

                 ),
               );
              
            },
            shape: CircleBorder(),
            padding: EdgeInsets.all(15),
            //Agregamos icono de 3 puntos//
            child: Icon(FontAwesomeIcons.ellipsisV),
          ),
        ),
      ],
    );
  }
}
