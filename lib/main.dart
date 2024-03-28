import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/src/config/constants/app_color.dart';

import 'src/config/constants/font_assets.dart';
import 'src/core/helper/app_bloc_observer.dart';
import 'src/core/utility/log.dart';
import 'src/features/album/presentation/storage_permission_page.dart';
import 'src/features/shared/bloc/photo_gallery_bloc.dart';
import 'src/features/shared/data/photo_gallery_repository.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = AppBlocObserver();
    runApp(const MyApp());
  }, (error, stackTrace) async {
    appPrint('runzoned error');
    appPrint(error.runtimeType.toString());
    appPrint(error.toString());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => PhotoGalleryRepository(),
      child: BlocProvider(
        create: (context) => PhotoGalleryBloc(
          photoGalleryRepository:
              RepositoryProvider.of<PhotoGalleryRepository>(context),
        ),
        child: MaterialApp(
          title: 'Gallery app',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSeed(seedColor: AppColor.kPrimaryColor),
            useMaterial3: true,
            fontFamily: FontAssets.fontFamilyRoboto,
          ),
          debugShowCheckedModeBanner: false,
          home: const StoragePermissionPage(),
        ),
      ),
    );
  }
}
