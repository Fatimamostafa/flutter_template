import 'package:flutter/material.dart';
import 'package:template/src/core/utils/spacing.dart';
import 'package:template/src/features/home/presentation/pages/list_page.dart';
import 'package:template/src/features/home/presentation/widgets/tab_view.dart';
import 'package:template/values/constants.dart';
import 'package:template/widgets/widgets/text.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: AppText(
            text: Constants.subReddit,
            color: Colors.black,
            fontSize: applySpacing(2),
            fontWeight: FontWeight.w700,
          ),
          centerTitle: false,
          elevation: 0.2,
        ),
        body: _buildTab());
  }

  Widget _buildTab() {
    return const TabView(
      tabs: [
        TabData(
          label: Constants.tabHot,
          child: ListPage(endpoint: Constants.endpointHot),
        ),
        TabData(
          label: Constants.tabNew,
          child: ListPage(endpoint: Constants.endpointNew),
        ),
        TabData(
          label: Constants.tabRising,
          child: ListPage(endpoint: Constants.endpointRising),
        ),
      ],
    );
  }
}
