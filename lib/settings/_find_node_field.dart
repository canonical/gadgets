part of 'settings_view.dart';

class _FindNodeField extends ConsumerStatefulWidget {
  const _FindNodeField({Key? key}) : super(key: key);

  @override
  __FindNodeFieldState createState() => __FindNodeFieldState();
}

class __FindNodeFieldState extends ConsumerState<_FindNodeField> {
  late final controller = TextEditingController();
  late final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  static const border = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.watch(deviceReportControllerProvider);
    return TextField(
      controller: controller,
      cursorColor: Colors.blueGrey,
      autofocus: false,
      focusNode: focusNode,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0x331565c0),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintText: 'Search ... ( Case sensitive )',
        hintStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 16,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            _submitted(deviceReportController);
          },
          splashRadius: 20,
          tooltip: 'Search',
          icon: const Icon(Icons.search_rounded, color: Colors.blueGrey),
        ),
      ),
      onSubmitted: (_) {
        _submitted(deviceReportController);
      },
    );
  }

  void _submitted(DeviceReportController deviceReportController) {
    final deviceReportController = ref.read(deviceReportControllerProvider);
    final treeController =
        ref.read(deviceReportController.treeControllerProvider);

    treeController.whenData((treeController) {
      final id = controller.text.trim();
      final node = treeController.find(id);

      if (node == null) {
        showSnackBar(
          context,
          'No node was found with ID:  $id',
          duration: const Duration(seconds: 3),
        );
      } else {
        deviceReportController.toggleSelection(id, true);
        if (!treeController.isExpanded(id)) {
          treeController.expandUntil(node);
        }
        deviceReportController.scrollTo(ref, node);
      }
      controller.clear();
      focusNode.unfocus();
    });
  }
}
