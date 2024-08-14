import 'package:flutter/material.dart';
import 'package:pocket_grizzly/router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://wslbjjphsgrtdkojxhie.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndzbGJqanBoc2dydGRrb2p4aGllIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI4NDQwNjYsImV4cCI6MjAzODQyMDA2Nn0.wvwN58Egn7lFQOiaatAh5r5JkkM0_Tbfu5BtyH7JGvU',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'My Go Router App',
    );
  }
}
