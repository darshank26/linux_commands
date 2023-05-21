import 'dart:io';

class AdHelper {

  static String get bannerAdUnitIdOfHomeScreen {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/6721456797';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitIdOfListScreen {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/5593058014';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitIdOfDetailScreen {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/2182573842';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }




  static String get appOpenAd {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2180535035689124/9068418537';
    }  else {
      throw UnsupportedError('Unsupported platform');
    }
  }

}