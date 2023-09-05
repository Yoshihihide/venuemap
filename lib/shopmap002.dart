import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class shopmap002 extends StatefulWidget {
  const shopmap002({super.key});

  @override
  State<shopmap002> createState() => _shopmap002State();
}

class _shopmap002State extends State<shopmap002> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTapDown: (TapDownDetails details) {
            // タップされた座標を取得
            Offset tapPosition = details.localPosition;

            // 青3番号のお店
            // 画像内の特定の範囲を定義
            Rect targetRect = Rect.fromPoints(
              Offset(34, 18), // 範囲の左上座標
              Offset(75, 48), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            //showPopup(context);
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "青No3", "お店３");
            }
            // 青4番号のお店
            targetRect = Rect.fromPoints(
              Offset(83, 0), // 範囲の左上座標
              Offset(130, 48), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "青No4", "お店4");
            }
            // 青5番号のお店
            // 画像内の特定の範囲を定義
            targetRect = Rect.fromPoints(
              Offset(142, 0), // 範囲の左上座標
              Offset(174, 50), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            //showPopup(context);
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "青No5", "お店５");
            }
            // 黄１番号のお店
            targetRect = Rect.fromPoints(
              Offset(73, 55.5), // 範囲の左上座標
              Offset(96.2, 78.5), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "黄No1", "お店１");
            }
            // 黄２番号のお店
            targetRect = Rect.fromPoints(
              Offset(101, 59.2), // 範囲の左上座標
              Offset(130, 85), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "黄No2", "お店２");
            }
              targetRect = Rect.fromPoints(
              Offset(70, 88), // 範囲の左上座標
              Offset(129, 107), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "黄No2", "お店２");
            }
            // 黄３番号のお店
            targetRect = Rect.fromPoints(
              Offset(140, 55), // 範囲の左上座標
              Offset(173, 108), // 範囲の右下座標
            );
            // タップが範囲内にあるか判定
            if (targetRect.contains(tapPosition)) {
              // ここにタップされた際の処理を記述
              showPopup(context, "黄No3", "お店３");
            }
          },
          child: Image.asset(
            'images/image_(2-1).png',
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
