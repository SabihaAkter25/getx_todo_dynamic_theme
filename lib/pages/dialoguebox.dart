import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button.dart';
TextEditingController textEditingController = TextEditingController();
class ReusableDialogueBox extends StatelessWidget {
  final String titile;
  final String? hintText;
  final String saveText;
  final String cancelText;
  final TextEditingController? controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const ReusableDialogueBox({super.key,
    required this.titile,
    this.hintText,
    required this.cancelText,
    required this.saveText,
     this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:Text(titile),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         if(hintText!=null)
           TextFormField(
             controller:controller,
             decoration: InputDecoration(hintText:hintText ),
           ),
         SizedBox(height:hintText != null? 20 :0 ,),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                  onPressed: onCancel,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(cancelText),
                ),
                SizedBox(width: 30,),
                ElevatedButton(
                  onPressed: onSave,
                  child: Text(saveText),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

              ]
          )
        ],
      ),
    );
  }
}






