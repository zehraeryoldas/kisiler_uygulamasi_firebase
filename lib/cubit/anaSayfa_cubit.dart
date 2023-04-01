import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_firebase/model/kisiler.dart';
import 'package:kisiler_uygulamasi_firebase/repo/kisilerDaoRepository.dart';

//amacımız listeyi sürekli arayüze göndermek tabi bunu göndermek için emit dediğmiz yapıyı kullancağız
class AnaSayfaCubit extends Cubit<List<Kisiler>>{
  AnaSayfaCubit() : super(<Kisiler>[]);
  //repoya erişmek için öncelikle bu nesneye ihtiyacımız var
  var kRepo=KisilerRepository();
   var refKisiler=FirebaseDatabase.instance.ref().child("kisiler");

  Future<void> kisileriYukle() async{
    refKisiler.onValue.listen((event) {
      var gelenDegerler=event.snapshot.value as dynamic;
      if(gelenDegerler!=null){
        var liste=<Kisiler>[];
        gelenDegerler.forEach((key,nesne){
          var kisi=Kisiler.fromJson(key, nesne);
          liste.add(kisi);
        });
        emit(liste);
      }
    });
  }
   Future<void> ara(String aramaKelimesi) async{
    refKisiler.onValue.listen((event) {
      var gelenDegerler=event.snapshot.value as dynamic;
      if(gelenDegerler!=null){
        var liste=<Kisiler>[];
        gelenDegerler.forEach((key,nesne){
          var kisi=Kisiler.fromJson(key, nesne);
          if(kisi.kisi_ad.contains(aramaKelimesi)){
            liste.add(kisi);
          }
          
        });
        emit(liste);
      }
    });
  }

  // Future<void> kisileriYukle() async{
  //   var liste=await kRepo.tumKisileriAl();
  //   emit(liste);
  // }

  Future<void> kisileriSil(String kisi_id) async{
    kRepo.kisiSil(kisi_id);
    //kişileri yükle dememizin sebebi veri silindikten sonra arayüzde silinmiş halini görebilmemiz
   // await kisileriYukle();
  }

  // Future<void> kisiAra(String kisiAra) async{
  //  var liste= await kRepo.kisiAra(kisiAra);
  //   emit(liste);
  // }


}