//repo da amacım veri tabanında kayıt yapmak
// ignore_for_file: prefer_collection_literals

import 'package:firebase_database/firebase_database.dart';
import 'package:kisiler_uygulamasi_firebase/model/kisiler.dart';

class KisilerRepository {

   var refKisiler=FirebaseDatabase.instance.ref().child("kisiler");

  Future<void> kisiKayit(String ad, String kisiTel) async {
    var bilgi=Map<String,dynamic>();
    bilgi['kisi_id']="";
    bilgi['kisi_ad']=ad;
    bilgi['kisi_tel']=kisiTel;
    refKisiler.push().set(bilgi);
  }

  Future<void> guncelle(String kisi_id,String kisiAd, String kisiTel) async {
    var bilgi=Map<String,dynamic>();
    
    bilgi['kisi_ad']=kisiAd;
    bilgi['kisi_tel']=kisiTel;
    refKisiler.child(kisi_id).update(bilgi);
  }

  Future<void> kisiSil(String kisi_id) async {
    
    
    refKisiler.child(kisi_id).remove();
  }
  // Future<List<Kisiler>> tumKisileriAl() async {
  //   var kisilerListesi = <Kisiler>[];
  //   var k1 =Kisiler( kisi_id: "1", kisi_ad: "zehra", kisi_tel: "23");
  //   var k2 = Kisiler(kisi_id: "2", kisi_ad: "mehmet", kisi_tel: "45");
  //   var k3 =Kisiler(kisi_id: "3", kisi_ad: "can", kisi_tel: "56");
  //   var k4 = Kisiler(kisi_id: "4", kisi_ad: "yusuf", kisi_tel: "67");

  //   kisilerListesi.add(k1);
  //   kisilerListesi.add(k2);
  //   kisilerListesi.add(k3);

  //   kisilerListesi.add(k4);

  //   return kisilerListesi;
  // }

  // Future<List<Kisiler>> kisiAra(String aramaKelimesi) async{
  //   var kisilerListesi=<Kisiler>[];
  //   var k1=Kisiler(kisi_id: "1", kisi_ad: "zehra", kisi_tel: "23");
  //   kisilerListesi.add(k1);
  //   return kisilerListesi;
  // }

}
