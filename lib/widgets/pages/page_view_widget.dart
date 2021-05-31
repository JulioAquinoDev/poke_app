import 'package:flutter/material.dart';
import 'package:poke_app/utils/consts.dart';
import 'package:poke_app/widgets/home/home_page.dart';
import 'package:poke_app/widgets/search/search_widget.dart';
import '../details/details_widget.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        HomePage(),
        DetailsWidget(),
        SearchWidget(),
      ],
    );
  }
}
