import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_firebase/cubit/anaSayfa_cubit.dart';
import 'package:kisiler_uygulamasi_firebase/cubit/kisi_detay_cubit.dart';
import 'package:kisiler_uygulamasi_firebase/cubit/kisi_kayit_cubit.dart';
import 'package:kisiler_uygulamasi_firebase/firebase_options.dart';
import 'package:kisiler_uygulamasi_firebase/views/anasayfa.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
    await Firebase.initializeApp(
      //   options: const FirebaseOptions(
      //   apiKey: 'AIzaSyAjqBHlBRhxUYpMq92kfMk8zsxzW7xFDcY',
      //  projectId: 'campusgo-6eec2',
      //   storageBucket: 'campusgo-6eec2.appspot.com',
      //   messagingSenderId: '898695960774',
      //   appId: '1:898695960774:web:a7a21c5caf34fabb331fc7',
      // )
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => KisiKayitCubit())),
        BlocProvider(create: ((context) => KisiDetayCubit())),
        BlocProvider(create: ((context) => AnaSayfaCubit())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: anaSayfa(),
      ),
    );
  }
}
