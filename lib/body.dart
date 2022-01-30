
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  Future addWorkTimmer(BuildContext context){
    return showDialog (
      context: context,
        builder: (context){
      return AlertDialog(
        title: Text('Add',style: TextStyle(color: Color(0xff1c7589),),textAlign: TextAlign.center,),
        content: Container(
          height: 150,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0))
                  ) ,
                  hintText: 'Work Name',
                  filled: true,
                  fillColor: Colors.lightBlueAccent.withOpacity(.4),
                  focusColor: Color(0xff31d6ff),
                ),
              ),
              SizedBox(height:20 ,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0))
                  ) ,
                  hintText: 'Work Time in Minutes',
                  filled: true,
                  fillColor: Colors.lightBlueAccent.withOpacity(.4),
                  focusColor: Color(0xff31d6ff),


                ),

                keyboardType: TextInputType.number,
              ),
              


            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator .of(context).pop();
            },
            child: Text('Add'),

          ),
          TextButton(
            onPressed: (){},
            child: Text('Cancel'),

          ),
        ],

      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {

        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            leading: Icon(Icons.opacity),
            centerTitle: true,
            title: Text('Active Timer'),
            backgroundColor: Color(0xff2a7f9e),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InputChip(
                      label: Text(
                        'Study',
                        style: TextStyle(fontSize: 20, color: Colors.white,fontStyle:FontStyle.italic),
                      ),
                      onDeleted: () {},
                      onPressed: () {},
                      deleteIconColor: Colors.redAccent,
                      backgroundColor: Colors.orangeAccent,
                    ),
                    InputChip(
                      label: Text(
                        'Sleep',
                        style: TextStyle(fontSize: 20, color: Colors.white,fontStyle:FontStyle.italic),
                      ),
                      onDeleted: () {},
                      onPressed: () {},
                      deleteIconColor: Colors.redAccent,
                      backgroundColor: Colors.orangeAccent,
                    ),
                    MaterialButton(
                      onPressed: () {
                        addWorkTimmer(context);
                      },
                      child: Icon(Icons.add),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Expanded(
                child: CircularPercentIndicator(
                  lineWidth: 20,
                  center: Text(
                    '00.00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  radius: 120,
                  progressColor: Color(0xff2a7f9e),
                  percent: .4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xff2a7f9e),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Start',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xff2a7f9e),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Restart',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
