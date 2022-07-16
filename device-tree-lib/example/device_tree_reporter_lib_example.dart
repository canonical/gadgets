import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:args/args.dart';

void main(List<String> argv) {
  final parser = ArgParser()..addCommand("report");
  ArgResults parsed = parser.parse(argv);

  if (parsed.command!.name == "report") {
    for (final path in parsed.rest) {
      var deviceTree = DeviceTreeParser.fromInxiReport(path);
      deviceTree.parse();
    }
  }
}
