import 'package:flutter/material.dart';

import 'package:html/parser.dart' show parse;
import 'package:template/src/core/utils/spacing.dart';
import 'package:template/src/features/home/data/models/listing.dart';
import 'package:template/values/colors.dart';
import 'package:template/widgets/widgets/text.dart';
import 'package:url_launcher/url_launcher.dart';

/// A [StatelessWidget] that shows the item for specific list items.
class CardItem extends StatelessWidget {
  final ListItem item;

  const CardItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl(item.data!.url!);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: applySpacing(2)),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(8),
                offset: const Offset(0, 0),
                blurRadius: 3.0,
                spreadRadius: 0,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4), topRight: Radius.circular(4)),
              child: Container(
                width: double.infinity,
                height: applySpacing(1),
                color: AppColors.yellow,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: applySpacing(2),
                right: applySpacing(2),
                bottom: applySpacing(2),
                top: applySpacing(1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: _parseHtmlString(item.data!.title),
                    fontWeight: FontWeight.w700,
                    fontSize: applySpacing(1.75),
                  ),
                  SizedBox(height: applySpacing(1)),
                  item.data!.selftext_html != null
                      ? AppText(
                          text: _parseHtmlString(item.data!.selftext_html),
                          fontWeight: FontWeight.w400,
                          fontSize: applySpacing(1.75),
                          maxLine: 3,
                          overflow: TextOverflow.ellipsis,
                        )
                      : const SizedBox.shrink()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _parseHtmlString(String? htmlString) {
    final document = parse(htmlString);
    final String parsedString =
        parse(document.body!.text).documentElement!.text;

    return parsedString;
  }

  void _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) throw 'Could not launch $url';
  }
}
