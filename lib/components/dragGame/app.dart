import 'dart:math';

// import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class ColorGame extends StatefulWidget {
  @override
  _ColorGameState createState() => _ColorGameState();
}

class _ColorGameState extends State<ColorGame> {
  final Map<String, bool> score = {};

  final Map choices = {
    '🍎': Colors.red,
    '🍏': Colors.green,
    '🍋': Colors.yellow,
    '🍇': Colors.purple,
    '🥥': Colors.brown,
    '🥕': Colors.orange,
  };

  int seed = 0;

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (context, candidateData, rejectedData) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correct'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(color: choices[emoji], height: 80, width: 200);
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
          // player.play('success.mp3');
        });
      },
      onLeave: (data) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score ${score.length} / 6'),
        backgroundColor: Colors.pink,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: choices.keys.map((emoji) {
              return Draggable<String>(
                data: emoji,
                child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                feedback: Emoji(emoji: emoji),
                childWhenDragging: Emoji(emoji: '🌱'),
              );
            }).toList(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                  ..shuffle(Random(seed)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key? key, this.emoji}) : super(key: key);

  final String? emoji;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 80,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}

// AudioCache player = AudioCache();
