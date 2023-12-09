// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class SelectCatagory extends StatefulWidget {
  const SelectCatagory({super.key});

  @override
  State<SelectCatagory> createState() => _SelectCatagoryState();
}

class _SelectCatagoryState extends State<SelectCatagory> {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      
      height: 100.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CategoryButton(Icons.house_rounded, "Houses") , 
          CategoryButton(Icons.villa_rounded, "Villa") , 
          CategoryButton(Icons.apartment_rounded, "Appartment") , 
          CategoryButton(Icons.castle_rounded, "Castles") , 
          
        ],
      ),
    );
  }
}

Widget CategoryButton(IconData icon, String? text) {
  return Container(
    margin: const EdgeInsets.all(18),
    padding: const EdgeInsets.all(6.0 ),
    width: 90,
    height: 90,
    decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
    child: InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
         Icon(icon,size:32 , color: const Color(0XFF2972FF),) ,
         Text("$text") , 

        ],
      ),
    ),
  );
}
