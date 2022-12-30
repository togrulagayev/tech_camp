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
// List<PaymentData> payment = [
//   PaymentData('001', 'Mobil Proqramlaşdırma', '1-3-5', '14.00-17.00', '4', 'KEÇİD ET'),
//   PaymentData('002', 'Veb Proqramlaşdırma', '2-4-6', '14.00-17.00', '6', 'KEÇİD ET'),
//   PaymentData('003', 'Kiber Təhlükəsizlik', '1-4-7', '18.00-20.00', '8', 'KEÇİD ET'),
// ];