import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
  home: QuoteList(),
    debugShowCheckedModeBanner: false,
  ));
}
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> qoutes = [
    Quote(author: 'Oscar Wild',text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wild',text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wild',text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:AppBar(
        title: Text('My Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes.map((quote) =>
            QuoteCard(
                quote,
                (){
                  setState(() {
                    qoutes.remove(quote);
                  });
                }
            )
        ).toList(),
      ),
    );
  }
}

