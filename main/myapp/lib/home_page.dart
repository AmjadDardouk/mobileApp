import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Containers'),
      ),
      body: ContainerList(),
    );
  }
}

class ContainerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClickableContainer(
            color: Colors.blue,
            onPressed: () {
              // Perform action when the container is clicked.
              print('Container 1 clicked');
            },
          ),
          ClickableContainer(
            color: Colors.red,
            onPressed: () {
              // Perform action when the container is clicked.
              print('Container 2 clicked');
            },
          ),
          ClickableContainer(
            color: Colors.green,
            onPressed: () {
              // Perform action when the container is clicked.
              print('Container 3 clicked');
            },
          ),
          ClickableContainer(
            color: Colors.orange,
            onPressed: () {
              // Perform action when the container is clicked.
              print('Container 4 clicked');
            },
          ),
        ],
      ),
    );
  }
}

class ClickableContainer extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;

  ClickableContainer({required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 80,
        color: color,
      ),
    );
  }
}
