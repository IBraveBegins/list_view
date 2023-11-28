import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListViewPage(title: 'ListView'),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key, required this.title});

  final String title;

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var images = [
    'http://imgoss.cnu.cc/2309/25/b647fe7336cd3b69990e9fc05e152045.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/01fc1d6b8357354788eb43386af14d0c.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/1237361284943fbf9e6d274de6c4b9ca.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/ffb3bf8384b6309892cfbb84983aa18c.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/408e7f80b9813cd197f150e975399435.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/d368845a03543372b67e319842b0c7ac.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/c2f407f317b3358bb7db7f4fca4854ff.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/699a6b2ba78b39ba88ec1aae137bb119.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/7cbf27cef2593318a594a9513343d9b8.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/b2208c8973603200b8f9320ff1ef657c.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/7bc684c88a223f179261eaae8cfd11f9.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/e2282038515f3a76874d75e6072f171c.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/4f6bc7ed5b3d3ba7b5d880b111100eb0.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/0c4c675fd5e23608b053ac06250c0d5a.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/554c3cf424213502ad2c586f3d87831a.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/0eae4aab82b936249fa2d9d5d54665a0.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/ab59b810f22a343093fd7cdeaa328a85.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/2633c5f0250c35dc8a2f50d81778a61e.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/fc7fc147469f31d9aab7caeb5aee6c8d.jpg?x-oss-process=style/content',
    'http://imgoss.cnu.cc/2309/25/e29817036abe3af5bbcd850e20b1e950.jpg?x-oss-process=style/content',
  ];

  //只加载屏幕可见的数据和渲染widget
  get _optimalListView => ListView.builder(
      itemCount: 1000000,
      itemBuilder: (BuildContext context, int index) => _itemWidget(index));

  //一次加载所有的数据和渲染widget
  get _listView => ListView(
        children: List.generate(1000000, (index) => _itemWidget(index)),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _optimalListView,
    );
  }

  _itemWidget(int index) {
    var url = images[index % images.length];
    return Card(
      child: Column(
        children: [Text("item: $index"), Image.network(url)],
      ),
    );
  }
}
