import 'package:flutter/material.dart';
import 'package:volunteersapp/theme/app_theme.dart';
import 'package:volunteersapp/widgets/formtextfield.dart';

class FormTextFields extends StatefulWidget {
  final List<FormTextField> listFormTextFields;

  const FormTextFields({super.key, required this.listFormTextFields});

  @override
  State<FormTextFields> createState() => _FormTextFields();
}

class _FormTextFields extends State<FormTextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 4.0, right: 8.0, bottom: 4.0),
      child: Container(
        child: Column(
          children: <Widget>[
            for (FormTextField item in widget.listFormTextFields) ...[
              item,
            ],
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  var errorCount = 0;
                  for (FormTextField item in widget.listFormTextFields) {
                    if (!item.formKey.currentState!.validate()) {
                      errorCount++;
                    }
                  }
                  if (errorCount == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Data Error')),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppTheme.currentTheme.buttonTheme.colorScheme!.background),
                  foregroundColor: MaterialStateProperty.all<Color>(AppTheme.currentTheme.buttonTheme.colorScheme!.secondary),
                ),
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
