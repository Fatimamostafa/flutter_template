import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/core/utils/service_locator.dart';
import 'package:template/src/features/home/presentation/bloc/listing_bloc.dart';
import 'package:template/src/features/home/presentation/bloc/listing_event.dart';
import 'package:template/src/features/home/presentation/widgets/list_view.dart';

class ListPage extends StatelessWidget {
  final String endpoint;

  const ListPage({Key? key, required this.endpoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ListingBloc>()..add(GetSubredditData(type: endpoint)),
      child: SubredditListView(endpoint: endpoint),
    );
  }
}
