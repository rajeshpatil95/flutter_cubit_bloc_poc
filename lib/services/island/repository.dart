import '../../models/island.dart';
import 'request.dart';

abstract class IslandRepository {
  Future<List<IslandModel>> fetchIslands();
}

class IslandRepositoryImpl implements IslandRepository {
  IslandRequest? networkService = IslandRequest();

  @override
  Future<List<IslandModel>> fetchIslands() async {
    final islandList = await networkService!.fetchIslands();
    return islandList;
  }
}
