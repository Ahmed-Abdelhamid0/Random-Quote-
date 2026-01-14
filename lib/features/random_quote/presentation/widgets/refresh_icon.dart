
import 'package:flutter/material.dart';

class RefreshIcon extends StatelessWidget {
  const RefreshIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: IconButton(
        onPressed: (){
          print('Data');
        }, 
        icon: Icon(Icons.refresh,color: Colors.white,size: 27,),
        ),
    );
  }
}