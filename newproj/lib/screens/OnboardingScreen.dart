import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newproj/screens/games.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;



class OnboardingScreen extends StatefulWidget {
  

  const  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    } catch (e) {
      print('Error signing in: $e');
    }
  }
  void _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    } catch (e) {
      print('Error signing in: $e');
    }
  }

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }


  Widget _renderSignIn() {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/google.png', width: 200),
          ),
          const SizedBox(height: 60),
          
          TextField(
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 251, 251, 251),
              hintText: 'Email',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              //border: InputBorder.none,
            ),
          ),
          Container(
            height: 0.1,
            color: const Color.fromARGB(255, 250, 249, 249),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 249, 249, 249),
              hintText: 'Password',
            
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              //border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.blue,
                //padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                //side: const BorderSide(width: 1.0, color: Colors.grey),
              ),
              child: const Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),
              ),
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;

                if (email.isEmpty || password.isEmpty) {
                  showDialog(context: context, builder: (_) => AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Please enter your email and password'),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () =>  Navigator.of(context, rootNavigator: true).pop('dialog'),
                      )
                    ],
                  ));

                  return;
                }

                _signIn();

//here
/* try{
      await firebase.signInWithEmailAndPassword(
        email: _emailController.text.trim(), 
        password: _passwordController.text.trim(),);

        Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
      }
      on FirebaseAuthException catch(error)
      {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
          content: Text(error.message ?? 'Authentication failed'),
        ),
      );
    }*/
//to here
              },
            ),
          ),
          const SizedBox(height: 40.0),
          MaterialButton(
            child: const Text(
              "Don't have an account? Sign up",

              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            child: const Text(
              "Forgot your password?",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _renderSignUp() {
    return Container(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/google.png', width: 200),
          ),
          const SizedBox(height: 60),
          TextField(
            controller: _nameController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 252, 250, 250),
              labelText: 'Your name',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          TextField(
            controller: _emailController,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 255, 255, 255),
              labelText: 'Email address',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          TextField(
            controller: _passwordController,
            obscureText: true,
            autofocus: false,
            autocorrect: false,
            enableSuggestions: false,
            decoration: const InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 243, 242, 242),
              labelText: 'Password',
              floatingLabelStyle: TextStyle(color: Colors.black),
              focusedBorder: InputBorder.none,
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                side: const BorderSide(width: 1.0, color: Colors.grey),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                ),
              ),
              onPressed: () async {
                //final name = _nameController.text;
                final email = _emailController.text;
                final password = _passwordController.text;

                if (email.isEmpty || password.isEmpty) {
                  showDialog(context: context, builder: (_) => AlertDialog(
                    title: const Text('Error'),
                    content: const Text('Please enter your email and password'),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () => Navigator.of(context, rootNavigator: true).pop('dialog'),
                      )
                    ],
                  ));

                  return;
                }

                _register();
              },
            ),
          ),
          const SizedBox(height: 10.0),
          MaterialButton(
            child: const Text(
              "Forgot your password?",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 40.0),
          MaterialButton(
            child: const Text(
              "Already have an account? Sign in",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;


    _emailController.text = "";

    return Scaffold(
        extendBodyBehindAppBar: true,
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            
            _renderSignIn(),
            _renderSignUp(),
          ],
        )
    );
  }
}
