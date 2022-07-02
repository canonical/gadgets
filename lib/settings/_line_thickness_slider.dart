part of 'settings_view.dart';

class _LineThicknessSlider extends ConsumerStatefulWidget {
  const _LineThicknessSlider({Key? key}) : super(key: key);

  @override
  __LineThicknessSliderState createState() => __LineThicknessSliderState();
}

class __LineThicknessSliderState extends ConsumerState<_LineThicknessSlider> {
  var value = 2.0;

  void update(double val) => setState(() => value = val);

  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.watch(deviceReportControllerProvider);
    return _SettingsButtonBar(
      label: 'Line Thickness: $value',
      singleChildPadding: EdgeInsets.zero,
      children: [
        Slider(
          value: value,
          onChanged: update,
          max: 8,
          divisions: 7,
          min: 1,
          label: '$value',
          activeColor: kDarkBlue,
          onChangeEnd: (double lineThickness) =>
              _updateLineThickness(lineThickness, deviceReportController),
        ),
      ],
    );
  }

  void _updateLineThickness(
      double lineThickness, DeviceReportController deviceReportController) {
    deviceReportController.updateTheme(
      deviceReportController.treeViewTheme.value.copyWith(
        lineThickness: lineThickness,
      ),
    );
  }
}
