import 'package:sample_03/domain/repository/bookmark_repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {

  final _mockData = <int>{1, 2, 4};

  @override
  Future<void> save(int id) async {
    _mockData.add(id);
  }

  @override
  Future<void> remove(int id) async {
    _mockData.remove(id);
  }

  @override
  Future<void> toggle(int id) async {
    if(_mockData.contains(id)) {
      save(id);
    }else {
      remove(id);
    }
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _mockData.toList();
  }

  @override
  Future<void> clear() async {
    _mockData.clear();
  }

}