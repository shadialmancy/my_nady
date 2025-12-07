import 'package:flutter/material.dart';
import 'widgets.dart';

class CommentsSection extends StatefulWidget {
  const CommentsSection({super.key});

  @override
  State<CommentsSection> createState() => _CommentsSectionState();
}

class _CommentsSectionState extends State<CommentsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(children: List.generate(5, (index) => const CommentCard()));
  }
}
