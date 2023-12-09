// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:realstate/Models/item_model.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.item, {super.key});
  Item item;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item.title!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: NetworkImage(widget.item.thumb_url!),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.item.category!,
              style: TextStyle(
                  color: Colors.blue.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.item.title!,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  widget.item.location!,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(Icons.location_on_outlined)
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.item.price}\$ /Month",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                )
              ],
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: RawMaterialButton(onPressed: (){} , 
              elevation: 0.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
              fillColor: Colors.blue.shade600,
              child: const Text("Rent Now" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20 , color: Colors.white),),),
            )
          ],
        ),
      ),
    );
  }
}
