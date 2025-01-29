import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  DateTime?selectedDate;

  void datePicker() async{
    DateTime? datePicker = await showDatePicker(
      keyboardType: TextInputType.datetime,
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2025,12,31));
    if(datePicker!=null) {
      setState(() {
        selectedDate = datePicker;
      });
      print("Date Selected ${datePicker.day}-"
          "${datePicker.month}-"
          "${datePicker.year}");
    }
  }

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
              child: Text("Student Register Form",
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
            SizedBox(height: 20,),
            Text("Date of Birth",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,width: 150,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple.shade50
              ),
              child: selectedDate!=null? Text("${selectedDate?.day}-"
                  "${selectedDate?.month}-"
                  "${selectedDate?.year}",
               textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ):Text("No date selected")
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 35)
                ),
                onPressed: datePicker,
                child: Text("Select"))
          ],
        ),
      ),
    );
  }
}
