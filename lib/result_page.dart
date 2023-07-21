import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/constants.dart';
import 'package:yasam_beklentisi/user_data.dart';
import 'hesap.dart';

class ResultPage extends StatelessWidget {
  final UserData userData;
  ResultPage(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sonuç Sayfası'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Center(
              child: Text(
                'Otalama yaşam süreniz:''${Hesap(userData).hesaplama()?.round().toString()}''yıldır',
                style: kMetinStili,
              ),
            ),
          ),
          Expanded(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 50,
                maxHeight: 50,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'GERİ DÖN',
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: Colors.white,
                    onPrimary: Colors.black54,
                    padding: EdgeInsets.all(15),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
