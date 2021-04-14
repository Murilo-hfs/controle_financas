import 'package:diaadia/components/transaction_form.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Bar'),
        actions:<Widget> [
          IconButton(icon: Icon(
            Icons.search),
              onPressed: (){
                showSearch(context: context, delegate: DataSearch());
              }
              ),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
      return [
        IconButton(icon: Icon(Icons.clear),
         onPressed: () {
           query = '';
         })
      ];
      
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation, 
      ),
       onPressed: () {
         close(context, null);
       });
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text(query),
            ),
        ),
      );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?TransactionForm:SearchBar.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.people),
        title: RichText(text:TextSpan(
          text: suggestionList[index].substring(0, query.length),
          style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold)
        )
        )
      ),
      itemCount: suggestionList.toString().length,
    );
  }
  
}