import 'package:yasam_beklentisi/user_data.dart';

class Hesap{
  UserData userData;
  Hesap(this.userData);

  double? hesaplama(){

    double? sonuc;

    sonuc=90 + userData.gunler! - userData.icilenSigara!;
    sonuc= sonuc + (userData.boy!/userData.kilo!);

    return userData.seciliCinsiyet=='KADIN'? (sonuc+3):sonuc;

  }
}