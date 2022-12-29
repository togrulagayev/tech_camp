import 'package:flutter/material.dart';
import 'package:tech_camp/data/payment.dart';
import 'package:tech_camp/model/constants.dart';
import 'package:tech_camp/screens/payment_page/class/payment_classes.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});
static String routeName = 'PaymentScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
        title: Text('Ödəniş'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: kTopBorderRadius,
                color: kOtherColor,
              ),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  itemCount: payment.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(kDefaultPadding),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                PaymentDetailRow(
                                  title: 'Qəbz Nömrəsi',
                                  statusValue: payment[index].receiptNo,
                                ),
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                PaymentDetailRow(
                                  title: 'Ay',
                                  statusValue: payment[index].month,
                                ),
                                sizedBox,
                                PaymentDetailRow(
                                  title: 'Ödəniş Tarixi',
                                  statusValue: payment[index].date,
                                ),
                                sizedBox,
                                PaymentDetailRow(
                                  title: 'Status',
                                  statusValue: payment[index].paymentStatus,
                                ),
                                sizedBox,
                                const SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                PaymentDetailRow(
                                  title: 'Məbləğ',
                                  statusValue: payment[index].totalAmount,
                                ),
                              ],
                            ),
                          ),
                          PaymentButton(
                              title: payment[index].btnStatus,
                              iconData: payment[index].btnStatus == 'Ödənilib'
                                  ? Icons.download_outlined
                                  : Icons.arrow_forward_outlined,
                              onPress: () {})
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
