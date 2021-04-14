
import 'dart:math';
import 'package:diaadia/components/chart.dart';
import 'package:diaadia/components/transaction_form.dart';
import 'package:diaadia/components/transaction_list.dart';
import 'package:diaadia/models/transaction.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {

  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

final List<Transaction> _transactions = [];
String filterText = '';
  // List<TextEditingController> _controllers = [];
           
  List<Transaction> get _recentTransactions {
    return _transactions.where((tr) {
      return tr.date.isAfter(DateTime.now().subtract(
        Duration(days: 7),
      ));
    }).toList();
  }

_searchList(String filter){
setState(() {
// filterText = text;
  },
  );
}
_addTransaction(String title, double value, DateTime date) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  _removeTransaction(String id) {
    setState(() {
      _transactions.removeWhere((tr) => tr.id == id);
    });
  }

_openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addTransaction, filterText);
      },
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posso Ajudar?'),
      ),
        body: SingleChildScrollView(
        child: Column(
          children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar' ),
                  onChanged: (_) {
                    _searchList(filterText);
                  },
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Chart(_recentTransactions),
                    TransactionList(_transactions, _removeTransaction,),
                  ],   
                ),
               ],
            ),
          ),
      floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),
            onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
 