import 'package:expense_tracker_flutter/widget/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 20.99,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: 'cinema',
      amount: 15.99,
      category: Category.leisure,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(expenses: _registerExpenses),
          ),
        ],
      ),
    );
  }
}
