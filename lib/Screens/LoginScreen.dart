import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/RegistrationProvider.dart';
import '../Widgets/CustomField.dart';
import 'HomeScreen.dart';
import 'SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Login Screen ")),),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.90,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 20,),
                CustomField(controllerName: email,FieldName: "Email",iconName: Icons.email_outlined ),
                SizedBox(height: 40,),
                CustomField(controllerName: password,FieldName: "Password",iconName: Icons.password , isPassword: true,),
                SizedBox(height: 60,),
                Consumer<RegistrationProvider>(builder: (context, value, child) =>
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () async
                        {
                          if(formkey.currentState!.validate())
                            {
                              await value.LoginProvider(email: email.text, password: password.text);
                              if(value.registrationModel!.status == true)
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value.registrationModel!.message}"),backgroundColor: Colors.green,));
                                }
                              else
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value.registrationModel!.message}"),backgroundColor: Colors.red,));
                                }
                            }
                        },
                        child: Text("Login")
                    ),
                    SizedBox(height: 20,),
                  ],
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                }, child: Text("I do not have an account "))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
