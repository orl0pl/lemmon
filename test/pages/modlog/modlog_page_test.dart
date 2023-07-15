import 'package:flutter_test/flutter_test.dart';
import 'package:lemmy_api_client/v3.dart';
import 'package:liftoff/pages/modlog/modlog_page_store.dart';
import 'package:liftoff/util/async_store.dart';

void main() {
  group('ModlogPageStore', () {
    late ModlogPageStore store;
    const instanceHost = 'lemmy.world';

    setUp(() {
      store = ModlogPageStore(instanceHost);
    });
    tearDown(() {
      store.dispose();
    });

    test('Initial states are correct', () {
      expect(store.communityId, null);
      expect(store.instanceHost, instanceHost);
      expect(store.hasNextPage, true);
      expect(store.hasPreviousPage, false);
      expect(store.modlogState.asyncState, const AsyncState<Modlog>.initial());
      expect(store.page, 1);
    });

    test('Fetches a page when changed', () {
      store.nextPage();

      expect(store.page, 2);
      expect(store.hasPreviousPage, true);
      expect(store.modlogState.asyncState, const AsyncState<Modlog>.loading());

      store.previousPage();

      expect(store.page, 1);
      expect(store.hasPreviousPage, false);
    });

    test('Stops listening after disposal', () {
      store
        ..dispose()
        ..nextPage();

      expect(store.page, 2);
      expect(store.hasPreviousPage, true);
      expect(store.modlogState.asyncState, const AsyncState<Modlog>.initial());
    });
  });
}
