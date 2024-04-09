// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ReorderableListWidget extends StatefulWidget {
  final bool verticalOrientation;
  final List<Widget> items;

  const ReorderableListWidget({
    super.key,
    this.verticalOrientation = true,
    required this.items,
  });

  @override
  ReorderableListWidgetState createState() => ReorderableListWidgetState();
}

class ReorderableListWidgetState extends State<ReorderableListWidget> {
  late bool _verticalOrientation;
  late List<Widget> _reorderedList;

  @override
  void initState() {
    super.initState();
    _verticalOrientation = widget.verticalOrientation;
    _reorderedList = List.from(widget.items);
  }

  @override
  Widget build(BuildContext context) {
    final bool orientation = _verticalOrientation;
    List<Widget> childrenList = [];

    if (orientation) {
      childrenList = _reorderedList.asMap().entries.map(
        (entry) {
          final index = entry.key;
          final widget = entry.value;
          return ListTile(
            key: Key('$index'),
            title: widget,
            tileColor: Colors.transparent,
          );
        },
      ).toList();
    } else {
      ListView(
        scrollDirection: Axis.horizontal,
        children: _reorderedList.asMap().entries.map(
          (entry) {
            final index = entry.key;
            final widget = entry.value;

            return SizedBox(
              width: 150,
              child: ListTile(
                key: Key('$index'),
                title: widget,
                tileColor: Colors.transparent,
              ),
            );
          },
        ).toList(),
      );
    }

    return ReorderableListView(
      buildDefaultDragHandles: true,
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final Widget item = _reorderedList.removeAt(oldIndex);
          _reorderedList.insert(newIndex, item);
        });
      },
      children: childrenList,
    );
  }
}
