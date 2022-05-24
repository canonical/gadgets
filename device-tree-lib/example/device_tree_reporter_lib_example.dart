import 'package:device_tree_lib/all.dart';
import 'package:args/args.dart';

void main(List<String> argv) {
  final parser = ArgParser()..addCommand("report");
  ArgResults parsed = parser.parse(argv);

  if (parsed.command!.name == "report") {
    for (var path in parsed.rest) {
      var deviceTree = DeviceTreeParser.fromInxiReport(path);
      deviceTree.parse();
    }
  }
}
