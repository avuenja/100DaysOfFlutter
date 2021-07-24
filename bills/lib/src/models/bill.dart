class Bill {
  late String type;
  late String description;
  late String category;
  late double amount;
  late bool paid;

  Bill({
    required this.type,
    required this.description,
    required this.category,
    required this.amount,
    this.paid = false,
  });

  Bill.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    category = json['category'];
    amount = json['amount'];
    paid = json['paid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['type'] = this.type;
    data['description'] = this.description;
    data['category'] = this.category;
    data['amount'] = this.amount;
    data['paid'] = this.paid;

    return data;
  }
}
