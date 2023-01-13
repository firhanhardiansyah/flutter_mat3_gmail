import 'package:flutter/material.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';

class MailPage extends StatefulWidget {
  const MailPage({super.key});

  @override
  State<MailPage> createState() => _MailPageState();
}

class _MailPageState extends State<MailPage> {
  final ScrollController _scrollCtrl = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ElevatedButton(
              style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black45,
                      backgroundColor: Colors.blue.shade50,
                      padding: const EdgeInsets.symmetric(horizontal: 4))
                  .copyWith(
                elevation: ButtonStyleButton.allOrNull(0.0),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          tooltip: 'Open navigation drawer',
                          onPressed: () {},
                          icon: const Icon(Icons.reorder)),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text('Search in mail'),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                    child: CircleAvatar(
                      maxRadius: 16,
                      backgroundColor: Colors.orange,
                      child: Text(
                        'F',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ))),
      body: ListView(
        controller: _scrollCtrl,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 16.0, top: 12.0),
            child: Text(
              'Primary',
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.sell_outlined,
                color: Colors.green,
              ),
            ),
            title: Text(
              'Promotions',
              style: TextStyle(fontSize: 14),
            ),
            subtitle: Text(
              'Mark Zuckerberg from CEO Meta',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
          ListTileMessage(
            avatarColor: Colors.blue,
            initialName: 'M',
            title: 'Meta',
            subtitle: '11 new jobs for Frontend Developer',
            message: 'Frontend Developer and other roles are av',
            shortDate: 'Dec 22',
          ),
          ListTileMessage(
            avatarColor: Colors.red,
            initialName: 'G',
            title: 'Google',
            subtitle: '4 new jobs for Golang',
            message: 'Golang Developer and other roles are avai',
            shortDate: 'Dec 21',
          ),
          ListTileMessage(
            avatarColor: Colors.green,
            initialName: 'W',
            title: 'WhatsApp',
            subtitle: '29 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 20',
          ),
          ListTileMessage(
            avatarColor: Colors.purple,
            initialName: 'I',
            title: 'Instagram',
            subtitle: '18 new jobs for Python',
            message: 'Python and other roles are available to y',
            shortDate: 'Dec 19',
          ),
          ListTileMessage(
            avatarColor: Colors.cyan,
            initialName: 'T',
            title: 'Twitter',
            subtitle: '11 new jobs for DevOps Engineer',
            message: 'DevOps Principal Engineer (Bangkok bas',
            shortDate: 'Dec 18',
          ),
          ListTileMessage(
            avatarColor: Colors.lightGreen,
            initialName: 'S',
            title: 'Spotify',
            subtitle: '7 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 17',
          ),
          ListTileMessage(
            avatarColor: Colors.deepOrange,
            initialName: 'V',
            title: 'Vidio.com',
            subtitle: '3 new jobs for Web Developer',
            message: 'Web Developer and other roles are availab',
            shortDate: 'Dec 16',
          ),
          ListTileMessage(
            avatarColor: Colors.blueGrey,
            initialName: 'T',
            title: 'Telegram',
            subtitle: '4 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 20',
          ),
          ListTileMessage(
            avatarColor: Colors.blue,
            initialName: 'M',
            title: 'Meta',
            subtitle: '11 new jobs for Frontend Developer',
            message: 'Frontend Developer and other roles are av',
            shortDate: 'Dec 22',
          ),
          ListTileMessage(
            avatarColor: Colors.red,
            initialName: 'G',
            title: 'Google',
            subtitle: '4 new jobs for Golang',
            message: 'Golang Developer and other roles are avai',
            shortDate: 'Dec 21',
          ),
          ListTileMessage(
            avatarColor: Colors.green,
            initialName: 'W',
            title: 'WhatsApp',
            subtitle: '29 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 20',
          ),
          ListTileMessage(
            avatarColor: Colors.purple,
            initialName: 'I',
            title: 'Instagram',
            subtitle: '18 new jobs for Python',
            message: 'Python and other roles are available to y',
            shortDate: 'Dec 19',
          ),
          ListTileMessage(
            avatarColor: Colors.cyan,
            initialName: 'T',
            title: 'Twitter',
            subtitle: '11 new jobs for DevOps Engineer',
            message: 'DevOps Principal Engineer (Bangkok bas',
            shortDate: 'Dec 18',
          ),
          ListTileMessage(
            avatarColor: Colors.lightGreen,
            initialName: 'S',
            title: 'Spotify',
            subtitle: '7 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 17',
          ),
          ListTileMessage(
            avatarColor: Colors.deepOrange,
            initialName: 'V',
            title: 'Vidio.com',
            subtitle: '3 new jobs for Web Developer',
            message: 'Web Developer and other roles are availab',
            shortDate: 'Dec 16',
          ),
          ListTileMessage(
            avatarColor: Colors.blueGrey,
            initialName: 'T',
            title: 'Telegram',
            subtitle: '4 new jobs for Mobile Developer',
            message: 'Mobile Developer and other roles are avai',
            shortDate: 'Dec 20',
          ),
        ],
      ),
      floatingActionButton: ScrollingFabAnimated(
        radius: 16.0,
        elevation: 8.0,
        width: 142.0,
        color: Colors.blue.shade100,
        icon: const Icon(
          Icons.edit_outlined,
        ),
        text: const Text(
          'Compose',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        onPress: () {},
        scrollController: _scrollCtrl,
        animateIcon: false,
      ),
    );
  }
}

class ListTileMessage extends StatelessWidget {
  const ListTileMessage({
    Key? key,
    required this.avatarColor,
    required this.initialName,
    required this.title,
    required this.subtitle,
    required this.message,
    required this.shortDate,
  }) : super(key: key);

  final MaterialColor avatarColor;
  final String initialName;
  final String title;
  final String subtitle;
  final String message;
  final String shortDate;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundColor: avatarColor.shade400,
        child: Text(
          initialName,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
              text: TextSpan(children: [
            TextSpan(
                text: message,
                style: const TextStyle(fontSize: 12, color: Colors.black))
          ]))
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            shortDate,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 6,
          ),
          const Icon(
            Icons.star_border,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}
