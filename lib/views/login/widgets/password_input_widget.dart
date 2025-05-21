import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode ;
  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                        decoration: InputDecoration(
                          
                         
                          prefixIcon: const Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      );
  }
}