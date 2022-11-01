import 'package:flutter/material.dart';
import 'package:auth_firebase/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({super.key, required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // final AuthService _auth = AuthService();
  // final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // String email = '';
  // String password = '';
  // String error = '';
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Color.fromARGB(255, 126, 0, 0),
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
          SizedBox(height: 40),
          // <Widget>[
          TextField(
            controller: emailController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "Email:"),
          ),
          SizedBox(height: 4),
          TextField(
            controller: passwordController,
            cursorColor: Colors.white,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(labelText: "Password:"),
            obscureText: true,
          ),
          SizedBox(height: 15),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
            onPressed: Register,
            icon: Icon(Icons.lock_open, size: 32),
            label: Text(
              'Login',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            color: Color.fromARGB(119, 101, 101, 98),
            alignment: Alignment.center,
            child: const Text('Fixed Height Content'),
          ),
        ],
      ),
    );
  }
}
    

// class register extends StatefulWidget {
//   final Function toggleView;
//   register({super.key, required this.toggleView});

//   @override
//   State<register> createState() => _registerState();
// }

// class _registerState extends State<register> {
//   final AuthService _auth = AuthService();
//   // final _formkey = Globalkey<FormState>();
//   final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

//   String email = '';
//   String password = '';
//   String error = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 129, 87),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 71, 35, 22),
//         elevation: 0.0,
//         title: Text('Sign up to coffee shop'),
//         actions: [
//           ElevatedButton.icon(
//             onPressed: () {
//               widget.toggleView();
//             },
//             icon: Icon(Icons.person),
//             label: Text('Sign In'),
//           ),
//         ],
//       ),
//       body: Container(
//           padding: EdgeInsets.symmetric(vertical: 20.2, horizontal: 50.4),
//           child: Form(
//             key: _formKey,
//             child: Column(children: <Widget>[
//               SizedBox(height: 20.0),
//               TextFormField(
//                 validator: (val) => val.isEmpty ? 'Enter an email' : null,
//                 onChanged: (val) {
//                   setState(() => email = val);
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 obscureText: true,
//                 validator: (val) =>
//                     val.length < 6 ? 'Enter a password 6+ chars long' : null,
//                 onChanged: (val) {
//                   setState(() => password = val);
//                 },
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                   child: Text('Register'),
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.green,
//                     // side: BorderSide(color: Colors.yellow, width: 5),
//                     textStyle: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 25,
//                         fontStyle: FontStyle.normal),
//                     shape: BeveledRectangleBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10))),
//                     shadowColor: Colors.lightBlue,
//                   ),
//                   onPressed: () async {
//                     // print(email);
//                     // print(password);
//                     if (_formKey.currentState!.validate()) {
//                       dynamic result = await _auth.registerWithEmailAndPassword(
//                           email, password);
//                       if (result == null) {
//                         setState(() => error = 'please input a valid email');
//                       }
//                     }

//                     // print(email);
//                     // print(password);
//                   }),
//               SizedBox(height: 12.0),
//               Text(
//                 error,
//                 style: TextStyle(color: Colors.red, fontSize: 14.0),
//               )
//             ]),
//           )),
//     );
//   }
// }
