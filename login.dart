import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auth_firebase/services/auth.dart';

class Login extends StatefulWidget {
  final VoidCallback onClickedLogin;

  const Login({super.key, required this.onClickedLogin});

  @override
  State<Login> createState() => _SignInState();
}

class _SignInState extends State<Login> {
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
              onPressed: Login,
              icon: Icon(Icons.lock_open, size: 32),
              label: Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 15),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  text: "No account?",
                  children: [
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = widget.onClickedLogin,
                        text: 'Sign UP',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).colorScheme.secondary))
                  ]),
            ),
            Container(
              color: const Color(0xffeeee00),
              alignment: Alignment.center,
              child: const Text('Fixed Height Content'),
            ),
          ]),
    );
  }
}
  //     Future Login()async{
  //       showDialog(context: context, barrierDissmissible:false,
  //       builder: (context)=>Center(child: CircularProgressIndicator,()),
  //       );

  //       try{
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text.trim(), password: passwordController.text.trim(),);
  //   }on FirebaseAuthException catch (e){
  //     print(e);
  //   }
  //   navigatorKey.currentState!.popUntil((route)=>route,isFirst);
  // }

    



//     Scaffold(
//       backgroundColor: Color.fromARGB(255, 255, 129, 87),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 71, 35, 22),
//         elevation: 0.0,
//         title: Text('Sign in to coffee shop'),
//         actions: [
//           ElevatedButton.icon(
//               onPressed: () {
//                 widget.toggleView();
//               },
//               icon: Icon(Icons.person),
//               label: Text('Login'))
//         ],
//       ),
//       body: Container(
//           padding: EdgeInsets.symmetric(vertical: 20.2, horizontal: 50.4),

//           // ),
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
//                   {}
//                 },
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                   child: Text('Sign in'),
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
//                     if (_formKey.currentState!.validate()) {
//                       dynamic result = await _auth.loginInWithEmailAndPassword(
//                           email, password);
//                       if (result == null) {
//                         setState(
//                             () => error = 'could not sign in with password');
//                       }

//                       // print('valid');

//                       // dynamic result = await _auth.registerWithEmailAndPassword(
//                       //     email, password);
//                       // if (result == null) {
//                       //   setState(() => error = 'please input a valid email');
//                       // }
//                     }
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
