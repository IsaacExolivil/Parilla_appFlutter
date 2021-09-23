import 'package:flutter/material.dart';
import 'package:tiendita/model/soda.dart';

import 'menu_page.dart';

class SodasPage extends StatelessWidget {
   final items = <Soda>[
     Soda('Coca', 'descriptionSoda', 13),
     
   ];
   List<String> imagenTaco = [
      'assets/pastor.jpg',




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
                                  child: Text(items[index].nameSoda.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ),
                                //Text(items[index].descriptionTaco),
                                 Text('\$${items[index].priceSoda}',
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