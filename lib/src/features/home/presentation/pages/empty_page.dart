import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/core/utils/service_locator.dart';

import '../bloc/listing_bloc.dart';
import '../bloc/listing_event.dart';

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
            onPressed: () {
              BlocProvider.of<ListingBloc>(context)
                  .add(GetSubredditData(type: endpoint));
            },
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 15),
          Text(message, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
