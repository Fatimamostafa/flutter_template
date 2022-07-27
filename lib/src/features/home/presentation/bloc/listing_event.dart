abstract class ListingEvent {
  const ListingEvent();
}

class GetSubredditData extends ListingEvent {
  final String type;
  final String? after;

  const GetSubredditData({
    required this.type,
    this.after,
  });
}
