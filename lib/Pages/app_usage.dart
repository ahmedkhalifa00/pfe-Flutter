import 'package:flutter/material.dart';

class MockUsageData {
  final String appName;
  final int minutesSpent;
  final String category;

  MockUsageData({
    required this.appName,
    required this.minutesSpent,
    required this.category,
  });
}

List<MockUsageData> mockUsageData = [
  MockUsageData(
      appName: "Facebook", minutesSpent: 120, category: "Social Media"),
  MockUsageData(
      appName: "Instagram", minutesSpent: 90, category: "Social Media"),
  MockUsageData(appName: "TikTok", minutesSpent: 150, category: "Social Media"),
  MockUsageData(appName: "Candy Crush", minutesSpent: 80, category: "Gaming"),
];

class UsageStatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kid\'s App Usage'),
      ),
      body: ListView.builder(
        itemCount: mockUsageData.length,
        itemBuilder: (context, index) {
          final usage = mockUsageData[index];
          return ListTile(
            leading: Icon(
              usage.category == "Social Media"
                  ? Icons.people
                  : Icons.videogame_asset,
              color:
                  usage.category == "Social Media" ? Colors.blue : Colors.green,
            ),
            title: Text(usage.appName),
            subtitle: Text('Time spent: ${usage.minutesSpent} minutes'),
          );
        },
      ),
    );
  }
}
