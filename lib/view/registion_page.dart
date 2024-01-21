import 'package:flutter/material.dart';
import 'package:login_registion/view/home.dart';
import 'package:login_registion/view/login_page.dart';

class RegistionPage extends StatefulWidget {
  const RegistionPage({super.key});

  @override
  State<RegistionPage> createState() => _RegistionPageState();
}

class _RegistionPageState extends State<RegistionPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfromController =
      TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Form(
              key: _globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Sing Up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    validator: (value) {
                      String v = value ?? "";
                      if (v.isEmpty) {
                        return "Enter your User Name";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e4f2),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      hintText: 'UserName',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      String v = value ?? "";
                      if (v.isEmpty) {
                        return "Enter your Email";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e4f2),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      hintText: 'Email',
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  //
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      String v = value ?? "";
                      if (v.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e4f2),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      hintText: 'password',
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _passwordConfromController,
                    validator: (value) {
                      String v = value ?? "";
                      if (v.isEmpty) {
                        return "Enter your Password";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff0e4f2),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      hintText: 'Confirm Password',
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // end textfild..........................................................
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        }
                      },
                      child: const Text(
                        'Sing Up',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'or',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.purple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Sing In with google',
                        style: TextStyle(color: Colors.purple, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Alreday have an Account? '),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ));
                        },
                        child: const Text(
                          'LogIn',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
