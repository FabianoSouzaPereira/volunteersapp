import 'package:flutter/material.dart';
import 'package:volunteersapp/presentation/home/widgets/grid_icon.dart';

class HomeCard extends StatefulWidget {
  final Function() onPressed;
  final String title;
  final CustomIcon icon;
  final double initialX;
  final double initialY;

  const HomeCard({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    this.initialX = 0,
    this.initialY = 0,
  });

  @override
  HomeCardState createState() => HomeCardState();
}

class HomeCardState extends State<HomeCard> {
  double x = 0;
  double y = 0;

  @override
  void initState() {
    super.initState();
    x = widget.initialX;
    y = widget.initialY;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: Draggable(
        feedback: Material(
          child: Container(
            width: 120,
            height: 120,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        child: LongPressDraggable(
          data: widget,
          feedback: Material(
            child: Container(
              width: 120,
              height: 120,
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          child: Column(
            children: [
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  onTap: () {
                    // onPressed();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      width: 80,
                      height: 80,
                      color: Theme.of(context).primaryColor,
                      child: const Center(
                          child: Icon(
                        Icons.schedule,
                        color: Colors.white,
                        size: 40,
                      )),
                    ),
                  ),
                ),
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
