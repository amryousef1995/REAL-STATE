// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:realstate/Models/item_model.dart';
import 'package:realstate/screens/details_screen.dart';
import 'package:realstate/widgets/house_card.dart';

// ignore: must_be_immutable
class SuggetionList extends StatefulWidget {
  SuggetionList(this.title, this.items, {super.key});
  String? title;
  List<Item> items;

  @override
  State<SuggetionList> createState() => _SuggetionListState();
}

class _SuggetionListState extends State<SuggetionList> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              TextButton(onPressed: () {}, child: const Text("See All"))
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            height: 340,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.items.length,
                itemBuilder: (context, index) => ItemCard(widget.items[index],(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(widget.items[index]))) ; 
                })),
          )
        ],
      ),
    );
  }
}
