// import 'package:diaadia/notifiers/auth_state.dart';
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController _email = TextEditingController();
//   TextEditingController _password = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Controle do Negócio'),
//       ),
//       body: Center(
//         child: ListView(
//           shrinkWrap: true,
//           padding: const EdgeInsets.all(16.0),
//           children: <Widget>[
//             Text('Login',
//             style: Theme.of(context).textTheme.headline3,),
//             const SizedBox(height:20.0),
//             TextField(
//               controller: _email,
//               decoration: InputDecoration(
//                 hintText: 'email'
//               ),
//             ),
//             const SizedBox(height: 10.0,),
//             TextField(
//               controller: _password,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'password'
//               ),
//             ),
//             const SizedBox(height: 10.0,),
//             Center(
//               child: ElevatedButton(
                
//                 child: Text('Login'),
//                 onPressed: (){
//                   AuthState state = 
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }