import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:machine_test/auth/login_auth.dart';
import 'package:machine_test/widget/text_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _loading = false;
  String _errorMessage = '';

  void _signup(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _loading = true;
        _errorMessage = '';
      });
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        print('User created: ${userCredential.user!.email}');
        // Navigate to the login page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );

        // Clear text fields
        _emailController.clear();
        _passwordController.clear();
      } on FirebaseAuthException catch (e) {
        print('Failed to create user: $e');
        setState(() {
          _errorMessage = e.message!;
        });
      } finally {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(
                controller: _emailController,
                labelText: 'Email',
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12.0),
              CustomTextField(
                controller: _passwordController,
                labelText: 'Password',
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty || value.length < 6) {
                    return 'Please enter a password with at least 6 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              _loading
                  ? SizedBox(
                      height: 24,
                      width: 24,
                      child: CircularProgressIndicator(),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        _signup(context);
                      },
                      child: Text('Sign Up'),
                    ),
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    _errorMessage,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
