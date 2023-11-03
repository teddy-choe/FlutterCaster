import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_caster/home/category/PodcastCategory.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PodcastCategoryTabs(),
        ),
        PodcastCategory()
      ],
    );
  }
}

class PodcastCategoryTabs extends StatefulWidget {
  const PodcastCategoryTabs({super.key});

  @override
  State<StatefulWidget> createState() => _PodcastCategoryTabsState();
}

class _PodcastCategoryTabsState extends State<PodcastCategoryTabs>
    with RestorationMixin {
  final RestorableIntN _indexSelected = RestorableIntN(0);

  @override
  String? get restorationId => 'PodcastCategoryTabs';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_indexSelected, 'PodcastCategoryTabs');
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ChoiceChip(
          label: Text("test"),
          selected: _indexSelected.value == 0,
          onSelected: (value) {
            setState(() {
              _indexSelected.value = value ? 0 : -1;
            });
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 10,
      ),
    );
  }
}
