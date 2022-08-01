import 'package:radio_group_library/models/radio_selectable_item.dart';

class ExmRadioSelectableItem with RadioSelectableItem {
  final int id;
  @override
  String title;

  ExmRadioSelectableItem({required this.id, required this.title});
}
