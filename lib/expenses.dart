import 'package:flutter/material.dart';

import 'package:expense_tracker_app/models/expense.dart';

import 'package:expense_tracker_app/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course', amount: 5199, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 549, date: DateTime.now(), category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Text"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ]
      ),
    );
  }
}
