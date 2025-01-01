import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:twitter_clone_app/constants/assets_constants.dart';
import 'package:twitter_clone_app/models/twitter.dart';
import 'package:numeral/ext.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            SliverAppBar(
              title: Image.asset(
                AssetsImages.logoX,
                width: 30,
                height: 30,
              ),
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AssetsImages.logoUser,
                ),
              ),
              bottom: const TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.blue,
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                  Tab(text: 'For you'),
                  Tab(text: 'Following'),
                  Tab(text: 'Subscribed'),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              ListView.separated(
                itemBuilder: (context, index) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    Image.asset(
                      AssetsImages.logoUser,
                      height: 50,
                      width: 50,
                    ),
                    const Gap(10),
                    Expanded(
                      flex: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                twitters[index].name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Gap(2),
                              SvgPicture.asset(AssetsSvgs.verifiedIcon),
                              const Gap(10),
                              Text(
                                '@${twitters[index].username} -',
                                style: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                twitters[index].time,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            twitters[index].content,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                AssetsSvgs.commentIcon,
                                color: Colors.black54,
                              ),
                              const Gap(3),
                              Text(
                                twitters[index].comments.numeral(),
                                style: const TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              const Gap(15),
                              SvgPicture.asset(
                                AssetsSvgs.retweetIcon,
                                color: Colors.black54,
                              ),
                              const Gap(3),
                              Text(
                                twitters[index].shares.numeral(),
                                style: const TextStyle(color: Colors.black54),
                              ),
                              const Gap(15),
                              SvgPicture.asset(
                                AssetsSvgs.likeOutlinedIcon,
                                color: Colors.black54,
                              ),
                              Text(
                                twitters[index].likes.numeral(),
                                style: const TextStyle(color: Colors.black54),
                              ),
                              const Gap(15),
                              SvgPicture.asset(
                                AssetsSvgs.viewsIcon,
                                color: Colors.black54,
                              ),
                              Text(
                                twitters[index].views.numeral(),
                                style: const TextStyle(color: Colors.black54),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.bookmark_border),
                                color: Colors.black45,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.file_upload_outlined),
                                color: Colors.black45,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Column(),
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
