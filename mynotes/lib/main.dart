import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
	late final TextEditingController _email;
	late final TextEditingController _password;

	@override
  void initState() {
	_email = TextEditingController();
	_password = TextEditingController();
    super.initState();
  }


	@override
  void dispose() {
	_email.dispose();
	_password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Register'),
        ),
      body: Column(
        children: [
			TextField(
				controller: _email,
			),
			TextField(
				controller: _password,
			),
			TextButton (
				onPressed: () async {
				},
				child: const Text('register'),
				),
        ],
      ),
    );
  }
}