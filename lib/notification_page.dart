import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: .75,
        title: const Text(
          'Notification',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Mark all as read'))
        ],
      ),
      body: notificationList(),
    );
  }

  Widget notificationList() {
    return ListView(
      children: [
        notificationCard('assets/folder.png', '99+', true),
        notificationCard('assets/coin.png', '9+', true),
        notificationCard('assets/trophy.jpg', '', false),
      ],
    );
  }

  Widget notificationCard(String icon, String badge, bool isRead) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
          color: isRead ? const Color(0xffe8f4fc) : Colors.white,
          border:
              const Border(bottom: BorderSide(width: .25, color: Colors.grey))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Badge(
            label: badge != '' ? Text(badge) : const SizedBox(),
            alignment: Alignment.bottomCenter,
            backgroundColor:
                badge != '' ? const Color(0xfffb4010) : Colors.transparent,
            child: Image.asset(
              icon,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem Ipsum Dolor sit amet',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 320,
                child: Text(
                  'Lorem Ipsum Dolor sit amet Lorem Ipsum Dolor sit amet Lorem Ipsum Dolor sit amet',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Nama Aplikasi',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    ' • ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Yesterday, 19.00',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
