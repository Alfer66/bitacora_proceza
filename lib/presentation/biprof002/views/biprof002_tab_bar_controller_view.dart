import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

/*
class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}
*/

class Biprof002TabBarControllerView extends StatelessWidget {
  const Biprof002TabBarControllerView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Desplegar war'),
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                text: 'Proceza',
                icon: Icon(Icons.flight),
              ),
              Tab(
                text: 'Vacio1',
                icon: Icon(Icons.luggage),
              ),
              Tab(
                text: 'Vacio2',
                icon: Icon(Icons.explore),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTabBar('Flights'),
            NestedTabBar('Vacio1'),
            NestedTabBar('Vacio2'),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Pruebas'),
            Tab(text: 'Implementacion'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(child: Text('${widget.outerTab}: Overview tab')),
              ),
              Card(
                margin: const EdgeInsets.all(16.0),
                child: Center(
                    child: Text('${widget.outerTab}: Specifications tab')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
