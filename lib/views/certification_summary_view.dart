import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gadgets/certification_status_provider.dart';

class CertificationSummaryView extends ConsumerWidget {
  final CertificationStatus certificationStatus;
  @override
  const CertificationSummaryView({Key? key, required this.certificationStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: certificationStatus.headlineIcon(theme: Theme.of(context)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(certificationStatus.description,
                style: Theme.of(context).textTheme.subtitle1),
            const SizedBox(height: 3),
            Text(certificationStatus.detail,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 3),
            Text("Device last tested at Canonical labs on 6th July, 2022.",
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
      ],
    );
  }
}
