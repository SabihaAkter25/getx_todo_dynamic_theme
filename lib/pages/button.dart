import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dialoguebox.dart';

 final TextController = TextEditingController();
 InkWell buildInkWell() {

  return InkWell(
    onTap: () {
    Get.dialog(ReusableDialogueBox(
     controller: TextController ,
     titile: 'Add New Task',
     hintText: 'Enter a task',
     cancelText: 'Cancel',
     saveText: 'Save',
     onCancel: (){
       Get.back();
     },
     onSave: (){
       print(TextController.text);
     },
   ),
   );
   },

    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 120,vertical: 20),
      height: 80,
      width: 10,

      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children:[
            Icon(Icons.add,color: Colors.white,),
            Text(
              "ADD NEW",style: TextStyle(color: Colors.white,fontSize: 20),
            )
          ]
      ),
    ),
  );
}