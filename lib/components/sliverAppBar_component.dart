import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentSliverAppBar extends StatefulWidget {
  final Widget child;
  final Widget title;

  const ComponentSliverAppBar(
      {super.key, required this.child, required this.title});

  @override
  State<ComponentSliverAppBar> createState() => _ComponentSliverAppBarState();
}

class _ComponentSliverAppBarState extends State<ComponentSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      title: const Text("Your Resturant"),
      flexibleSpace: FlexibleSpaceBar(
        background: widget.child,
        title: widget.title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}
