import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Encoder & Decoder'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          ),
          ElevatedButton(
            child: Text('Binary Encoder'),
            onPressed: () {
              Navigator.pushNamed(context, '/encode');
            },
          ),
          Divider(color: Colors.white),
          ElevatedButton(
            child: Text('Binary Decoder'),
            onPressed: () {
              Navigator.pushNamed(context, '/decode');
            },
          ),
        ],
      )),
    );
  }
}

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords> {
//   final _randomWordPairs = <WordPair>[];
//   final _savedWordPairs = Set<WordPair>();

//   Widget _buildList() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(8),
//       itemBuilder: (context, item) {
//         if (item.isOdd) return Divider();

//         final index = item ~/ 2;

//         if (index >= _randomWordPairs.length) {
//           _randomWordPairs.addAll(generateWordPairs().take(10));
//         }

//         return _buildRow(_randomWordPairs[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _savedWordPairs.contains(pair);

//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: TextStyle(fontSize: 18),
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _savedWordPairs.remove(pair);
//           } else {
//             _savedWordPairs.add(pair);
//           }
//         });
//       },
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context)
//         .push(MaterialPageRoute(builder: (BuildContext context) {
//       final Iterable<ListTile> tiles = _savedWordPairs.map((WordPair pair) {
//         return ListTile(
//           title: Text(
//             pair.asPascalCase,
//             style: TextStyle(fontSize: 16),
//           ),
//         );
//       });

//       final List<Widget> divided = ListTile.divideTiles(
//         context: context,
//         tiles: tiles,
//       ).toList();

//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Saved WordPairs'),
//         ),
//         body: ListView(
//           children: divided,
//         ),
//       );
//     }));
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WordPair Generator'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.list),
//             onPressed: _pushSaved,
//           )
//         ],
//         backgroundColor: Colors.purple,
//       ),
//       body: _buildList(),
//     );
//   }
// }
