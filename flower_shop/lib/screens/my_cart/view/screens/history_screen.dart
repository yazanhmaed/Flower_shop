import 'package:flutter/material.dart';

import '../widgets/history_widget.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 22,
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return const HistoryWidget();
      },
    );
  }
}
