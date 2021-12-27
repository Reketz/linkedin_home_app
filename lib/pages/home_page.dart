import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_home_app/models/post_model.dart';
import 'package:linkedin_home_app/utils/constants.dart';
import 'package:linkedin_home_app/widgets/icon_widget.dart';
import 'package:linkedin_home_app/widgets/scroll_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _controller;
  List<PostModel> postsModel = posts;
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            CustomScrollView(
              controller: _controller,
              slivers: [
                SliverAppBar(
                  elevation: 0,
                  backgroundColor: Theme.of(context).backgroundColor,
                  leading: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent.fjdo4-1.fna.fbcdn.net/v/t1.6435-9/100105081_1992201017578102_5152160077276250112_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=Zq0MscNRyNIAX8ud48Q&_nc_ht=scontent.fjdo4-1.fna&oh=00_AT-900BYn53hejvGewSahFgJCylNO8hXOVAKKEKoUQmS5Q&oe=61E6D785'),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        FontAwesomeIcons.solidCommentDots,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                  title: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff212528),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.search,
                          size: 16,
                          color: Colors.grey[400],
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Pesquisar',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  floating: true,
                  pinned: false,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: Color(0xff302d28),
                    height: 8,
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  var postModel = postsModel[index];
                  return Column(
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundImage: NetworkImage(
                                                postModel.userImage),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                postModel.userName,
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 6,
                                              ),
                                              Text(
                                                postModel.title,
                                                style: TextStyle(
                                                    color: grey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '${postModel.postTime} • ',
                                                    style: TextStyle(
                                                        color: grey,
                                                        fontSize: 14),
                                                  ),
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .globeAmericas,
                                                    size: 14,
                                                    color: grey,
                                                  )
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(FontAwesomeIcons.ellipsisV),
                                        color: grey,
                                        iconSize: 15,
                                        splashRadius: 20,
                                        splashColor: Colors.black12,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Text(postModel.message,
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                            ),
                            postModel.postImage == null
                                ? SizedBox.shrink()
                                : Image.network(
                                    postModel.postImage!,
                                    fit: BoxFit.fill,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                            SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          postModel.numberReactions != null
                                              ? Container(
                                                  height: 16,
                                                  width: 16,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Colors.blue),
                                                  child: Icon(
                                                    FontAwesomeIcons
                                                        .solidThumbsUp,
                                                    size: 10,
                                                  ))
                                              : SizedBox.shrink(),
                                          SizedBox(
                                            width: 6,
                                          ),
                                          postModel.numberReactions != null
                                              ? Text(
                                                  '${postModel.numberReactions}')
                                              : SizedBox.shrink(),
                                        ],
                                      ),
                                      postModel.numberComments != null
                                          ? Text(
                                              '${postModel.numberComments} Comentários',
                                              style: TextStyle(
                                                  color: grey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500))
                                          : SizedBox.shrink()
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Divider(
                                    color: Colors.black12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      IconWidget(
                                        iconData: FontAwesomeIcons.thumbsUp,
                                        text: 'Gostei',
                                      ),
                                      IconWidget(
                                        iconData: FontAwesomeIcons.commentDots,
                                        text: 'Comentar',
                                      ),
                                      IconWidget(
                                        iconData: FontAwesomeIcons.share,
                                        text: 'Compartilhar',
                                      ),
                                      IconWidget(
                                        iconData:
                                            FontAwesomeIcons.solidPaperPlane,
                                        text: 'Enviar',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 8,
                        color: Colors.grey[800],
                      )
                    ],
                  );
                }, childCount: postsModel.length)),
              ],
            ),
            Center(
              child: Text('Minha rede'),
            ),
            Center(
              child: Text('Publicação'),
            ),
            Center(
              child: Text('Notificações'),
            ),
            Center(
              child: Container(
                child: Image.network(
                  'https://thumbs.gfycat.com/ImpishUntriedEyelashpitviper-mobile.jpg',
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ScrollWidget(
          scrollController: _controller,
          child: bottomNavigationBar(),
        ),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return Container(
      height: 62,
      child: TabBar(
        unselectedLabelColor: grey,
        labelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.black,
        indicator: UnderlineTabIndicator(
            insets: EdgeInsets.only(bottom: 54, left: 10, right: 10),
            borderSide: BorderSide(color: Colors.black, width: 3)),
        tabs: [
          TabWidget(icon: Icons.home, text: 'Início'),
          TabWidget(icon: Icons.people_alt_sharp, text: 'Minha rede'),
          TabWidget(icon: Icons.add_box_rounded, text: 'Publicação'),
          TabWidget(icon: Icons.notifications_sharp, text: 'Notificações'),
          TabWidget(icon: Icons.home_repair_service_rounded, text: 'Vagas'),
        ],
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const TabWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(text,
          style: TextStyle(
            fontSize: 8,
          )),
      iconMargin: EdgeInsets.zero,
      icon: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
