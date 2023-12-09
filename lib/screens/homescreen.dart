import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realstate/Models/item_model.dart';
import 'package:realstate/widgets/Suggetions.dart';
import 'package:realstate/widgets/search_field.dart';
import 'package:realstate/widgets/select_catgory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 88.0,
        title: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue.shade600,
            ),
            const Text(
              "Shebin Elkom ",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.grey.shade700,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(16.0) , 
        child:Column(children: [
          const SearchFiled() , 
          const SelectCatagory() , 
          const SizedBox(height: 20,) , 
          SuggetionList("Recomedation For You" , Item.recommenadtion) , 
          const SizedBox(height: 20,) , 
          SuggetionList("Near by you", Item.nearby) , 


        ],) ,) ,
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade600,
        unselectedItemColor: Colors.grey.shade600,
        items:const [BottomNavigationBarItem(icon: Icon(CupertinoIcons.home) , label: "HOME") , 
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search) , label: "Seaarch") , 
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart) , label: "favorite") , 
        BottomNavigationBarItem(icon: Icon(Icons.message) , label: "message") , 
         BottomNavigationBarItem(icon: Icon(CupertinoIcons.person) , label: "Profile") , 
        
        ] , 
         ),
    );
  }
}
