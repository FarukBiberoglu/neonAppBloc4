import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/model.dart';
import 'package:untitled8/swcCubit.dart';
import 'package:untitled8/use_cubit.dart';
import 'package:untitled8/user_home.dart';
import 'package:untitled8/widget.dart';

class LogScreen extends StatefulWidget {
  const LogScreen({super.key});

  @override
  State<LogScreen> createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {

  var nameController = TextEditingController();
  var sifreController = TextEditingController();
  bool deger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
           staticTextField(controller: nameController, label: 'İsim'),
            staticTextField(controller: sifreController, label: 'Şifre'),
            
            BlocBuilder<SwcCubit,bool>
              (builder:(context,state){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    state ? Text('Admin') : Text('Person'),
                    Switch(
                      value: state,
                      onChanged: (value) {
                        context.read<SwcCubit>().durumDegistir();
                      },
                    )
                  ],
                );
            } ),
            ElevatedButton(onPressed: () {


              if(nameController.text.isNotEmpty && sifreController.text.isNotEmpty){
                var userModel = UserModel(name: nameController.text, sifre: sifreController.text);
                context.read<UserCubit>().userKaydet(userModel);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHomeSceem()));
              }else {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UserHomeSceem()));

              }
            }, child: Text('Kaydet'))

          ],
        ),
      ),
    );
  }
}
