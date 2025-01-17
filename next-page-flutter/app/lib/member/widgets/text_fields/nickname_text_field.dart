import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utility/check_validate.dart';
import '../forms/sign_up_form.dart';

class NicknameTextField extends StatefulWidget {
  const NicknameTextField({Key? key, required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  State<NicknameTextField> createState() => _NicknameTextFieldState();
}

class _NicknameTextFieldState extends State<NicknameTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    SignUpFormState? form = context.findAncestorStateOfType<SignUpFormState>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("닉네임"),
        SizedBox(height: size.height * 0.01,),
        TextFormField(
          controller: widget.controller,
          validator: (value) => CheckValidate().validateNickname(value!),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (text) { form?.nicknamePass = false; },
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_circle),
            hintText: "Enter nickname",
           ),
        )
      ],
    );

  }

}