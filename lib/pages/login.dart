import 'package:flutter/material.dart';
import 'package:fulgach/utilities/route.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String name = "";
  bool changeButton = false;

  final _keyForm = GlobalKey<FormState>();
 
  moveToHome(BuildContext context) async {
    if(_keyForm.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.Home);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
     child: SingleChildScrollView(
       child: Form(
         key: _keyForm,
         child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/undraw_Waiting__for_you_ldha.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if(value!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        else if(value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: changeButton?Colors.green:Colors.green,
                      borderRadius: BorderRadius.circular(changeButton?50:8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton?50:150,
                          height: 50,
                          alignment: Alignment.center,
                          child:changeButton?const Icon(Icons.done, color: Colors.white,) :
                           const Text(
                            "login",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   child: const Text("login"),
                    //   style: TextButton.styleFrom(minimumSize: const Size(150, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoute.Home);
                    //   }, 
                    // ),
                  ],
                ),
              ),
            ],
          ),
       ),
     ),
    );
  }
}