// import 'package:flutter/material.dart';
// import 'package:pocket_grizzly/routes/home_page.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   User? _user;
//   final SupabaseClient supabase = Supabase.instance.client;

//   void initState() {
//     _getAuth();
//     super.initState();
//   }

//   Future<void> _getAuth() async {
//     setState(() {
//       _user = supabase.auth.currentUser;
//     });
//     supabase.auth.onAuthStateChange.listen((event) {
//       setState(() {
//         _user = event.session?.user;
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _user == null ? const SignupPage() : const HomePage();
//   }
// }
