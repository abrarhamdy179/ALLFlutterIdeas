import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/RegistrationProvider.dart';
import '../Widgets/CustomField.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatelessWidget {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

   SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("SignUp Screen ")),),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width*0.90,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 20,),
                CustomField(controllerName: name,FieldName: "Name",iconName: Icons.person ),
                SizedBox(height: 40,),
                CustomField(controllerName: phone,FieldName: "Phone",iconName: Icons.email_outlined ),
                SizedBox(height: 40,),
                CustomField(controllerName: email,FieldName: "Email",iconName: Icons.email_outlined ),
                SizedBox(height: 40,),
                CustomField(controllerName: password,FieldName: "Password",iconName: Icons.password,isPassword: true, ),
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
                                await value.SignUpProvider(email: email.text, password: password.text,name: name.text,phone: phone.text);
                                if(value.registrationModel!.status == true)
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value.registrationModel!.message}"),backgroundColor: Colors.green,));
                                }
                                else
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${value.registrationModel!.message}"),backgroundColor: Colors.red,));
                                }
                              }
                            },
                            child: Text("SignUp")
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                }, child: Text("Already I have an account "))
              ],
            ),
          ),
        ),
      ),
    );

  }
}
