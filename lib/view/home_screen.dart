import 'package:coffee_app/view/widgets/custom_text.dart';
import 'package:coffee_app/view/widgets/item_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/Bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(.4),
                        size: 40,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(.4),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "It's a Great for Coffee",
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontsize: 40,
                      letterSpacing: 1,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusColor: Colors.white,
                            hintText: "Find your Coffee",
                            hintStyle:
                                TextStyle(color: Colors.white.withOpacity(.5)),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TabBar(
                      dividerHeight: 1,
                      labelColor: Color(0xFFE57734),
                      unselectedLabelColor: Colors.white.withOpacity(.5),
                      indicator: UnderlineTabIndicator(
                          insets: EdgeInsets.symmetric(horizontal: 0),
                          borderSide:
                              BorderSide(width: 3, color: Color(0xFFE57734))),
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withOpacity(.5),
                      ),
                      isScrollable: true,
                      controller: _tabController,
                      tabs: [
                        Tab(
                          text: "Hot Coffee",
                        ),
                        Tab(
                          text: "Hot Coffee",
                        ),
                        Tab(
                          text: "Hot Coffee",
                        ),
                        Tab(
                          text: "Hot Coffee",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ItemWidget(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
