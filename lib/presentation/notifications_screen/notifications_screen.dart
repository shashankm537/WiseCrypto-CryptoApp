import '../notifications_screen/widgets/navigationlist_item_widget.dart';
import 'models/navigationlist_item_model.dart';
import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'provider/notifications_provider.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationsScreenState createState() => NotificationsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationsProvider(),
      child: NotificationsScreen(),
    );
  }
}

class NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: _buildNavigationList(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationList(BuildContext context) {
    return Consumer<NotificationsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount:
              provider.notificationsModelObj.navigationlistItemList.length,
          itemBuilder: (context, index) {
            NavigationlistItemModel model =
                provider.notificationsModelObj.navigationlistItemList[index];
            return NavigationlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
