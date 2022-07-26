abstract class ExecutionResult {
  final int exitCode;
  final String stdout;
  final String stderr;
  ExecutionResult(
      {required this.exitCode, required this.stdout, required this.stderr});
}
