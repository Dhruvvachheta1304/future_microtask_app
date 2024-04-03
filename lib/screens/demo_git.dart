import 'package:flutter/material.dart';

class DemoGit extends StatefulWidget {
  const DemoGit({super.key});

  @override
  State<DemoGit> createState() => _DemoGitState();
}

class _DemoGitState extends State<DemoGit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Git response'),
      ],),
    );
  }
}
