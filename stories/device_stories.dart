import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inspector_gadget/app_controller.dart';
import 'package:inspector_gadget/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appControllerProvider = Provider((_) => AppController());

Widget custom_tree_view() => CustomTreeView();
