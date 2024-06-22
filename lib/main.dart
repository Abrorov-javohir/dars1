import 'package:dars1/widgets/sliver_header_delegate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: Text("Order Details"),
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp",
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 200,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      title: Image.network(
                          "https://as2.ftcdn.net/v2/jpg/05/86/95/07/1000_F_586950744_W40Ysz0eGHwtC468ZMcfY3M3dvLsIGHE.jpg"),
                    );
                  },
                  childCount: 2,
                ),
              ),
            ),
            SliverPersistentHeader(
              floating: true,
              delegate: SliverHeaderDelegate(
                minHeight: 60.0,
                maxHeight: 60.0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Image.network(
                        "https://gratisography.com/wp-content/uploads/2024/01/gratisography-cyber-kitty-800x525.jpg"),
                  );
                },
                childCount: 10,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                minHeight: 60.0,
                maxHeight: 60.0,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Men's Fashion",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      title: Image.network(
                          "https://t3.ftcdn.net/jpg/07/61/66/26/360_F_761662688_PtKytZfox6XNk7bslR5ahhGswCJN5QBZ.jpg"),
                    );
                  },
                  childCount: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
