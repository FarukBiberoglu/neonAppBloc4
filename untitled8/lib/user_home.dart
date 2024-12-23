import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled8/model.dart';
import 'package:untitled8/use_cubit.dart';

class UserHomeSceem extends StatelessWidget {
  const UserHomeSceem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Home Screen'),
      ),
      body: Center(
        child: BlocBuilder<UserCubit,UserModel?>(
          builder: (context, state) {
            if(state !=null ){
              return Card(
                child:ListTile(
                  title: Text( state.name),
                  subtitle: Text(state.sifre),

                ),
              );
            }else {
              return Center();
            }
          },
        ),
      ),
    );
  }
}
