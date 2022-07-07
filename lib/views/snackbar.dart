import 'package:flutter/material.dart';

Color snackBarBackgroundColor(ThemeData theme) =>
    theme.brightness == Brightness.light
        ? Colors.grey.shade300
        : Colors.grey.shade800;

void showSnackBar(
  BuildContext context, {
  required String message,
  String detail = "",
  Icon? icon,
  Duration duration = const Duration(seconds: 10),
}) {
  final messageText =
      Text(message, style: Theme.of(context).textTheme.titleSmall);
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        backgroundColor: snackBarBackgroundColor(Theme.of(context)),
        content: Row(
          children: [
            icon ?? const SizedBox(height: 10),
            const SizedBox(width: 10),
            detail != ""
                ? SizedBox(
                    height: 38,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          messageText,
                          const SizedBox(
                            height: 2,
                          ),
                          Text(detail,
                              style: Theme.of(context).textTheme.bodySmall)
                        ]),
                  )
                : messageText,
            Expanded(
                child: Flex(
              direction: Axis.horizontal,
            )),
            OutlinedButton(onPressed: () {}, child: const Text("Learn more"))
          ],
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        duration: duration,
      ),
    );
}
