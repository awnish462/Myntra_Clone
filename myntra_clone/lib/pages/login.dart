import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:myntra_clone/widgets/theme.dart';
// import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myntra_clone/firebase_options.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
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
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
      // appBar: AppBar(title: Text('Myntra clone')),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        //loading screen while loading
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: TextField(
                      autocorrect: false,
                      enableSuggestions: false,
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Email Here'),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: _password,
                    decoration: const InputDecoration(
                        hintText: 'Enter Your Password Here'),
                  ),
                  Center(
                      child: TextButton(
                    onPressed: () async {
                      final email = _email.text;
                      final password = _password.text;

                      try {
                        final userCredential = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: password);
                        print(userCredential);
                      } on FirebaseAuthException catch (e) {
                        // print(e);
                        // print(e.code);
                        if (e.code == 'user-not-found') {
                          print('user not found');
                        } else if(e.code =='wrong-password') {
                          print('worng password');
                        }
                      }
                    },
                    child: const Text('Login'),
                  ))
                ],
              );
            default:
              return Text('Loading...');
          }
        },
      ),
    );
  }
}
