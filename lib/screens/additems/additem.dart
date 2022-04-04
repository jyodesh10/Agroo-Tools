import 'dart:io';
import 'dart:typed_data';

import 'package:agrotools/widgets/app_button.dart';
import 'package:agrotools/widgets/inputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
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
  late Box box;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createBox();
  }

  void createBox() async {
    box = await Hive.openBox('database1');
  }

  var itemname = TextEditingController();
  var itemprice = TextEditingController();
  var itemstatus = TextEditingController();
  var itemdescription = TextEditingController();
  var itemlocation = TextEditingController();

  var selectedImagePath = '';
  var selectedImageSize = '';
  Uint8List? image;
  void getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Uint8List _image = await pickedFile.readAsBytes();
      selectedImagePath = pickedFile.path;
      selectedImageSize = ((File(selectedImagePath)).lengthSync() / 1024 / 1024)
              .toStringAsFixed(2) +
          " Mb";
      // uploadImage(File(selectedImagePath.value));
      image = _image;
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
              buildcustomTextfield("Item name", itemname),
              const SizedBox(
                height: 20,
              ),
              const Text("Price : "),
              buildcustomTextfield("Item price", itemprice),
              const SizedBox(
                height: 20,
              ),
              const Text("Status : "),
              buildcustomTextfield("Item status", itemstatus),
              const SizedBox(
                height: 20,
              ),
              const Text("Description : "),
              buildcustomTextfield("Item Description", itemdescription),
              const SizedBox(
                height: 20,
              ),
              const Text("Location : "),
              buildcustomTextfield("Location", itemlocation),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: MyButton(
                    label: 'Submit',
                    onTap: () {
                      if (itemname.text.isEmpty || itemprice.text.isEmpty) {
                        Get.snackbar('Item not added', 'Fill the textfields',
                            backgroundColor: Colors.red,
                            colorText: Colors.white);
                        print(box.get('itemname'));
                      } else {
                        print('object');
                        box.put('itemimage', image);
                        box.put('itemname', itemname.text);
                        box.put('itemprice', itemprice.text);
                        box.put('itemstatus', itemstatus.text);
                        box.put('itemdescription', itemdescription.text);
                        box.put('itemlocation', itemlocation.text);
                        Get.snackbar('Item added', 'succesfull');
                      }
                    }),
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

  buildcustomTextfield(hinttext, TextEditingController controller) {
    return SizedBox(
      height: 45,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            hintText: hinttext,
            border: const OutlineInputBorder()),
      ),
    );
  }
}
