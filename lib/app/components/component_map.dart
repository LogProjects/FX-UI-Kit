// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:f_kit_x/app/components/elements/buttons.dart';
import 'package:f_kit_x/app/components/elements/calendar_components.dart';
import 'package:f_kit_x/app/components/elements/checkbox_components.dart';
import 'package:f_kit_x/app/components/elements/progress_components.dart';
import 'package:flutter/material.dart';

import 'elements/textfields_components.dart';

class UiElement {
  final String name;
  final Widget componentList;

  const UiElement({
    required this.name,
    required this.componentList,
  });
}

abstract class Elements {
  static const String BUTTON = "Button";
  static const String CHECKBOX = "Checkbox";
  static const String TEXT_FIELD = "TextField";
  static const String CALENDAR = "Calendar";
  static const String PROGRESS = "Progress";

  static List<UiElement> ComponentList = [
    const UiElement(name: BUTTON, componentList: Buttons()),
    const UiElement(name: CHECKBOX, componentList: CheckboxComponents()),
    UiElement(name: TEXT_FIELD, componentList: TextFieldComponents()),
    const UiElement(name: CALENDAR, componentList: CalendarComponents()),
    const UiElement(name: PROGRESS, componentList: ProgressComponents()),
    UiElement(name: "lightGreen", componentList: Container(color: Colors.lightGreen)),
    UiElement(name: "amberAccent", componentList: Container(color: Colors.amberAccent)),
    UiElement(name: "amberAccent", componentList: Container(color: Colors.amber)),
    UiElement(name: "redAccent", componentList: Container(color: Colors.redAccent)),
    UiElement(name: "red", componentList: Container(color: Colors.red)),
    UiElement(name: "indigoAccent", componentList: Container(color: Colors.indigoAccent)),
    UiElement(name: "indigo", componentList: Container(color: Colors.indigo)),
    UiElement(name: "orangeAccent", componentList: Container(color: Colors.orangeAccent)),
    UiElement(name: "orange", componentList: Container(color: Colors.orange)),
    // Colors are for test, temporary
  ];
}
