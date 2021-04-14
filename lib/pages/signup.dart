// import 'package:flutter/material.dart';

// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
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
//             Text('Signup',
//             style: Theme.of(context).textTheme.headline3,),
//             const SizedBox(height:20.0),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'email'
//               ),
//             ),
//             const SizedBox(height: 10.0,),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'name'
//               ),
//             ),
//             const SizedBox(height: 10.0,),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'password'
//               ),
//             ),
//             const SizedBox(height: 10.0,),
//             Center(
//               child: ElevatedButton(
                
//                 child: Text('Signup'),
//                 onPressed: (){
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }