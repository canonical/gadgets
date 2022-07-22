import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TestListScreen extends ConsumerWidget {
  const TestListScreen({super.key, required String cid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("TEST LIST");
  }
}
