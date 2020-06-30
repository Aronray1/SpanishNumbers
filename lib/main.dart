import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Callthis(),
    );
  }
}

class Callthis extends StatefulWidget {
  @override
  _CallthisState createState() => _CallthisState();
}

class _CallthisState extends State<Callthis> {
  var count=0;
   List<String> mylist=[

    'cero','uno' ,'dos','tres','cuatro','cinco','seis','siete','ocho','nueve'
    ];
    List<String> mylistenglish=[

    '0','1','2','3','4','5','6','7','8','9'
    ];
    String defaultText='Spanish Numbers';
    String defaultTextenglish='English Numbers';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Spanish Numbers')
      ),
          body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
              Text('Spanish Numbers: $defaultText',style: TextStyle(fontSize:20.0),),
              SizedBox(
                height:30.0,
              ),
              Text('English Numbers: $defaultTextenglish',style: TextStyle(fontSize:20.0),),
              SizedBox(
                height:30.0,
              ),
              FlatButton(
                color:Colors.orangeAccent,
                onPressed: (){
                 setState(() {
                   if(count<mylist.length){
                      defaultText=mylist[count];
                      defaultTextenglish=mylistenglish[count];
                     count++;
                   }
                   else{
                     count=0;
                     defaultText=mylist[count];
                     defaultTextenglish=mylistenglish[count];
                     count++;
                   }
                   print(count);
                 });
              }, 
                child: Text('Count'))
          ]

          ),
        ),
      ), 
    );
  }
}