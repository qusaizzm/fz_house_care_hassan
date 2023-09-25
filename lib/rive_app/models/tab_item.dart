import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class TabItem {
  TabItem({
    this.stateMachine = "",
    this.artboard = "",
    this.status,
  });

  UniqueKey? id = UniqueKey();
  String stateMachine;
  String artboard;
  late SMIBool? status;

  static List<TabItem> tabItemsList = [
    TabItem(stateMachine: "HOME_interactivity", artboard: "HOME"),
    TabItem(stateMachine: "USER_Interactivity", artboard: "USER"),
    TabItem(stateMachine: "CHAT_Interactivity", artboard: "CHAT"),
    TabItem(stateMachine: "SETTINGS_Interactivity", artboard: "SETTINGS"),
    TabItem(stateMachine: "BELL_Interactivity", artboard: "BELL"),
    // TabItem(stateMachine: "RELOAD_Interactivity", artboard: "RELOAD"),
    // TabItem(stateMachine: "AUDIO_Interactivity", artboard: "AUDIO"),
    // TabItem(stateMachine: "SEARCH_Interactivity", artboard: "SEARCH"),
    // TabItem(stateMachine: "TIMER_Interactivity", artboard: "TIMER"),
    // TabItem(stateMachine: "STAR_Interactivity", artboard: "STAR"),
  ];
}
