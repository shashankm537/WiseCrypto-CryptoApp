import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.nameText,
    this.phoneNumberText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgImage11;
    nameText = nameText ?? "Ovo";
    phoneNumberText = phoneNumberText ?? "081264950021";
    id = id ?? "";
  }

  String? userImage;

  String? nameText;

  String? phoneNumberText;

  String? id;
}
