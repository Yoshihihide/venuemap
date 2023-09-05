import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class shopmap001 extends StatefulWidget {
  const shopmap001({super.key});

  @override
  State<shopmap001> createState() => _shopmap001State();
}

class _shopmap001State extends State<shopmap001> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            // タップされた座標を取得
            Offset tapPosition = details.localPosition;

            // 青1番号のお店
            // 画像内の特定の範囲を定義
            Rect targetRect = Rect.fromPoints(
              Offset(37, 74), // 範囲の左上座標
              Offset(62, 114 ), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            //showPopup(context);
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context,"青No1","お店１");
            }
            // 2番号のお店
            targetRect = Rect.fromPoints(
              Offset(76, 70), // 範囲の左上座標
              Offset(174, 111.2), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context,"青No2","お店2");
            }
          },
          child: Image.asset(
            'images/image_(1-1).png',
          ),
        ),
      ),
    );
  }

 void showPopup(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),         // タイトルを引数から取得
        content: Text(content),     // コンテンツを引数から取得
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // ダイアログを閉じる
            },
            child: Text("閉じる"),
          ),
        ],
      );
    },
  );
}
}
