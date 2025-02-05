import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_flutter/provider_new/provider/example_one_provider.dart';

class ExampleOneScreen extends StatefulWidget {
  const ExampleOneScreen({super.key});


  @override
  State<ExampleOneScreen> createState() => _ExampleOneScreenState();
}

class _ExampleOneScreenState extends State<ExampleOneScreen> {


  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ExampleOneProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text("Example One"),
        backgroundColor: Colors.cyan.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ExampleOneProvider>(
              builder: (context,val,child) {
                return Slider(
                    min: 0,
                    max: 1,
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.red,
                    value: val.val,
                    onChanged: (value){
                      setState(() {
                        val.setValue(value);
                      });

                    });
              }
            ),
            Consumer<ExampleOneProvider>(builder: (context,valNew,child){
              return  Row(
                children: [
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(valNew.val)
                        ),
                        child: Text("Container 1",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      )
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(valNew.val)
                        ),
                        child: Text("Container 2",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      )
                  ),
                ],
              );
            })

          ],
        ),
      ),
    );
  }
}
