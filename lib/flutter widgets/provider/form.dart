import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {

  DateTime?selectedDate;

  _FormScreenState(){
    _selectedValue = _courseList[1];
  }

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

  final _courseList = ["BBA","BCA","COMPUTER SCIENCE","MCA","MBA","AGREE CULTURE"];

  String? _selectedValue = "";

   String? _selectedGender; // var to select gender

   void _onCheckboxChanged(String gender){
     setState(() {
       _selectedGender= _selectedGender==gender?null:gender; // toggle selection
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                child: Text("Select")),
            SizedBox(height: 20,),
            Text("Select Course",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            DropdownButtonFormField(
              icon: Icon(Icons.arrow_drop_down_circle,
              color: Colors.deepPurple,),
              value: _selectedValue,
                items: _courseList.map(
                    (e){
                      return DropdownMenuItem(
                          child: Text(e),value: e,
                      );
                    }
                ).toList(),
                onChanged: (val){
                setState(() {
                  _selectedValue = val as String;
                });
                }
            ),
            SizedBox(height: 20,),
            Text("Select Your gender",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            /// check box
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: _selectedGender == "Male",
                    shape: CircleBorder(),
                    onChanged: (bool?value){
                   setState(() {
                    _onCheckboxChanged("Male");
                  });
                }),
                Text("Male"),
                SizedBox(width: 20,),
                Checkbox(value: _selectedGender == 'Female',
                    shape: CircleBorder(),
                    onChanged: (bool?value){
                   setState(() {
                   _onCheckboxChanged("Female");

                  });
                }),
                Text("Female"),
                SizedBox(width: 20,),
                Checkbox(value: _selectedGender == "Other",
                    shape: CircleBorder(),
                    onChanged: (bool?value){
                   setState(() {
                   _onCheckboxChanged("Other");
                  });
                }),
                Text("Other"),
              ],
            ),
            SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Colors.deepPurpleAccent.shade200
                ),
                  onPressed: (){
                    /// showing the bottom sheet when ever i press the button
                    showModalBottomSheet(context: context, builder: (BuildContext context){
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Text("Your Form Has Been Submitted!!",
                        style: TextStyle(
                          fontSize: 24
                        ),
                        ),

                      );
                    });
                  },
                  child: Text("Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
