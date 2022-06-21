part of 'settings_view.dart';

class _IndentationSlider extends ConsumerStatefulWidget {
  const _IndentationSlider({Key? key}) : super(key: key);

  @override
  __IndentationSliderState createState() => __IndentationSliderState();
}

class __IndentationSliderState extends ConsumerState<_IndentationSlider> {
  var value = 40.0;

  void update(double val) => setState(() => value = val);

  @override
  Widget build(BuildContext context) {
    final appController = ref.read(appControllerProvider);
    return _SettingsButtonBar(
      label: 'Node indent increment: $value',
      singleChildPadding: EdgeInsets.zero,
      children: [
        Slider(
          value: value,
          onChanged: update,
          max: 64.0,
          divisions: 7,
          min: 8.0,
          label: '$value',
          activeColor: kDarkBlue,
          onChangeEnd: (double indent) => _updateIndent(indent, appController),
        ),
      ],
    );
  }

  void _updateIndent(double indent, AppController appController) {
    appController.updateTheme(
      appController.treeViewTheme.value.copyWith(
        indent: indent,
      ),
    );
  }
}
