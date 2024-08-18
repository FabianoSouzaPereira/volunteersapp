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
    return _verticalOrientation
        ? ReorderableListVertical(
            reorderedList: _reorderedList,
            onReorder: _onReorder,
          )
        : ReorderableListHorizontal(
            reorderedList: _reorderedList,
            onReorder: _onReorder,
          );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Widget item = _reorderedList.removeAt(oldIndex);
      _reorderedList.insert(newIndex, item);
    });
  }
}

class ReorderableListVertical extends StatelessWidget {
  final List<Widget> reorderedList;
  final void Function(int, int) onReorder;

  const ReorderableListVertical({
    super.key,
    required this.reorderedList,
    required this.onReorder,
  });

  @override
  Widget build(BuildContext context) {
    final childrenList = reorderedList.asMap().entries.map((entry) {
      final index = entry.key;
      final widget = entry.value;
      return ListTile(
        key: Key('$index'),
        title: widget,
        tileColor: Colors.transparent,
      );
    }).toList();

    return ReorderableListView(
      buildDefaultDragHandles: true,
      onReorder: onReorder,
      children: childrenList,
    );
  }
}

class ReorderableListHorizontal extends StatelessWidget {
  final List<Widget> reorderedList;
  final void Function(int, int) onReorder;

  const ReorderableListHorizontal({
    super.key,
    required this.reorderedList,
    required this.onReorder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: reorderedList.asMap().entries.map((entry) {
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
      }).toList(),
    );
  }
}
