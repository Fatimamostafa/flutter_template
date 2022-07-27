import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/core/utils/service_locator.dart';
import 'package:template/src/core/utils/spacing.dart';
import 'package:template/src/features/home/data/models/listing.dart';
import 'package:template/src/features/home/presentation/bloc/listing_bloc.dart';
import 'package:template/src/features/home/presentation/bloc/listing_event.dart';
import 'package:template/src/features/home/presentation/bloc/listing_state.dart';
import 'package:template/src/features/home/presentation/pages/empty_page.dart';
import 'package:template/src/features/home/presentation/widgets/app_widgets.dart';
import 'package:template/src/features/home/presentation/widgets/card_item.dart';
import 'package:template/values/colors.dart';
import 'package:template/values/constants.dart';
import 'package:template/widgets/widgets/loading_indicator.dart';

class SubredditListView extends StatefulWidget {
  final String endpoint;

  const SubredditListView({Key? key, required this.endpoint}) : super(key: key);

  @override
  State<SubredditListView> createState() => _SubredditListViewState();
}

class _SubredditListViewState extends State<SubredditListView> {
  final List<ListItem> _items = [];
  final ScrollController _scrollController = ScrollController();
  bool _isLoadedAll = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocConsumer<ListingBloc, ListingState>(
        listener: (context, state) {
          if (state is Loading) {
            AppWidgets.showSnackBar(Constants.loading);
          } else if (state is Loaded && state.listingData.children!.isEmpty) {
            AppWidgets.showSnackBar(Constants.empty);
            _isLoadedAll = true;
          } else if (state is Error) {
            AppWidgets.showSnackBar(state.message);
          }
          return;
        },
        builder: (context, state) {
          if (state is InitialState || state is Loading && _items.isEmpty) {
            return const LoadingIndicator();
          } else if (state is Loaded) {
            _items.addAll(state.listingData.children!.toList());
          } else if (state is Error && _items.isEmpty) {
            return EmptyPage(
              endpoint: widget.endpoint,
              message: state.message,
            );
          }

          return ListView.separated(
            controller: _scrollController
              ..addListener(() {
                if (_scrollController.offset ==
                        _scrollController.position.maxScrollExtent &&
                    !_isLoadedAll) {
                  BlocProvider.of<ListingBloc>(context).add(GetSubredditData(
                      type: widget.endpoint,
                      after: _items[_items.length - 1].data!.name));
                }
              }),
            itemBuilder: (context, index) => Column(
              children: [
                SizedBox(height: applySpacing(index == 0 ? 2 : 0)),
                CardItem(item: _items[index]),
              ],
            ),
            separatorBuilder: (context, index) =>
                SizedBox(height: applySpacing(2)),
            itemCount: _items.length,
          );
        },
      ),
    );
  }
}
