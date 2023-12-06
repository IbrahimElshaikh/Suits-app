import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Edit Profile")),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(shape: BoxShape.circle),
            height: 100,
            width: 100,
            child: Stack(
              fit: StackFit.expand,
              children: [
                image == null
                    ? Image.network(
                        "https://plus.unsplash.com/premium_photo-1677553954020-68ac75b4e1b4?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVucyUyMHN1aXR8ZW58MHx8MHx8fDA%3D")
                    : Image.file(File(image!.path)),
                GestureDetector(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        children: [
                          IconButton(
                              onPressed: () {
                                pickimage(source: ImageSource.camera);
                              },
                              icon: Icon(Icons.camera)),
                          IconButton(
                              onPressed: ()  {
                                pickimage(source: ImageSource.gallery);
                              },
                              icon: Icon(Icons.camera_alt)),
                        ],
                      ),
                    );
                  },
                  child: Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.camera_alt),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
 Future<void>  pickimage({required ImageSource source}) async{
    image = await ImagePicker()
        .pickImage(source:source);
    if (image != null) {
      Navigator.pop(context);
      print(image!.path);
      setState(() {});
    }
  }
}
