import 'package:flutter/material.dart';
import 'package:template/src/core/utils/spacing.dart';
import 'package:template/values/colors.dart';



class TabData {
  final Widget child;
  final String label;

  const TabData({
    required this.label,
    required this.child,
  });
}

/// Generates [TabView] according to [TabData].

class TabView extends StatelessWidget {
  final List<TabData> tabs;

  const TabView({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildTabBar(),
          _buildTabContent(),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      labelColor: Colors.black,
      unselectedLabelColor: AppColors.tabDeselected,
      labelPadding: EdgeInsets.symmetric(vertical: applySpacing(2)),
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: const TextStyle(fontWeight: FontWeight.w700),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),
      indicatorWeight: 2,
      indicatorColor: AppColors.blurple,
      tabs: tabs.map((tab) => Text(tab.label)).toList(),
    );
  }

  Widget _buildTabContent() {
    return Expanded(
      child: TabBarView(
        children: tabs.map((tab) => tab.child).toList(),
      ),
    );
  }
}
