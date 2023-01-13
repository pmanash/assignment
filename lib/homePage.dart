import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(10),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [Text('Sign up'), Icon(Icons.cancel)],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 15),
              child: RichText(
                text: TextSpan(
                    text: 'Let\'s create your ',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: 'Account',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ]),
              )),
          Text('FirstName*'),
          SizedBox(
            height: 5,
          ),
          TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder())),
          SizedBox(
            height: 20,
          ),
          Text('LastName*'),
          SizedBox(
            height: 5,
          ),
          TextFormField(
              decoration: InputDecoration(border: OutlineInputBorder())),
          SizedBox(
            height: 20,
          ),
          Text('Mobile No*'),
          SizedBox(
            height: 5,
          ),
          TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              )),
          SizedBox(
            height: 20,
          ),
          Text('Email*'),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '@gmail.com',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Generes*'),
          SizedBox(
            height: 5,
          ),
          TextFormField(
              onTap: () {
                print('Hello');
                CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.amber,
                );
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                suffixIcon: Icon(
                  Icons.arrow_downward,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Text('Performance Type*'),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Checkbox(
                value: isCheck,
                onChanged: (bool? newValue) {
                  setState(() {
                    isCheck = newValue!;
                  });
                }),
            Text('In Person'),
            SizedBox(
              width: 15,
            ),
           Checkbox(
                value: isCheck,
                onChanged: (bool? newValue) {
                  setState(() {
                    isCheck = newValue!;
                  });
                }),
            Text('Virtual'),
          ]),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10),
            child: RaisedButton(
              onPressed: (() {}),
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              color: Colors.amber,
            ),
          ),
        ]),
      ),
    );
  }
}
