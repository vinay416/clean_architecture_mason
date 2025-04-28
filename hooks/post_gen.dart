import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final appDirectory = Directory(Directory.current.path);

  final bool isBloc = context.vars['is_bloc'];
  final bool tests = context.vars['test'];

  // Add dependencies
  await Future.wait([
    Process.run(
      'dart',
      ['pub', 'add', 'equatable'],
      workingDirectory: appDirectory.path,
    ),
    Process.run(
      'dart',
      ['pub', 'add', 'dartz'],
      workingDirectory: appDirectory.path,
    ),
    if (isBloc)
      Process.run(
        'dart',
        ['pub', 'add', 'flutter_bloc'],
        workingDirectory: appDirectory.path,
      ),
    if (tests) ...[
      Process.run(
        'dart',
        ['pub', 'add', 'mockito'],
        workingDirectory: appDirectory.path,
      ),
      Process.run(
        'dart',
        ['pub', 'add', 'dev:build_runner'],
        workingDirectory: appDirectory.path,
      )
    ],
    Process.run(
      'flutter',
      ['pub', 'get'],
      workingDirectory: appDirectory.path,
    )
  ]);

  // logResult(addResult);
}

void logResult(ProcessResult result) {
  if (result.stdout.toString().isNotEmpty) {
    print('STDOUT: ${result.stdout}');
  }
  if (result.stderr.toString().isNotEmpty) {
    print('STDERR: ${result.stderr}');
  }
}
