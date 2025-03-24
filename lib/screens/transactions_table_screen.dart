import 'package:expense_tracker/app_colors.dart';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class TransactionsTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        color: AppColors.secondaryColor,
        child: ListView.builder(
          itemCount: 10, 
          itemBuilder: (context, index) {
            return Card(
              color: AppColors.primaryColor,
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  'Transaction ${index + 1}',
                  style: TextStyle(color: AppColors.secondaryColor),
                ),
                subtitle: Text(
                  '\$${(index + 1) * 10}',
                  style: TextStyle(color: AppColors.accentColor),
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: AppColors.accentColor
                
                ),
                
              ),
            );
          },
        ),
      ),
    );
  }
}
