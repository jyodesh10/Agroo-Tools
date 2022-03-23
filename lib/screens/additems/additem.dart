import 'dart:io';

import 'package:agrotools/widgets/app_button.dart';
import 'package:agrotools/widgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../constant/colors.dart';
import '../../theme.dart';
import '../../widgets/snackbar.dart';

class AddItem extends StatefulWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  var selectedImagePath = '';
  var selectedImageSize = '';
  void getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImagePath = pickedFile.path;
      selectedImageSize = ((File(selectedImagePath)).lengthSync() / 1024 / 1024)
              .toStringAsFixed(2) +
          " Mb";
      // uploadImage(File(selectedImagePath.value));

    } else {
      getSnackbar(
        message: 'No image selected',
      );
    }

    setState(() {});
  }

  void uploadImage(File file) {
    Get.dialog(
      const Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainGreen,
        title: Text(
          "Add Item",
          style: headingStyle.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 150,
                  width: 200,
                  color: Colors.grey,
                  child: Center(
                      child: selectedImagePath == ''
                          ? const Icon(
                              Icons.add_a_photo,
                              size: 30,
                            )
                          : Image.file(File(selectedImagePath))),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    getImage();
                  },
                  child: const Text('Add image'),
                ),
              ),
              const Text("Item name : "),
              buildcustomTextfield("Item name"),
              const SizedBox(
                height: 20,
              ),
              const Text("Price : "),
              buildcustomTextfield("Item price"),
              const SizedBox(
                height: 20,
              ),
              const Text("Status : "),
              buildcustomTextfield("Item status"),
              const SizedBox(
                height: 20,
              ),
              const Text("Description : "),
              buildcustomTextfield("Item Description"),
              const SizedBox(
                height: 20,
              ),
              const Text("Location : "),
              buildcustomTextfield("Location"),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: MyButton(label: 'Submit', onTap: () {}),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildcustomTextfield(hinttext) {
    return SizedBox(
      height: 45,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            hintText: hinttext,
            border: const OutlineInputBorder()),
      ),
    );
  }
}
