import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_firebase/repo/kisilerDaoRepository.dart';

class KisiKayitCubit extends Cubit<void>{
  KisiKayitCubit() : super(0);

  var kRepo=KisilerRepository();
   Future<void> Kayit(String ad, String kisiTel) async {
   await kRepo.kisiKayit(ad, kisiTel);
  }

}