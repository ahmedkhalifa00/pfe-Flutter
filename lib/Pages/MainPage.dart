import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/addkidoptions/add_kid_options.dart';
import 'package:flutterproject/Pages/map/add_home_location_option.dart';
import 'package:flutterproject/Pages/map/map.dart';
import 'package:flutterproject/Pages/map/movement_history_page.dart';
import 'package:flutterproject/Pages/phonecall_page.dart';
import 'package:flutterproject/Pages/settingsboard/settings_page.dart';
import 'package:flutterproject/Resources/routes_manager.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Example list of notifications
  final List<String> notifications = [
    "Kid entered the school zone",
    "Kid left home",
    "Kid's battery is low",
    "SOS Alert from kid",
  ];

/*    List<String> notifications = [];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startFetchingNotifications();
  }

  Future<List<String>> fetchNotifications() async {
    final response = await http.get(Uri.parse('https://your-backend.com/api/notifications'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((notification) => notification.toString()).toList();
    } else {
      throw Exception('Failed to load notifications');
    }
  }

  void _startFetchingNotifications() {
    _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
      List<String> newNotifications = await fetchNotifications();
      setState(() {
        notifications = newNotifications;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
 */

  void _showAddKidOptions() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height *
            0.5, // Adjust the height as needed
        child: AddKidOptions(),
      ),
    );
  }

  void _AddhomeLocationOptions() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => AddHomeLocationOption(),
    );
  }

  void _settingpage() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height *
            0.38, // Adjust the height as needed
        child: SettingsPage(),
      ),
    );
  }

  String? childPhoneNumber;

  void _addChildPhoneNumber() async {
    final selectedPhoneNumber = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddChildPhonePage()),
    );
    if (selectedPhoneNumber != null) {
      setState(() {
        childPhoneNumber = selectedPhoneNumber;
      });
    }
  }

  void _callChild() {
    if (childPhoneNumber != null) {
      _makePhoneCall('tel:$childPhoneNumber');
    } else {
      _addChildPhoneNumber();
    }
  }

  Future<void> _makePhoneCall(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url);
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Map view
          Positioned.fill(
            child: MapView(),
          ),
          // DraggableScrollableSheet for the bottom sheet
          DraggableScrollableSheet(
            initialChildSize: 0.2, // Initial size of the bottom sheet
            minChildSize: 0.1, // Minimum size of the bottom sheet
            maxChildSize: 0.7, // Maximum size of the bottom sheet
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 202, 226, 253),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      // Drag indicator
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      // Top row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.notifications_active,
                              size: 30,
                              color: Colors
                                  .blueAccent, // Changed to a suitable color
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, Routes.volumeNotification);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.add,
                              size: 50,
                              color:
                                  Colors.green, // Changed to a suitable color
                            ),
                            onPressed: _showAddKidOptions,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.location_on,
                              size: 30,
                              color: Colors.red, // Changed to a suitable color
                            ),
                            onPressed: _AddhomeLocationOptions,
                          ),
                        ],
                      ),
                      SizedBox(height: 5), // Space between rows
                      // Bottom row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.history,
                              size: 30,
                              color:
                                  Colors.orange, // Changed to a suitable color
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/movement-history');
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.phone,
                              size: 30,
                              color: Colors.blue, // Changed to a suitable color
                            ),
                            onPressed: _callChild,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.chat,
                              size: 30,
                              color:
                                  Colors.purple, // Changed to a suitable color
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.chat);
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.grey, // Changed to a suitable color
                            ),
                            onPressed: _settingpage,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(
                        height: 10,
                      ),
                      SizedBox(height: 20),
                      // Notifications list
/*           // Notifications list
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Notifications',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.notification_important, color: Colors.blueAccent),
                      title: Text(notifications[index]),
                      subtitle: Text('Just now'), // Replace with actual timestamp
                    );
                  },
                ),
              ],
            ),
          ), */

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Recent Notifications',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: notifications.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: Icon(Icons.notification_important,
                                      color: Colors.blueAccent),
                                  title: Text(notifications[index]),
                                  subtitle: Text(
                                      '2 hours ago'), // Placeholder for time
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
