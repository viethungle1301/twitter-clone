import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(250, 250, 250, 255),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            SliverAppBar(
              title: const Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/logo_user.png',
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                ),
              ],
              bottom: const TabBar(
                unselectedLabelColor: Colors.black54,
                indicatorColor: Colors.blue,
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Confirm'),
                  Tab(text: 'Mention'),
                ],
              ),
            ),
          ],
          body: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Notification available',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(20),
              Text(
                'When new notification found, they\'ll show up\nhere',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
