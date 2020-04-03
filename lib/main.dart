import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Forms'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final Button = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => bookcourier());
          Navigator.push(context, route);
        },
        child: Text("Book a Courier",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final Button1 = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.pink,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Hyperlocal",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Button,
                SizedBox(
                  height: 15.0,
                ),
                Button1,
                SizedBox(
                  height: 15.0,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
class bookcourier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book a Courier'),
      ),
      body:
        MyCustomForm(),
    );
  }
}


class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override

  String radioItem = '';
  bool _value1 = false;
  bool _value2 = false;

  void _onChanged1(bool value) => setState(() => _value1 = value);
  void _onChanged2(bool value) => setState(() => _value2 = value);

  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return ListView(
      key: _formKey,

        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your full name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.home),
              hintText: 'Enter the Address',
              labelText: 'Address',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid phone number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter phone number',
              labelText: 'Phone number',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.timer),
              hintText: 'Time to pickup',
              labelText: 'Time to pickup',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.question_answer),
              hintText: 'What are you sending?',
              labelText: 'What are you sending?',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.attach_money),
              hintText: 'Value of package?',
              labelText: 'Value',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text('Upto 5 kg'),
            value: 'Upto 5kg',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text('Upto 10kg'),
            value: 'Upto 10kg',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text('Upto 15kg'),
            value: 'Upto 15kg',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),
          RadioListTile(
            groupValue: radioItem,
            title: Text('Upto 20kg'),
            value: 'Upto 20kg',
            onChanged: (val) {
              setState(() {
                radioItem = val;
              });
            },
          ),

          Text('Selected:  $radioItem', style: TextStyle(fontSize: 23),),


          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.attach_money),
              hintText: 'Promocode?',
              labelText: 'Promocode',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter valid code';
              }
              return null;
            },
          ),


    new SwitchListTile(
            value: _value2,
            onChanged: _onChanged2,
            title: new Text('Notify me by SMS', style: new TextStyle(fontSize:20,fontWeight: FontWeight.bold, color: Colors.pink)),
          ),
          new SwitchListTile(
            value: _value2,
            onChanged: _onChanged2,
            title: new Text('Notify recipients by SMS', style: new TextStyle(fontSize:20,fontWeight: FontWeight.bold, color: Colors.pink)),
          ),



          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              width: 200.0,
              height: 100.0,
              child: new RaisedButton(
                textColor: Colors.white,
                color: Colors.pink,

                child: const Text('Create Order'),

                onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                },
              )),

        ],

    );
  }
}