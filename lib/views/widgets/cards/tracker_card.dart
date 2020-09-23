import 'package:aunty_rafiki/models/tracker.dart';
import 'package:flutter/material.dart';

class TrackerCard extends StatelessWidget {
  final TrackerModel trackerModel;

  TrackerCard({@required this.trackerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Container(
            child: Column(
              children: [
                ListTile(
                  title: Text(trackerModel.title),
                  subtitle: Text(trackerModel.subtitle),
                ),
                Image.network("https://theivfindia.com/wp-content/uploads/2020/01/031.jpg"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                  child: Text(
                    trackerModel.supportText,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          clipBehavior: Clip.antiAlias),
      margin: EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 12),
    );
  }
}
