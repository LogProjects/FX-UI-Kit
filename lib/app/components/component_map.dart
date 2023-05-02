// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:f_kit_x/app/components/elements/buttons.dart';
import 'package:f_kit_x/app/components/elements/checkboxes.dart';
import 'package:flutter/material.dart';

class UiElement {
  final String name;
  final Widget componentList;

  const UiElement({
    required this.name,
    required this.componentList,
  });
}

abstract class Elements {
  static const String BUTTONS = "Buttons";
  static const String CHECKBOXES = "Checkboxes";

  static List<UiElement> ComponentList = [
    const UiElement(name: BUTTONS, componentList: Buttons()),
    const UiElement(name: CHECKBOXES, componentList: Checkboxes()),
    UiElement(name: "lightGreenAccent", componentList: Container(color: Colors.lightGreenAccent)),
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
