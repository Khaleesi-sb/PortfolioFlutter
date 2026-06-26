import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drawer_menu_controller.g.dart';

@riverpod
class DrawerMenuController extends _$DrawerMenuController{

  @override
  FutureOr<bool> build() async{
    return false;
  }

  void open(){
    state = AsyncData(true);
  }

  void close(){
    state = AsyncData(false);
  }
}