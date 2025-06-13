import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final TextAlign? textAlign;
  final Function(String?) validator;
  final Function()? onTap;
  final bool? readOnly;
  final Color? fillColor;
  final bool? filled;
  final double? maxHeight;
  final void Function(String)? onFieldSubmitted;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? selectedItemStyle;

  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.textAlign,
    this.onTap,
    this.readOnly,
    this.fillColor,
    this.filled,
    this.prefixIcon,
    this.maxHeight,
    this.onFieldSubmitted,
    this.keyboardType,
    this.inputFormatters,
    this.selectedItemStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      controller: controller,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: isObscureText ?? false,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        isDense: true,
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(12),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(4),
        ),
        hintStyle: hintStyle,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: filled ?? false,
        fillColor: fillColor ?? Colors.transparent,
      ),
    );
  }
}
