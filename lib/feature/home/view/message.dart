import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/constants/assets_constants.dart';
import 'package:twitter_clone_app/models/twitter.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Message',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(AssetsImages.logoUser),
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black87,
            height: 0.1,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: TabBarView(
          children: [
            ListView.separated(
              itemCount: twitters.length,
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black87,
                thickness: 0.1,
              ),
              itemBuilder: (context, index) => Row(
                children: [
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 30)),
                  Image.asset(
                    AssetsImages.logoUser,
                    width: 40,
                    height: 40,
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          twitters[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '@${twitters[index].username}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(),
            Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(
          Icons.forward_to_inbox_outlined,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
