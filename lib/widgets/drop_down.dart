import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ModelsDrownDownWidget extends StatefulWidget {
  const ModelsDrownDownWidget({super.key});

  @override
  State<ModelsDrownDownWidget> createState() => _ModelsDrownDownWidgetState();
}

class _ModelsDrownDownWidgetState extends State<ModelsDrownDownWidget> {
  String? currentModel;

  bool isFirstLoading = true;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: DropdownButton(
        dropdownColor: scaffoldBackgroundColor,
        iconEnabledColor: Colors.white,
        items: getModelsItem,
        value: currentModel,
        onChanged: (value) {
          setState(() {
            currentModel = value.toString();
          });
        },
      ),
    );
  }
}
