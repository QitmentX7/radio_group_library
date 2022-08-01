import 'package:flutter/material.dart';

import '../models/exm_radio_selectable_item.dart';
import '../widgets/radio_group_form.dart';
import '../models/radio_selectable_item.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final _formKey1 = GlobalKey<FormState>();

  List<RadioSelectableItem> values = [];
  RadioSelectableItem? selected;
  final TextEditingController _msgTextVal = TextEditingController();

  @override
  initState() {
    super.initState();
    values = <ExmRadioSelectableItem>[
      ExmRadioSelectableItem(id: 1, title: 'Man'),
      ExmRadioSelectableItem(id: 2, title: 'Woman'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RadioGroupForm Example'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 20),
            child: Text(
              'Please select your gender',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Column(
            children: [
              Form(
                key: _formKey1,
                child: RadioGroupForm(
                  elements: values,
                  onSelectedCallback: (RadioSelectableItem? selected) {
                    setState(() {
                      this.selected = selected;
                    });
                  },
                  errorMessage: 'You did not select your gender!',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: TextFormField(
                  controller: _msgTextVal,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0x99CCEDFF),
                    ),
                    onPressed: () {
                      if (_formKey1.currentState!.validate()) {
                        if (selected?.title != null) {
                          _msgTextVal.text =
                              'Your selected ${selected!.title} gender. Is it correct?';
                        }
                      }
                    },
                    child: const Text('Continue')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
