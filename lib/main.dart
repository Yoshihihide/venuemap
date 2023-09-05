import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'shopdetails.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  // valueを設定
}
enum Menu { second, third }

class _MyHomePageState extends State<MyHomePage> {
   double mediaWidth = 80;
  double scaleWidthFactor = 1;

  double minWidth = 40;
  double maxWidth = 160;

  void popupMenuSelected(Menu selectedMenu) {
    switch (selectedMenu) {
      case Menu.second:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return ShopDeaills();
          }),
        );
        break;
      case Menu.third:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return MyApp();
          }),
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            // プルダウンメニューを表示
          PopupMenuButton<Menu>(
            onSelected: popupMenuSelected,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
              const PopupMenuItem<Menu>(
                value: Menu.second,
                child: Text('ショップ詳細'),
              ),
          ],
        ),
          ]
        ),
        /*body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: buildPlaid(),
                  //child:
                  //    PhotoView(imageProvider: AssetImage('images/sample.png')),
                ),
              ),
              //child: PhotoView(imageProvider: AssetImage('images/sample.png')),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: Container(
                width: double.infinity,
                height: double.infinity,
              ),
              onScaleUpdate: (ScaleUpdateDetails data) {
                if (mediaWidth * data.scale > minWidth &&
                    mediaWidth * data.scale < maxWidth) {
                  scaleWidthFactor = data.scale;
                  setState(() {});
                }
              },
              onScaleEnd: (ScaleEndDetails data) {
                mediaWidth = mediaWidth * scaleWidthFactor;
              },
            ),
            /*  PhotoView(
              imageProvider: AssetImage('images/sample.png'),
              //imageProvider: AssetImage('images/sample.png'),
            ),*/
            //ピン画像
          //  Positioned(child: Image.asset('images/sample.png'))
          ],
        )*/
        body: Center(
        child: PhotoView(
          imageProvider: AssetImage('images/images.jpeg'),
        ),
      ),
        );
  }

  Widget buildPlaid() {
    List<Widget> _listColumn = [];
    for (int j = 0; j < 20; j++) {
      List<Widget> _listRow = [];
      for (int i = 0; i < 20; i++) {
        _listRow.add(Container(
          width: mediaWidth * scaleWidthFactor,
          height: mediaWidth * scaleWidthFactor,
          color: (i % 2 == j % 2) ? Colors.black : Colors.white,
        ));
      }
      _listColumn.add(Row(
        children: _listRow,
      ));
    }

    return Container(
      child: Column(
        children: _listColumn,
      ),
    );
  }
}
