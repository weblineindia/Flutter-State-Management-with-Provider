import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_consumer_reusable_sample/provider/my_provider.dart';
import 'package:provider_consumer_reusable_sample/screen/tabs/category_tab.dart';
import 'package:provider_consumer_reusable_sample/screen/tabs/home_tab.dart';
import 'package:provider_consumer_reusable_sample/screen/tabs/notification_tab.dart';
import 'package:provider_consumer_reusable_sample/screen/tabs/profile_tab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final tabs = [
    const HomeTab(),
    const CategoryTab(),
    const NotificationTab(),
    const ProfileTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider-Consumer Sample"),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)))
        ],
      ),
      body: Consumer<MyProvider>(
        builder: (context, value, child) => tabs[value.selectedTab],
      ),
      bottomNavigationBar: Consumer<MyProvider>(
        builder: (context, provider, child) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white38,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: provider.selectedTab,
          selectedItemColor: Colors.white,
          onTap: (value) {
            provider.selectedPage(value);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
