import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class FeedbackDialog extends StatefulWidget {
  final TreeNode node;
  const FeedbackDialog({Key? key, required this.node}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<FeedbackDialog> createState() => _FeedbackDialogState(node: node);
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final TreeNode node;
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey(debugLabel: "Feedback");

  _FeedbackDialogState({required this.node});

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          Row(
            children: [
              Text("Report problem with ${node.id}",
                  style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
          const SizedBox(height: 16),
          Form(
            key: _formKey,
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Enter your feedback here',
                filled: true,
              ),
              maxLines: 10,
              maxLength: 4096,
              textInputAction: TextInputAction.done,
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Please enter a value';
                }
                return null;
              },
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text('Submit'),
          onPressed: () async {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Feedback posted")));
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
