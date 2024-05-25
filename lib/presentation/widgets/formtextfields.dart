import 'package:flutter/material.dart';
import 'package:volunteersapp/presentation/widgets/formtextfield.dart';

class FomTextFields extends StatefulWidget {
  final List<FormTextField> listFormTextFields;

  const FomTextFields({super.key, required this.listFormTextFields});

  @override
  State<FomTextFields> createState() => _FomTextFields();
}

class _FomTextFields extends State<FomTextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                  if (!item.formKey!.currentState!.validate()) {
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
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
