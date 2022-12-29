class PaymentData {
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  PaymentData(this.receiptNo, this.month, this.date, this.paymentStatus,
      this.totalAmount, this.btnStatus);
}

List<PaymentData> payment = [
  PaymentData('999666', 'Yanvar', '9 Yanvar 2023', 'Gözlənir', '999\₼', 'ÖDƏ'),
  PaymentData('666999', 'Dekabr', '9 Dekabr 2022', 'Ödənilib', '999\₼', 'ÇAP ET'),
  PaymentData('969696', 'Noyabr', '9 Noyabr 2022', 'Ödənilib', '999\₼', 'ÇAP ET'),
];