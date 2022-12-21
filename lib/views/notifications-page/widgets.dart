import 'package:flutter/material.dart';
import 'package:kuttab/Utils/constants.dart';
import 'package:kuttab/views/componant/app-text.dart';
import 'package:intl/intl.dart';

class NotificationsPageBudy extends StatefulWidget {
  const NotificationsPageBudy({super.key});

  @override
  State<NotificationsPageBudy> createState() => _NotificationsPageBudyState();
}

class _NotificationsPageBudyState extends State<NotificationsPageBudy> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        padding: EdgeInsets.only(top: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: const BoxDecoration(),
                child: const AppText(
                  text: "الأخيرة",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 8),
              const NotificationsList(
                notfications: [
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:40:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:41:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:42:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:44:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:46:23",
                  },
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: const BoxDecoration(),
                child: const AppText(
                  text: "السابقة",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              // dateFormat.parse("2022-12-12 8:40:23"),
              const NotificationsList(
                notfications: [
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:40:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:41:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:42:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:44:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:46:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 8:50:23",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-12 9:11:00",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-13 10:00:00",
                  },
                  {
                    "title": "عنوان الإشعار (مستبدل)",
                    "subTitle":
                        "التفاصيل الخاصة بالإشعارات (سيتم إستبدال النص)",
                    "dateTime": "2022-12-14 9:51:00",
                  },
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*

*/

class NotificationsList extends StatefulWidget {
  const NotificationsList({super.key, required this.notfications});
  final List<Map<String, dynamic>> notfications;
  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.notfications.length * 64,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.notfications.length,
        itemBuilder: (BuildContext context, int index) {
          return NotificationTile(
            title: widget.notfications[index]["title"],
            subTitle: widget.notfications[index]["subTitle"],
            dateTime: dateFormat.parse(widget.notfications[index]["dateTime"]),
            selected: false,
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  const NotificationTile({
    super.key,
    required this.selected,
    required this.title,
    required this.subTitle,
    required this.dateTime,
  });
  final bool selected;
  final String title, subTitle;
  final DateTime dateTime;

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: (widget.selected) ? (PRIMARY_COLOR) : (Colors.white),
        border: const Border(
          bottom: BorderSide(width: 1.0, color: GRAY_COLOR),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(8),
            // "assets/images/calendar-tick.png"
            decoration: BoxDecoration(
              color: (widget.selected) ? (Colors.white) : (GRAY_COLOR),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset((widget.selected)
                ? "assets/images/notification-green.png"
                : "assets/images/notification-black.png"),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.title,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(height: 3),
                AppText(
                  text: widget.subTitle,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Row(
                    children: [
                      Expanded(child: Container()),
                      //width: MediaQuery.of(context).size.width,
                      AppText(
                        text: dateFormat.format(widget.dateTime),
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NoNotificationsTile extends StatelessWidget {
  const NoNotificationsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 64,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: GRAY_COLOR),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Center(
        child: AppText(
          text: "لا توجد إشعارات",
          fontSize: 14,
        ),
      ),
    );
  }
}
