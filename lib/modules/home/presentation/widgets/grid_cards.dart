import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/home_card.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/notification_icon.dart';

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
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Color.fromRGBO(230, 230, 230, 1),
                Color.fromRGBO(195, 181, 181, 1),
                Color.fromRGBO(155, 155, 155, 1),
                Color.fromRGBO(195, 181, 181, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: Text(
            locale.younitytasks(0)[0].toUpperCase() + locale.younitytasks(0).substring(1).toLowerCase(),
            style: const TextStyle(
              color: Colors.white,
              backgroundColor: Colors.transparent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(
                  color: Color.fromRGBO(255, 255, 255, .5),
                  offset: Offset(1.0, 1.2),
                  blurRadius: 1.0,
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        color: Colors.transparent,
        child: GridView.builder(
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
                color: Colors.transparent,
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
                            colors: [
                              Color.fromRGBO(230, 230, 230, 1),
                              Color.fromRGBO(195, 181, 181, 1),
                              Color.fromRGBO(155, 155, 155, 1),
                              Color.fromRGBO(195, 181, 181, 1),
                              Color.fromRGBO(255, 255, 255, 1),
                            ],
                            stops: [0.0, 0.2, 0.3, 0.7, 1.0],
                          ).createShader(bounds);
                        },
                        child: Column(
                          children: [
                            Icon(
                              widget.cards[index].icon.iconData,
                              key: UniqueKey(),
                              size: 75,
                              color: color,
                              shadows: const [
                                Shadow(
                                  color: Color.fromRGBO(31, 98, 132, 0.8),
                                  offset: Offset(0.0, 4.0),
                                  blurRadius: 3.0,
                                ),
                              ],
                              semanticLabel: 'Icon task',
                            ),
                            Text(
                              widget.cards.elementAt(index).title,
                              style: const TextStyle(
                                color: Colors.white,
                                backgroundColor: Colors.transparent,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                shadows: [
                                  Shadow(
                                    color: Color.fromRGBO(255, 255, 255, .5),
                                    offset: Offset(0.0, 1.0),
                                    blurRadius: 1.0,
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
      ),
    );
  }
}
