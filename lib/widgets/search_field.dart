import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFiled extends StatefulWidget {
  const SearchFiled({super.key});

  @override
  State<SearchFiled> createState() => _SearchfiledState();
}

class _SearchfiledState extends State<SearchFiled> {
  @override
  Widget build(BuildContext context) {
    return  const TextField(
      decoration: InputDecoration(
        border: InputBorder.none , 
        filled: true , 
        fillColor: Color(0xFFF8FAFC) , 
        hintText: "Search ......" , 
        icon: Icon(CupertinoIcons.search) , 
        suffixIcon: Icon(Icons.filter_alt_outlined) , 
        
      ),
    );
  }
}