import 'package:flutter/material.dart';
import 'add_transaction_screen.dart'; 
import '../widgets/transaction_list.dart'; 
import '../providers/transactions.dart'; 
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static var routeName;

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionsProvider = Provider.of<TransactionsProvider>(context);

    return Scaffold(
      appBar: AppBar(title:Text('Expense Tracker'),
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.white,
      centerTitle: true,
      ),
      body: FutureBuilder(
        future: transactionsProvider.fetchAndSetTransactions(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return const Center(child: Text('Error fetching transactions'));
          }
          return transactionsProvider.transactions.isEmpty
              ? const Center(child: Text("No transactions!"))
              : TransactionList(transactionsProvider.transactions);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AddTransactionScreen(),
            ),
          );
        },
      ),
    );
  }
}
