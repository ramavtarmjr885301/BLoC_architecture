import 'package:bloc_project/BLoC/login_bloc.dart';
import 'package:bloc_project/Utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginStates>(
      buildWhen: (current, previous)=>current.email !=previous.email,
      
      builder: (context, State){
        print("EmailBuild");
        return TextFormField(
                        focusNode: emailFocusNode,
                        decoration: InputDecoration(
                      
                          prefixIcon: const Icon(Icons.email_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onChanged: (value){
                          context.read<LoginBloc>().add(EmailChanged(email: value));
                        },
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!Validations.emailValidator(value)) {
                            return 'Enter a valid email';
                          }
                          return null;
                        },
                      );
      }
    
    );
  }
}