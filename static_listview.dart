import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StaticListView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    //return StaticList();
    return DropDownList();
  }

}

class DropDownList extends State {
  String dropDownValue = "Android";

  List<String> dropDownItems = ["Android","C#","MVC",".Net","PHP","Python","Java","Flutter","React Native"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Demo"),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        child: SingleChildScrollView(
          child:Center(
            child: Column(
              children: [
                //SizedBox(height: 10,),

                Padding(padding: EdgeInsets.all(10),

                child:  DropdownButton<String>(
                  dropdownColor: Colors.grey,
                  //isExpanded: true, //spinner width expanded to match parent
                  value: dropDownValue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 10,
                  style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),
                  underline: Container(
                    height: 1,
                    color: Colors.deepPurple,
                  ),
                  onChanged: (String data){
                    setState(() {
                      dropDownValue = data;
                    });
                  },

                  items: dropDownItems.map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                        value: value = value,
                        child:Text(value)
                    );
                  }).toList(),
                ),
                ),

                Text("Selected Language : "+'$dropDownValue',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),)
              ],
            ),
          )
        ),
      ),
    )
    ;
  }
}

class StaticList extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Demo"),
        backgroundColor: Colors.indigo,

      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                //SizedBox(height: 10,),

               /* Padding(padding: EdgeInsets.all(10),
                child: new Text("Welcome to the Second screen in flutter",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.indigo),),),*/

                Container(
                  width: 150,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.indigo,
                  ),
                  child:  RaisedButton(
                      color: Colors.indigo,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                  child: Text("Go Back",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),)
                )

              ],
            ),
          ),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}