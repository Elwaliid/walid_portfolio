part of '../main_section.dart';

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ScrollablePositionedList.builder(
      padding: EdgeInsets.zero,
      itemCount: Body.views.length,
      itemBuilder: (context, index) => Body.views[index],
      itemScrollController: scrollProvider.itemScrollController,
    );
  }
}
