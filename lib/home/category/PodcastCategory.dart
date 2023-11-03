import 'package:flutter/cupertino.dart';

class PodcastCategory extends StatelessWidget {
  const PodcastCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryPodcasts(),
        EpisodeList()
      ],
    );
  }
}

class CategoryPodcasts extends StatelessWidget {
  const CategoryPodcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class EpisodeList extends StatelessWidget {
  const EpisodeList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

