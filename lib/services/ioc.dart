import 'package:agri_app/models/plantation.dart';
import 'package:agri_app/services/plantation_repository.dart';
import 'package:ioc_container/ioc_container.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IoC {
  static IocContainer? _container;

  static IocContainer get container {
    _container ??= _buildContainer();
    return _container!;
  }

  static IocContainer _buildContainer() {
    final IocContainerBuilder builder =
        IocContainerBuilder(allowOverrides: true)
          ..addSingletonAsync<Isar>((container) async {
            final dir = await getApplicationDocumentsDirectory();
            final isar = await Isar.open(
              [PlantationSchema],
              directory: dir.path,
            );
            return isar;
          })
          ..addSingletonAsync<PlantationRepository>((container) async {
            return PlantationRepository(
              await container.getAsync(),
            );
          });
    return builder.toContainer();
  }
}
