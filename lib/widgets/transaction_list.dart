import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (ctx, index) {
        final transaction = transactions[index];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: ListTile(
            title: Text(transaction.category),
            subtitle: Text(transaction.date.toLocal().toString().split(' ')[0]),
            trailing: Text('\$${transaction.amount.toStringAsFixed(2)}'),
          ),
        );
      },
    );
  }
}
