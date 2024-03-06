import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(context, {required String title}){
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    title: Text(
    title,
      style: const TextStyle(
          color: Colors.white
      ),
    ),

    actions: [
      IconButton(
        icon: const Icon(Icons.notifications_outlined, color: Colors.white,),
        onPressed: () {},
      ),

    ],

  );
}