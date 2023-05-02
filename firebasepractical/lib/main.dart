import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    home: Restoform(),
  ));
}

class Restoform extends StatefulWidget {
  const Restoform({Key? key}) : super(key: key);

  @override
  State<Restoform> createState() => _RestoformState();
}

class _RestoformState extends State<Restoform> {

  final formkey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _phone;
  late String _guests;
  late String _time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant form"),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                icon: Icon(Icons.person),
                hintText: "Enter your name",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter your name";
                }
              },
              onSaved: (value){
                _name = value!;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                icon: Icon(Icons.alternate_email),
                hintText: "Enter your email",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter your email";
                }
              },
              onSaved: (value){
                _email = value!;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Phone number",
                icon: Icon(Icons.phone),
                hintText: "Enter your phone number",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter your phone number";
                }
                else if(!RegExp(r'^[0-9]{10}$').hasMatch(value)){
                  return "Please enter a valid phone number";
                }
              },
              onSaved: (value){
                _phone = value!;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Number of guests",
                icon: Icon(Icons.people_alt),
                hintText: "Enter number of guests",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter number of guests";
                }
                else if(!RegExp(r'^[0-9]$').hasMatch(value)){
                  return "Please enter a valid number";
                }
              },
              onSaved: (value){
                _guests = value!;
              },
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Time",
                icon: Icon(Icons.timer),
                hintText: "Enter time of arrival",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please enter a suitable time";
                }
                else if(!RegExp(r'[01]?[0-9]|2[0-3]:[0-5][0-9]').hasMatch(value)){
                  return "Please enter a valid time";
                }
              },
              onSaved: (value){
                _time = value!;
              },
            ),
            SizedBox(height: 10,),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget submitButton(){
    return ElevatedButton.icon(
      onPressed: (){
        if(formkey.currentState!.validate()){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Registration done successfully"))
          );
          formkey.currentState!.save();
          FirebaseFirestore.instance.collection("Practical").add({
            'Name' : _name,
            'Email' : _email,
            'Phone' : _phone,
            'Guests' : _guests,
            'Time' : _time,
          }).then((value) => print("Submitted successfully")).catchError((error)=>
              print("$error"));
        }
      },
      icon: Icon(Icons.send),
      label: Text("Submit"),
    );
  }
}
