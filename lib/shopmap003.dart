import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class shopmap003 extends StatefulWidget {
  const shopmap003({super.key});

  @override
  State<shopmap003> createState() => _shopmap003State();
}

class _shopmap003State extends State<shopmap003> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            // タップされた座標を取得
            Offset tapPosition = details.localPosition;

            // 赤１番号のお店
            // 画像内の特定の範囲を定義
            Rect targetRect = Rect.fromPoints(
              Offset(27.8, 2), // 範囲の左上座標
              Offset(89.2, 47.2), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            //showPopup(context);
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "赤No1", "お店１");
            }
            // 赤2番号のお店
            targetRect = Rect.fromPoints(
              Offset(95.5, 2), // 範囲の左上座標
              Offset(136, 44), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "赤No2", "お店2");
            }
            // 赤3番号のお店
            targetRect = Rect.fromPoints(
              Offset(95.5, 51), // 範囲の左上座標
              Offset(136, 101.2), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "赤No3", "お店3");
            }
             // 赤4番号のお店
            targetRect = Rect.fromPoints(
              Offset(139.5, 2), // 範囲の左上座標
              Offset(172, 99.5), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "赤No4", "お店4");
            }
          },
          child: Image.asset(
            'images/image_(3-1).png',
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
          title: Text(title), // タイトルを引数から取得
          content: Text(content), // コンテンツを引数から取得
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
