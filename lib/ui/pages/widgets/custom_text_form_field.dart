import 'package:flutter/material.dart';
import 'package:flycation/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String hintText;
  final bool obsecureText;

  const CustomTextFormField({
    super.key,
    this.controller,
    required this.title,
    required this.hintText,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          const SizedBox(height: 6),
          TextFormField(
            controller: controller,
            cursorColor: kBlackColor,
            obscureText: obsecureText,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
