// import 'dart:html';

// import 'package:flutter/cupertino.dart';

// import 'app_constants.dart';

// class AuthState extends ChangeNotifier{
//   Client client = Client();
//   Account account;

//   AuthState() {
//     _init();
//   }

// _init() {
//   client.setEndpoint(AppConstants.endpoint).
//   setProject(AppConstants.projectId);
//   account = Account(client);
//   _checkIsLoggedIn();
//   }
//   _checkIsLoggedIn() async {
//     try{
//       var res = await account.get();
//       print(res);
//     }catch(e){
//       print(e);
//     }
//   }
// login(String email, String password) async {
//   try {
//     var result = await account.createSession(email:null,password:null);
//     print(result);
//   }catch(e) {
//    print(e);
//   }
// }

// }