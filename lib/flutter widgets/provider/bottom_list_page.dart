import 'package:flutter/material.dart';

class BottomListPage extends StatefulWidget {
  const BottomListPage({super.key});

  @override
  State<BottomListPage> createState() => _BottomListPageState();
}

class _BottomListPageState extends State<BottomListPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController contNOController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start ,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10,),
              Center(
                child: Text("Add Details",
                style: Theme.of(context).textTheme.headlineSmall),
              ),
              /// name
              Text("Name",
                  style: Theme.of(context).textTheme.titleLarge
              ),
              SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.deepPurple
                    )
                  )
                ),
              ),
              /// contact
              SizedBox(height: 20,),
              Text("Contact No.",
                  style: Theme.of(context).textTheme.titleLarge
              ),
              SizedBox(height: 10,),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: contNOController,
                decoration: InputDecoration(
                    labelText: "Enter Your Contact Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.deepPurple
                        )
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
