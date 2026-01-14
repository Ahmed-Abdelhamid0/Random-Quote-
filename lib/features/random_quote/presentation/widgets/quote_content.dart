import 'package:flutter/material.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,height: 2,fontSize: 15)),
       Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Text('Author',style: TextStyle(color: Colors.white,fontSize: 20),),
      )
        ],
      ),
    );
  }
}