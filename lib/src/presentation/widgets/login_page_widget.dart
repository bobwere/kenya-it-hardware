import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kenya_it_hardware/common/constants/styles.dart';
import 'package:kenya_it_hardware/src/application/login_cubit/login_cubit.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_widgets/responsive_widgets.dart';
import 'package:smart_form/smart_form.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {Key key,
      @required this.hintText,
      @required this.onChanged,
      this.obscureText = false,
      @required this.validationErrorText})
      : super(key: key);

  final String hintText;
  final bool obscureText;
  final Function(String value) onChanged;
  final String validationErrorText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsResponsive.symmetric(horizontal: 20),
      child: SmartTextFormField(
        autovalidate: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
          labelText: hintText,
          isDense: true,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10, vertical: 15), // Added this
        ),
        validator: RequiredValidator(errorText: validationErrorText),
        onChanged: (value) => onChanged(value),
      ),
    );
  }
}

class SubmittingOverlay extends StatelessWidget {
  final bool isSubmitting;

  const SubmittingOverlay({
    Key key,
    @required this.isSubmitting,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSubmitting,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color:
            isSubmitting ? Colors.black.withOpacity(0.2) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
