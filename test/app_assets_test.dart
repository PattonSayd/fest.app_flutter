import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_fest/resources/resources.dart';

void main() {
  test('app_assets assets test', () {
    expect(File(AppAssets.bookmark).existsSync(), true);
    expect(File(AppAssets.bookmarkFull).existsSync(), true);
    expect(File(AppAssets.calendar).existsSync(), true);
    expect(File(AppAssets.calendarFull).existsSync(), true);
    expect(File(AppAssets.easterEggLarge).existsSync(), true);
    expect(File(AppAssets.photoMock).existsSync(), true);
    expect(File(AppAssets.point).existsSync(), true);
    expect(File(AppAssets.pointFull).existsSync(), true);
    expect(File(AppAssets.sheduleBg).existsSync(), true);
    expect(File(AppAssets.sheduleFfLogo).existsSync(), true);
    expect(File(AppAssets.sheduleLogo).existsSync(), true);
    expect(File(AppAssets.sheduleSurfLogo).existsSync(), true);
    expect(File(AppAssets.speakerBackground).existsSync(), true);
    expect(File(AppAssets.star).existsSync(), true);
    expect(File(AppAssets.starFull).existsSync(), true);
    expect(File(AppAssets.tabbarBookmark).existsSync(), true);
    expect(File(AppAssets.tabbarCalendar).existsSync(), true);
    expect(File(AppAssets.tabbarPoint).existsSync(), true);
  });
}
