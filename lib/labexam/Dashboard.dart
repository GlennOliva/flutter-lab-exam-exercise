import 'package:flutter/material.dart';
import 'package:flutter_prac2/labexam/Login.dart';

class Dashboard extends StatelessWidget {
 

   Dashboard({
    Key? key,
    required this.password,
    required this.confirmpassword,
    required this.name,
    required this.email,
    required this.birthdate, 
    required this.civistatus,
    required this.gender,
  }) : super(key: key);

   final String name;
  final String email;
  final String password;
  final String confirmpassword;
  final String birthdate;
  final String civistatus;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body:  Center(
        child: Column(
          children: [
            const SizedBox(
              width: 150,
              height: 170,
              child: CircleAvatar(
                      backgroundImage: AssetImage('images/naruto.jpg'),
                    ),
            ),
            Text('name: $name'),
            Text('Email: $email'),
           const Padding(
             padding: EdgeInsets.all(10.0),
             child: Row(
              children: [
                SizedBox(height: 30,),
                Text('Personal Data' , style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold
                ),),
              ],
             ),
           ),
           Card(
            child: ListTile(
              leading: Icon(Icons.male),
              title: Text(gender),
              subtitle: Text('Gender'),
              
            ),
           ),
            Card(
            child: ListTile(
              leading: Icon(Icons.start),
              title: Text(civistatus),
              subtitle: Text('Civil Status'),
              
            ),
           ),
            Card(
            child: ListTile(
              leading: Icon(Icons.date_range_outlined),
              title: Text(birthdate),
              subtitle: Text('Birthdate'),
              
            ),
           ),
           ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.amber,
    minimumSize: const Size.fromHeight(50),
  ),
  onPressed: () {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Login(birthdate: null, civistatus: null, confirmpassword: null, gender: 
        null, name: null, email: null, password: null,
         
        ),
      ),
    );
  },
  child: const Text(
    'LOGOUT',
    style: TextStyle(fontSize: 18, color: Colors.white),
  ),
),

          ],
        ),
      ),
      // Your dashboard content goes here.
    );
  }
}
