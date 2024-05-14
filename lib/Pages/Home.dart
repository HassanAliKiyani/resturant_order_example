import 'package:flutter/material.dart';
import 'package:resturant_order_example/components/drawer_component.dart';
import 'package:resturant_order_example/components/sliverAppBar_component.dart';
import 'package:resturant_order_example/widget/coverDescription_widget.dart';
import 'package:resturant_order_example/widget/location_widget.dart';
import 'package:resturant_order_example/widget/tabBar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const ComponentDrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  ComponentSliverAppBar(
                    title: TabBarWidget(
                      tabController: tabController,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Divider(
                            indent: 25,
                            endIndent: 25,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          MyLocationWidget(),
                          const CoverDescriptionWidget()
                        ],
                      ),
                    ),
                  )
                ],
            body: TabBarView(
              controller: tabController,
              children: [
                Container(color: Colors.blue,),
                
                Container(color: Colors.amber,),
                
                Container(color: Colors.red,),
              ]),
        )
      ),
    );
  }
}
