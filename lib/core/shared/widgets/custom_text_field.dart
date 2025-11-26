import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/app_sizes.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.title,
    this.validator,
    this.maxLines,
    this.readOnly,
    this.isEnabled,
    this.controller,
    this.keyboardType,
    this.icon,
    this.focusNode,
    this.onDone,
    this.style,
    this.isPasswordField = false,
    this.onTap,
    this.hint,
    this.length,
    this.border,
    this.enabledBorder,
    this.errorBorder,
    this.focusedBorder,
    this.inputFormatters,
    this.prefix,
    this.textAlign,
    this.label,
    this.width,
    this.suffix,
    this.prefixText,
    this.hintStyle,
    this.fillColor,
  });
  final TextEditingController? controller;
  final Widget? prefix;
  final String? hint;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Function(String?)? onChanged;
  final Function(String?)? onDone;
  final List<TextInputFormatter>? inputFormatters;
  final String? title;
  final TextInputType? keyboardType;
  final IconData? icon;
  final Function? onTap;
  final TextAlign? textAlign;
  final bool? readOnly;
  final bool? isEnabled;
  final bool? isPasswordField;
  final String? Function(String?)? validator;
  final int? length;
  final int? maxLines;
  final InputBorder? errorBorder;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final FocusNode? focusNode;
  final String? label;
  final double? width;
  final Widget? suffix;
  final String? prefixText;
  final Color? fillColor;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return SizedBox(
      // height: 56.h,
      width: widget.width ?? double.infinity,
      child: TextFormField(
        scrollPadding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        inputFormatters: widget.inputFormatters,
        textAlign: widget.textAlign ?? TextAlign.start,
        onChanged: widget.onChanged,
        controller: widget.controller,
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onFieldSubmitted: widget.onDone != null
            ? widget.onDone as Function(String)
            : null,
        enabled: widget.isEnabled ?? true,
        //   keyboardType: widget.keyboardType,
        style:
            widget.style ??
            theme.bodyMediumSecondary.copyWith(color: theme.black1E),
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.length,
        onTap: widget.onTap != null ? widget.onTap as Function() : null,
        readOnly: widget.readOnly ?? false,
        validator: widget.validator,
        obscureText: widget.isPasswordField!
            ? _showPassword
                  ? true
                  : false
            : false,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          fillColor: widget.fillColor ?? theme.white,
          filled: true,
          hintStyle:
              widget.hintStyle ?? theme.bodySmall.copyWith(color: theme.grey99),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixText: widget.prefixText,
          labelText: widget.label,
          prefix: widget.prefix,
          prefixStyle: theme.bodyMedium.copyWith(color: theme.black1E),
          hintText: widget.hint,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 12,
          ),
          suffixIcon: widget.isPasswordField!
              ? IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () =>
                      setState(() => _showPassword = !_showPassword),
                )
              : widget.suffix,
          errorMaxLines: 1,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: theme.error,
              style: BorderStyle.solid,
            ),
          ),
          border:
              widget.border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius8),
                borderSide: BorderSide(color: theme.grey),
              ),
          enabledBorder:
              widget.enabledBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius8),
                borderSide: BorderSide(color: theme.grey),
              ),
          focusedBorder:
              widget.focusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius8),
                borderSide: BorderSide(color: theme.grey),
              ),
          disabledBorder:
              widget.border ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(radius8),
                borderSide: BorderSide(
                  color: theme.black1E.withValues(alpha: 0.4),
                ),
              ),
        ),
      ),
    );
  }
}
