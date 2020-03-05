import 'package:flutter/material.dart';
import 'package:hello_world/services/http.services.dart';
import 'package:hello_world/widgets/constants.widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({ Key key }): super(key: key);
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String _username = '';
  // String _password = '';
  // String _email = '';


 Widget _buildEmail(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Email',
            style: kLabelStyle,
          ),
          SizedBox(height:10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: kBoxDecorationStyle,
            height: 60.0,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color:Colors.white, fontFamily: 'Arial'),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.black
                ),
                hintText: 'Enter Email...',
                hintStyle: kHintTextStyle,
              ),
            ),
          ),
        ],
      );
  }

  Widget _buildPassword(){
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Password',
                style: kLabelStyle,
              ),
              SizedBox(height:10.0),
              Container(
                alignment: Alignment.centerLeft,
                decoration: kBoxDecorationStyle,
                height: 60.0,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color:Colors.white, fontFamily: 'Arial'),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black
                    ),
                    hintText: 'Enter Password...',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
            ],
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: double.infinity, 
          width: double.infinity, 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFFCDD2),
                Color(0xFFEF5350),
                Color(0xFFF44336),
                Color(0xFFC62828),
              ],
              stops: [0.1, 0.4, 0.5, 0.7],
            )
          ),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login', 
                  style:TextStyle(
                    color: Colors.black,
                    fontFamily: 'Arial',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30.0,),
                _buildEmail(),
                SizedBox(height: 30.0),
                _buildPassword(),
             ]
            )
          )
        )
      ]
     )
    );
  }
}
// Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignupPage()));