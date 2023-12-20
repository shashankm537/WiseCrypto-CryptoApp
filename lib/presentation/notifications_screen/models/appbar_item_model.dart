import '../../../core/app_export.dart';

/// This class is used in the [appbar_item_widget] screen.
class AppbarItemModel {
  AppbarItemModel({
    this.notificationImage,
    this.id,
  }) {
    notificationImage = notificationImage ?? ImageConstant.imgArrowDown;
    id = id ?? "";
  }

  String? notificationImage;

  String? id;
}
