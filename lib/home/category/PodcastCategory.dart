import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PodcastCategory extends StatelessWidget {
  const PodcastCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CategoryPodcasts(), EpisodeList()],
    );
  }
}

class CategoryPodcasts extends StatelessWidget {
  const CategoryPodcasts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 128,
                width: 128,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/test.jpg'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 12),
              Text(
                "test",
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodySmall?.fontSize,
                    color: Colors.white),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 24,
        ),
      ),
    );
  }
}

class EpisodeList extends StatelessWidget {
  const EpisodeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Title"),
          subtitle: Text("subTitle"),
          trailing: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/test.jpg'),
                    fit: BoxFit.cover)),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 10,
      ),
    ));
  }
}
