import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:unicons/unicons.dart';

import 'package:gadgets/providers/certification_status_provider.dart';

class CertificationSummaryView extends ConsumerWidget {
  final CertificationSummary certificationSummary;

  @override
  const CertificationSummaryView({Key? key, required this.certificationSummary})
      : super(key: key);

  void _onReviewSubmitted(RatingDialogResponse response) {}

  RatingDialog _ratingDialog(BuildContext context) => RatingDialog(
      title: const Text(
        "How is Ubuntu for you?",
        textAlign: TextAlign.center,
      ),
      submitButtonText: "Submit",
      starColor: Theme.of(context).primaryColor,
      starSize: 32,
      showCloseButton: true,
      commentHint:
          "Tell us how Ubuntu is working on your \n${certificationSummary.deviceTree.machineSummary?.oemInfo?.version ?? certificationSummary.deviceTree.machineSummary?.uefi.motherboardModel}.\n\nHow can we help?",
      onSubmitted: _onReviewSubmitted);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: certificationSummary.status
              .headlineIcon(theme: Theme.of(context)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(certificationSummary.status.description,
                    style: Theme.of(context).textTheme.subtitle1),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => _ratingDialog(context));
                    },
                    icon: Transform.scale(
                        scaleX: -1,
                        child: Icon(UniconsLine.comment_add,
                            color: Theme.of(context).primaryColorLight)))
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Text(certificationSummary.status.detail,
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(width: 6),
                certificationSummary.status.icon(theme: Theme.of(context)),
              ],
            ),
            const SizedBox(height: 3),
            Text("Device last tested at Canonical labs on 6th July, 2022.",
                style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
      ],
    );
  }
}
