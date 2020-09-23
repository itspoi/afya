import 'package:aunty_rafiki/models/tracker.dart';
import 'package:aunty_rafiki/views/widgets/cards/tracker_card.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackerScreen extends StatelessWidget {
  static Color _defaultColor = Colors.grey[300];
  final LineStyle _lineStyle = LineStyle(color: _defaultColor, thickness: 2);
  final IndicatorStyle _indicatorStyle = IndicatorStyle(padding: EdgeInsets.symmetric(vertical: 6),color: _defaultColor, indicatorXY: 0.05);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: trackers.length,
        itemBuilder: (BuildContext context, int index) {
          return TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.05,
            isFirst: index == 0 ? true : false,
            isLast: index == trackers.length - 1 ? true : false,
            endChild: TrackerCard(
              trackerModel: trackers[index],
            ),
            afterLineStyle: _lineStyle,
            indicatorStyle: _indicatorStyle,
          );
        });
  }
}
