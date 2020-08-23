import 'package:flutter/material.dart';
import 'package:mishkri/Shared/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent[100],
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0),
                TextFormField(
                    validator: (value) =>
                        value.isEmpty ? 'Ingrese su nombre' : null,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    decoration:
                        TextInputDecoration.copyWith(hintText: 'Nombre')),
                SizedBox(height: 20.0),
                TextFormField(
                    validator: (value) => value.length < 8 ? 'Ingrese un teléfono valido' : null,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    
                    decoration:
                        TextInputDecoration.copyWith(hintText: 'Telefono')),
                SizedBox(height: 20.0),
                RaisedButton(
                    color: Colors.red,
                    child: Text(
                      'Actualizar',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      // email: sergiorodrigofernandeztesta@gmail.com
                      // pass:  test123
                      // if (_formKey.currentState.validate()) {
                      //   setState(() {
                      //     loading = true;
                      //   });
                      //   //Validate the form based on its state
                      //   dynamic result = await _auth.signInWithEmailAndPassWord(
                      //       email, password);
                      //   if (result == null) {
                      //     setState(() {
                      //       error = 'could not sign in with those credentials';
                      //       loading = false;
                      //     });
                      //  }
                    }),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                )
              ],
            ),
          )),
    );
  }
}