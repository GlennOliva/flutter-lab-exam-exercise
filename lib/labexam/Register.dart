import 'package:flutter/material.dart';
import 'package:flutter_prac2/labexam/Dashboard.dart';
import 'package:flutter_prac2/labexam/Login.dart';

class Register extends StatelessWidget {
  const Register({Key? key, required name, required String email, required String password, required confirmpassword, required civistatus, required gender, required birthdate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmpasswordcontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController gendercontroller = TextEditingController();
    TextEditingController civilstatuscontroller = TextEditingController();
    TextEditingController birthdatecontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Form'),
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Register Form' , style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 15,),
                TextField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Username',
                    labelText: 'name',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
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
                const SizedBox(height: 10,),
                TextField(
                  controller: confirmpasswordcontroller,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Password',
                    labelText: 'Confirm Password',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 10,),
                TextField(
                  controller: gendercontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Gender',
                    labelText: 'Gender',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: civilstatuscontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Civil Status',
                    labelText: 'Civil Status',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: birthdatecontroller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Birth date',
                    labelText: 'Birthdate',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 10,
                ),
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
                          name: namecontroller.text,
                          email: emailcontroller.text,
                          password: passwordcontroller.text,
                          confirmpassword: confirmpasswordcontroller.text,
                          civistatus: civilstatuscontroller.text,
                          gender: gendercontroller.text,
                          birthdate: birthdatecontroller.text,
      
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 15,),
                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Login(birthdate: null, civistatus: null, confirmpassword: null, email: null, gender: null, name: null, password: null,),
      ),
    );
  },
  child: const Text(
    'LOGIN',
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
        ],
      ),
    );
  }
}
