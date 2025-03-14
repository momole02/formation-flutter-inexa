import 'package:isar/isar.dart';
part 'plantation.g.dart';

@collection
class Plantation {
  Id id = Isar.autoIncrement;
  String? code;
  double? latitude;
  double? longitude;
  double? superficie;
  String? localite;
  String? culture;
  String? photo;
}
