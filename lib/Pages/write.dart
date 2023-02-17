import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class Write extends StatelessWidget {
  const Write({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        QuillToolbar.basic(controller: _controller),
        Expanded(
          child: Container(
            child: QuillEditor.basic(
              readOnly: false, controller: , // true for view only mode
            ),
          ),
        )
      ],
)
    );
  }
}