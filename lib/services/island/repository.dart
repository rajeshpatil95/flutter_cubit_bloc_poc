import '../../models/island.dart';
import 'network_service.dart';

abstract class IslandRepository {
  Future<List<IslandModel>> fetchIslands();
}

class IslandRepositoryImpl implements IslandRepository {
  NetworkService? networkService = NetworkService();

  @override
  Future<List<IslandModel>> fetchIslands() async {
    final islandList = await networkService!.fetchIslands();
    return islandList;
  }
}
