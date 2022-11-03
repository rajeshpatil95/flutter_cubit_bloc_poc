import '../models/island.dart';
import 'network_service.dart';

class Repository {
  final NetworkService? networkService;

  Repository({this.networkService});

  Future<List<IslandModel>> fetchIslands() async {
    final islandList = await networkService!.fetchIslands();
    return islandList;
  }
}
