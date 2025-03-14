import 'dart:convert';
import 'package:agri_app/models/plantation.dart';
import 'package:crypto/crypto.dart';
import 'package:isar/isar.dart';

class PlantationDto {
  String code;
  String localite;
  String culture;
  String? photo;
  double superficie;
  PlantationDto({
    required this.code,
    required this.localite,
    required this.culture,
    required this.superficie,
    this.photo,
  });
}

class PlantationRepository {
  final Isar isar;
  PlantationRepository(this.isar);

  static String genererCodePlantation() {
    var bytes = utf8.encode("${DateTime.now().millisecondsSinceEpoch}");
    var digest = sha256.convert(bytes);
    String hash = digest.toString();
    return "PL-${hash.toUpperCase().substring(hash.length - 5)}";
  }

  Future<void> ajouterPlantation(PlantationDto dto) async {
    final plantation = Plantation()
      ..code = dto.code
      ..culture = dto.culture
      ..superficie = dto.superficie
      ..localite = dto.localite
      ..culture = dto.culture
      ..photo = dto.photo;

    final plantations = isar.collection<Plantation>();
    await isar.writeTxn(() async {
      await plantations.put(plantation);
    });
  }

  Future<List<Plantation>> getPlantations() {
    return isar.collection<Plantation>().where().findAll();
  }

  Future<void> updatePlantation(PlantationDto dto) async {
    final result = await isar
        .collection<Plantation>()
        .filter()
        .codeEqualTo(dto.code)
        .findFirst();
    if (result != null) {
      result.superficie = dto.superficie;
      result.culture = dto.culture;
      result.photo = dto.photo;
      result.localite = dto.localite;
      await isar.writeTxn(() async {
        await isar.collection<Plantation>().put(result);
      });
    }
  }

  Future<void> deletePlantation(String code) async {
    await isar.writeTxn(() async {
      await isar
          .collection<Plantation>()
          .filter()
          .codeEqualTo(code)
          .deleteAll();
    });
  }
}
