import 'dart:async';
import 'package:flutter/services.dart';
import 'package:fuel_zone/src/features/app.dart';
import 'package:l/l.dart';
import 'setup.dart';

void run() => l.capture<void>(
      () => runZonedGuarded<void>(
        () async {
          await setup();
          await SystemChrome.setPreferredOrientations(
            [DeviceOrientation.portraitUp],
          ).then(
            (_) => App.run(),
          );
        },
        (final error, final stackTrace) {
          l.e(
            'io_top_level_error: ${error.toString()}\n $stackTrace',
            stackTrace,
          );
        },
      ),
      const LogOptions(
        printColors: true,
        handlePrint: true,
        outputInRelease: true,
      ),
    );
