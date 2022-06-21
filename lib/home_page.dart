import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'settings/settings_view.dart';
import 'device_tree_view.dart';

const String url = '''
https://github.com/mbaumgartenbr/flutter_tree_view/tree/main/example
''';

void _launchExampleSourceCode() {
  canLaunch(url).then((bool canLaunch) {
    if (canLaunch) launch(url);
  });
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _isSmallDisplay = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: const _ResponsiveBody(),
      endDrawer: const Drawer(child: SettingsView()),
    );
  }
}

class _ResponsiveBody extends StatelessWidget {
  const _ResponsiveBody({Key? key}) : super(key: key);

/*
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return const CustomTreeView();
    }
    return Row(
      children: const [
        Flexible(flex: 2, child: CustomTreeView()),
        VerticalDivider(
          width: 2,
          thickness: 2,
          color: Colors.black26,
        ),
        Expanded(child: SettingsView()),
      ],
    );
  }
  */
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return const DeviceTreeView();
    }
    return Row(
      children: const [
        Flexible(flex: 2, child: DeviceTreeView()),
      ],
    );
  }
}
