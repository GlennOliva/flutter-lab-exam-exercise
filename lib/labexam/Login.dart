import 'package:flutter/material.dart';
import 'package:flutter_prac2/labexam/Register.dart';

import 'Dashboard.dart';

class Login extends StatelessWidget {
  const Login({Key? key, required email, required name, required birthdate, required password, required civistatus, required confirmpassword, required gender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Form' , style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 30,),
            TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Email',
                labelText: 'Email',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
              onChanged: (value) {},
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                      birthdate: 'N/A',
                      civistatus: 'N/A',
                      gender: 'N/A',
                      confirmpassword: '',
                      name: 'glenn',
                    ),
                  ),
                );
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
             onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Register(
        name: '',
        email: '',
        password: '',
        confirmpassword: '',
        civistatus: '',
        gender: '',
        birthdate: '',
      ),
    ),
  );
},



              child: const Text(
                'Click here to register',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
