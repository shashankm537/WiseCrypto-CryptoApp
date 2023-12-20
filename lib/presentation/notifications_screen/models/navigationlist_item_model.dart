import '../../../core/app_export.dart';
import 'appbar_item_model.dart';

/// This class is used in the [navigationlist_item_widget] screen.
class NavigationlistItemModel {
  NavigationlistItemModel({
    this.notificationImage,
    this.appbarItemList,
    this.id,
  }) {
    notificationImage = notificationImage ?? ImageConstant.imgArrowDown;
    appbarItemList = appbarItemList ??
        [AppbarItemModel(notificationImage: ImageConstant.imgArrowDown)];
    id = id ?? "";
  }

  String? notificationImage;

  List<AppbarItemModel>? appbarItemList;

  String? id;
}
