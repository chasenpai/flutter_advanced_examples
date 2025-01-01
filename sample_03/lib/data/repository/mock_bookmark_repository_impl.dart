import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:sample_03/domain/repository/bookmark_repository.dart';

class MockBookmarkRepositoryImpl implements BookmarkRepository {

  final _mockData = <int>{2, 3};
  final _controller = BehaviorSubject<Set<int>>();
  //BehaviorSubject broadcast 역할을 수행하면서, 관찰자가 있을 때 데이터를 흘려줌
  //StreamController.broadcast 관찰자가 없을 때 이미 데이터가 흘러나가서 아무것도 없음

  MockBookmarkRepositoryImpl() {
    _controller.add(_mockData);
  }

  @override
  Future<void> save(int id) async {
    _mockData.add(id);
    _controller.add(_mockData);
  }

  @override
  Future<void> remove(int id) async {
    _mockData.remove(id);
    _controller.add(_mockData);
  }

  @override
  Future<void> toggle(int id) async {
    if(_mockData.contains(id)) {
      await remove(id);
    }else {
      await save(id);
    }
    _controller.add(_mockData);
  }

  @override
  Future<List<int>> getBookmarkIds() async {
    return _mockData.toList();
  }

  @override
  Future<void> clear() async {
    _mockData.clear();
    _controller.add(_mockData);
  }

  @override
  Stream<Set<int>> bookmarksIdsStream() {
    return _controller.stream;
  }

}