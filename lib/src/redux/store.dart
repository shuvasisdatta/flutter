import 'package:redux/redux.dart';
import 'package:state_management/src/redux/middleware.dart';
import '../api.dart';
import 'app_reducer.dart';
import 'app_state.dart';

Store<AppState> createStore(Api client) {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    distinct: true,
    middleware: getMiddlewares(client),
  );
}
