import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  final String endpoint;
  final String message;

  const EmptyPage({
    Key? key,
    required this.endpoint,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 15),
          Text(message, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
