import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      )),
      title: 'Flutter Login Web',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 12),
          children: [
            Menu(),
            Body(),
          ],
        ));
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _menuItem(title: 'Home'),
                _menuItem(title: 'About Us'),
                _menuItem(title: 'Contact Us'),
                _menuItem(title: 'Help'),
              ],
            ),
            Row(
              children: [
                _menuItem(title: 'Sign in', isActive: true),
                _registerButton(),
              ],
            )
          ],
        ));
  }

  Widget _menuItem({required String title, bool isActive = false}) {
    return Padding(
        padding: EdgeInsets.only(right: 75),
        child: Column(children: [
          Text(
            '$title',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey),
          ),
          SizedBox(
            height: 6,
          ),
          isActive
              ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)),
                )
              : SizedBox()
        ]));
  }

  Widget _registerButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, spreadRadius: 10, blurRadius: 12)
          ]),
      child: Text(
        'Register',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign In to \nMy Application',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "If you don't an account",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'You can',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Register here!',
                    style: TextStyle(
                        color: Colors.deepPurple, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Image.asset('images/illustration-2.png', width: 320)
            ],
          ),
        ),
        Image.asset('images/illustration-1.png', width: 300),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            width: 300,
            child: _formLogin(),
          ),
        ),
      ],
    );
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter email or phone number',
              fillColor: Colors.blueGrey.shade50,
              filled: true,
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 30,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              counterText: 'Forget passwrord?',
              suffixIcon: Icon(
                Icons.visibility_off_outlined,
                color: Colors.grey,
              ),
              fillColor: Colors.blueGrey.shade50,
              filled: true,
              labelStyle: TextStyle(fontSize: 12),
              contentPadding: EdgeInsets.only(left: 30),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey.shade50),
                borderRadius: BorderRadius.circular(15),
              )),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.shade100,
                  spreadRadius: 10,
                  blurRadius: 20,
                )
              ]),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: Container(
              width: double.infinity,
              height: 50,
              child: Center(child: Text('Sign In')),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
                child: Divider(
              height: 50,
              color: Colors.grey.shade300,
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Or Continue with'),
            ),
            Expanded(
                child: Divider(
              height: 50,
              color: Colors.grey.shade300,
            )),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _loginWithButton(image: 'images/google.png'),
            _loginWithButton(image: 'images/github.png',isActive: true),
            _loginWithButton(image: 'images/facebook.png'),
          ],
        )
      ],
    );
  }

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, blurRadius: 15),
                ])
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade400)),
      child: Center(
        child: Container(
          decoration: isActive ?
          BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            boxShadow:[
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: 2,
                blurRadius: 15
              )
            ]
          ):BoxDecoration(),
          child: Image.asset('$image', width: 35),
        ),
      ),
    );
  }
}
