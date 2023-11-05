import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_caster/home/category/PodcastCategory.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: PodcastCategoryTabs(),
          ),
          PodcastCategory()
        ],
      ),
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
          // color: MaterialStateColor.resolveWith((states) => Theme.of(context).colorScheme.error),
          selectedColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.08),
          backgroundColor:
              Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
          label: Text(
            'Test',
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
              color: _indexSelected.value == index
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onSurface,
            ),
          ),
          selected: _indexSelected.value == index,
          onSelected: (value) {
            setState(() {
              _indexSelected.value = index;
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
