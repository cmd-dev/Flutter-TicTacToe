/*
import 'package:flutter/material.dart';


void main()=> runApp(MyForm());



class MyForm extends StatefulWidget {
  _MyFormState createState() {
    return _MyFormState();
  }
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<_MyFormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FOrm'),
      ),
      body: Container(
        child: Builder(
          builder: (context) => Form(
              child: Column(
                children: <Widget>[
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              )),
          key: _formKey,
        ),
      ),
    );
  }
}




MaterialApp(
home: Scaffold(
bottomNavigationBar: BottomNavigationBar(
backgroundColor: Colors.blue,
currentIndex: myindex,
onTap: (int index){
setState(() {
myindex=index;

});
},





items: [
BottomNavigationBarItem(
icon: Icon(Icons.favorite),title: Text('')
),
BottomNavigationBarItem(icon: Icon(Icons.android),title: Text('')),
BottomNavigationBarItem(
icon: Icon(Icons.directions_bus),title: Text(''),
),
]),
appBar: AppBar(
title: Text('Hi'),
),
body:
Center(child:which(context,myindex))


















),
);
}


Widget which(context,myindex){
  Widget x;
  switch(myindex)
  {

    case 0:
      x= GestureDetector(
        onLongPress: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){return DDPage();}));


        },
        child: Container(
          child: Icon(Icons.favorite,size: 150,),
        ),
      );
      break;
    case 1:
      x= Container(
        child: Icon(Icons.android,size: 150,),
      );
      break;

    case 2:
      x=
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  mystrings[y],
                  style: TextStyle(color: Colors.grey, fontSize: 26),
                ),
                Container(
                  height: 10,
                  width: 50,
                ),
                RaisedButton(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text('Press me'),
                    ),
                    onPressed: () {
                      setState(() {
                        y = (y + 1) % 5;
                      });
                    }),
              ]);
      break;

    default:
      x= Container();



  }
  return x;
}}
*/
