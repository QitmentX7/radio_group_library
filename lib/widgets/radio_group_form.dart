import 'package:flutter/material.dart';
import 'package:radio_group_library/models/radio_selectable_item.dart';

typedef OnRadioItemSelectedCallback = void Function(
    RadioSelectableItem? selected);

class RadioGroupForm extends StatefulWidget {
  final List<RadioSelectableItem> elements;
  final OnRadioItemSelectedCallback onSelectedCallback;
  final String errorMessage;

  const RadioGroupForm(
      {Key? key,
      required this.elements,
      required this.onSelectedCallback,
      this.errorMessage = 'Please choose one option'})
      : super(key: key);

  @override
  State<RadioGroupForm> createState() => _RadioGroupFormState();
}

class _RadioGroupFormState extends State<RadioGroupForm> {
  RadioSelectableItem? selectedValue;

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (FormFieldState<bool> state) {
        return Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: widget.elements.map(
                    (value) {
                      return RadioListTile<RadioSelectableItem>(
                        value: value,
                        groupValue: selectedValue,
                        title: Text(
                          value.title,
                          style: const TextStyle(fontSize: 18),
                        ),
                        onChanged: (value) {
                          setState(() => selectedValue = value!);
                          widget.onSelectedCallback(value);
                        },
                      );
                    },
                  ).toList(),
                ),
                state.hasError
                    ? Padding(
                        padding: const EdgeInsets.only(left: 28.0),
                        child: Text(
                          state.errorText!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      )
                    : Container(),
              ],
            ));
      },
      validator: (val) {
        if (selectedValue == null) {
          return widget.errorMessage;
        }
        return null;
      },
    );
  }
}
