// ignore_for_file: file_names

import 'package:get/get.dart';

class messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Hello': 'Hello World',
      'Internationalization':'Internationalization'
    },
    'de_DE': {
      'Hello': 'Hallo Welt',
      'Internationalization':'Internationalisierung'

    },
    'fa_IR': {
      'Hello': 'سلام دنیا',
      'Internationalization':'بین المللی'

    }
  };
}

