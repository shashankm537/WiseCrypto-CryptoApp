import '../transaction_list_page/widgets/transactiondetails_item_widget.dart';
import 'models/transaction_list_model.dart';
import 'models/transactiondetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wise_crypto/core/app_export.dart';
import 'provider/transaction_list_provider.dart';

// ignore_for_file: must_be_immutable
class TransactionListPage extends StatefulWidget {
  const TransactionListPage({Key? key})
      : super(
          key: key,
        );

  @override
  TransactionListPageState createState() => TransactionListPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionListProvider(),
      child: TransactionListPage(),
    );
  }
}

class TransactionListPageState extends State<TransactionListPage>
    with AutomaticKeepAliveClientMixin<TransactionListPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildTransactionDetails(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionDetails(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            right: 22.h,
          ),
          child: Consumer<TransactionListProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0.v),
                    child: SizedBox(
                      width: 313.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: theme.colorScheme.onError,
                      ),
                    ),
                  );
                },
                itemCount: provider
                    .transactionListModelObj.transactiondetailsItemList.length,
                itemBuilder: (context, index) {
                  TransactiondetailsItemModel model = provider
                      .transactionListModelObj
                      .transactiondetailsItemList[index];
                  return TransactiondetailsItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
