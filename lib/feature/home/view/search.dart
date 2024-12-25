import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/models/twitter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/logo_user.png',
            height: 30,
            width: 30,
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search..',
            hintStyle: const TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: const Color.fromARGB(238, 238, 238, 255),
          ),
        ),
        actions: const [
          Icon(
            Icons.settings_outlined,
            color: Colors.black,
            size: 40,
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: TabBarView(
          children: [
            ListView.separated(
              itemBuilder: (context, index) => Row(
                children: [
                  const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5, vertical: 40)),
                  Image.asset(
                    'assets/images/logo_user.png',
                    width: 50,
                    height: 50,
                  ),
                  const Gap(20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              twitters[index].name,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Gap(3),
                            SvgPicture.asset('assets/svgs/verified.svg'),
                          ],
                        ),
                        Text(
                          '@${twitters[index].username}',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black45,
                thickness: 0.1,
              ),
              itemCount: twitters.length,
            ),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
