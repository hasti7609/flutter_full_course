import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Student Form",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text("Student Login Form",
              style: Theme.of(context).textTheme.headlineMedium,),
            ),
            SizedBox(height: 20,),
            /// first name
            Text("First Name",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.purple,
                  )
                ),
                labelText: "Enter Your First Name"
              ),
            ),
            /// last name
            SizedBox(height: 20,),
            Text("Last Name",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.purple,
                      )
                  ),
                  labelText: "Enter Your Last Name",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
