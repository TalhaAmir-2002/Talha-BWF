import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/app_colors.dart';

class CommonTextField extends StatelessWidget {
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffix;
  final String? label;
  final TextEditingController? controller;
  final bool? autofocus;
  final String? errorText;
  final String? validate;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatter;
  final String? text;
  final bool obSecureText;
  final Color? focusBorderColor;
  final double? focusWidth;
  final Color? borderColor;
  final double? width;
  final dynamic onTap;
  final dynamic validator;
  final dynamic keyboardType;
  final dynamic onChanged;
  final dynamic onSubmit;
  final int? maxLine;
  final Color? fillColor;
  final bool? readOnly;
  final double? contentTopPadding;

  const CommonTextField({
    Key? key,
    this.hint,
    this.text,
    this.inputFormatter,
    this.prefixIcon,
    this.controller,
    this.suffix,
    this.label,
    this.errorText,
    this.validate,
    this.focusWidth,
    this.focusBorderColor,
    this.width,
    this.borderColor,
    this.obSecureText = false,
    this.onTap,
    this.focusNode,
    this.validator,
    this.keyboardType,
    this.maxLine,
    this.fillColor,
    this.readOnly,
    this.onChanged,
    this.onSubmit,
    this.autofocus,
    this.contentTopPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   text ?? '',
        // ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          onTap: onTap,
          autofocus: autofocus ?? false,
          keyboardType: keyboardType,
          inputFormatters: inputFormatter,
          onChanged: onChanged,
          onFieldSubmitted: onSubmit,
          readOnly: readOnly ?? false,
          focusNode: focusNode,


          textInputAction: TextInputAction.go,
          
          obscureText: obSecureText,
          
          cursorColor: AppColors.kBlueColor,
          textCapitalization: TextCapitalization.none,
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            fillColor: fillColor ?? Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none
               
                ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                width: 1,
                color: AppColors.kBlueColor,
              ),
            ),
            contentPadding:
                EdgeInsets.only(left: 10, top: contentTopPadding ?? 2),
            prefixIcon: prefixIcon,
            suffixIcon: suffix,
            hintText: hint,
            labelText: label,
          ),
        ),
      ],
    );
  }
}
