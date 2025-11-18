import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/todoController.dart';
import '../theme/themeController.dart';
import 'button.dart';
import 'dialoguebox.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final themeController = Get.find<ThemeController>();
  final TextEditingController textController = TextEditingController();
  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: themeController.currentTheme.value.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: themeController.currentTheme.value.primaryColor,
        title: Center(
          child: Text(
            "T O D O",
            style: TextStyle(
              color: themeController.currentTheme.value.textTheme.bodyLarge!.color,
              fontSize: 30,
            ),
          ),
        ),
      ),
      bottomNavigationBar: buildInkWell(),
      floatingActionButton: PopupMenuButton<String>(
        icon: Icon(Icons.color_lens, size: 30, color: themeController.currentTheme.value.iconTheme.color),
        onSelected: (value) {
          if (value == "dark") themeController.setDarkTheme();
          if (value == "soft") themeController.setSoftTheme();
          if (value == "indigo") themeController.setIndigoTheme();
        },
        itemBuilder: (context) => [
          PopupMenuItem(value: "dark", child: Text("Dark Theme")),
          PopupMenuItem(value: "soft", child: Text("Soft Minimal")),
          PopupMenuItem(value: "indigo", child: Text("Indigo Modern")),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------- TITLE ----------
              Text(
                "My Todos",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: themeController.currentTheme.value.textTheme.bodyLarge!.color,
                ),
              ),
              const SizedBox(height: 10),

              // ---------- LIST VIEW ----------
              Expanded(
                child: Obx(() {
                  return ListView.builder(
                    itemCount: todoController.todoList.length,
                    itemBuilder: (context, index) {
                      final todo = todoController.todoList[index];
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 8),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          color: themeController.currentTheme.value.cardColor,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 6,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.3),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // -------- Todo Title --------
                            Expanded(
                              child: Text(
                                todo.title.toString(),
                                style: TextStyle(
                                  color: themeController.currentTheme.value.textTheme.bodyLarge!.color,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                // ---------- DELETE BUTTON ----------
                                IconButton(
                                  icon: Icon(Icons.delete, color: Colors.redAccent),
                                  onPressed: () {
                                    Get.dialog(
                                      ReusableDialogueBox(
                                        titile: 'Delete this task?',
                                        saveText: 'Delete',
                                        cancelText: 'Cancel',
                                        onCancel: () => Get.back(),
                                        onSave: () {
                                          Get.back();
                                        },
                                      ),
                                    );
                                  },
                                ),

                                // ---------- EDIT BUTTON ----------
                                IconButton(
                                  icon: Icon(Icons.edit, color: Colors.blueAccent),
                                  onPressed: () {
                                    textController.text = todo.title!;
                                    Get.dialog(
                                      ReusableDialogueBox(
                                        titile: 'Edit Task',
                                        hintText: 'Enter new title',
                                        controller: textController,
                                        saveText: 'Save',
                                        cancelText: 'Cancel',
                                        onCancel: () => Get.back(),
                                        onSave: () {
                                          Get.back();
                                        },
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
