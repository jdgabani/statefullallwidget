import 'package:flutter/material.dart';

class CommonTextFiled extends StatefulWidget {
  CommonTextFiled(
      {Key? key,
        required this.obscure,
        this.keyborad,
        this.hint,
        this.prefixicon})
      : super(key: key);

  final obscure;
  final keyborad;
  final hint;
  final prefixicon;

  @override
  State<CommonTextFiled> createState() => _CommonTextFiledState();
}

class _CommonTextFiledState extends State<CommonTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: widget.obscure,
        keyboardType: widget.keyborad,
        decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.prefixicon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            ),
    );
    }
}