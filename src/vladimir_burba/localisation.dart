import 'dart:convert';
import 'dart:io';

enum Lang { eng, ru }

class Localisation {
  static const fileName = 'locale.json';
  final Lang locale;
  final String path;

  Localisation(this.locale, this.path);

  File _getFile() {
    return File('$path${Platform.pathSeparator}${locale.name}${Platform.pathSeparator}$fileName');
  }
  Future<String> getString(List path) async {
    final configFile = _getFile();
    final jsonString = await configFile.readAsString();
    final jsonMap = jsonDecode(jsonString);
    var res = jsonMap[path[0]];
    for (int i = 1; i < path.length; i++) {
      res = res[path[i]];
    }
    return res.toString();
  }
}