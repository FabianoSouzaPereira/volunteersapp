import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volunteersapp/presentation/home/widgets/home_card.dart';
import 'package:volunteersapp/presentation/home/widgets/notification_icon.dart';

class CardsGrid extends StatefulWidget {
  final List<HomeCard> cards;

  const CardsGrid({
    super.key,
    required this.cards,
  });

  @override
  _IconsGridState createState() => _IconsGridState();
}

class _IconsGridState extends State<CardsGrid> {
  bool isNotificationWidgetLoaded = false;

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          locale.younitytasks(0)[0].toUpperCase() + locale.younitytasks(0).substring(1).toLowerCase(),
          style: const TextStyle(
            color: Colors.white,
            backgroundColor: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Color.fromRGBO(88, 88, 83, 1),
                offset: Offset(1.2, 4.2),
                blurRadius: 3.0,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: widget.cards.length,
        itemBuilder: (context, index) {
          var notification = widget.cards.elementAt(index).icon.notification;
          var color = widget.cards.elementAt(index).icon.iconColor;
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).go(widget.cards[index].icon.route);
            },
            child: Card(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 0,
              child: Center(
                child: Column(
                  children: [
                    if (notification != null && notification.isNotEmpty)
                      NotificationWidget(
                        notification: notification,
                        onWidgetLoaded: () {
                          setState(() {
                            isNotificationWidgetLoaded = true;
                            color = Colors.lightBlue;
                          });
                        },
                      ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.white, Colors.grey],
                          stops: [0.0, 1.0],
                        ).createShader(bounds);
                      },
                      child: Column(
                        children: [
                          Icon(
                            widget.cards[index].icon.iconData,
                            size: 60,
                            color: color,
                            shadows: const [
                              Shadow(
                                color: Color.fromRGBO(88, 88, 83, 1),
                                offset: Offset(1.2, 3.2),
                                blurRadius: 2.0,
                              ),
                            ],
                          ),
                          Text(
                            widget.cards.elementAt(index).title,
                            style: const TextStyle(
                              color: Colors.white,
                              backgroundColor: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Color.fromRGBO(88, 88, 83, 1),
                                  offset: Offset(1.2, 3.2),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
