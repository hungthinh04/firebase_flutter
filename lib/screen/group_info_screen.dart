import 'package:flutter/material.dart';

class GroupInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Thông tin nhóm')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Gradient nền
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade200, Colors.blue.shade800],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Hoạ tiết nền
          Positioned(
            top: 50,
            left: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            right: -80,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.1),
              ),
            ),
          ),

          // Nội dung chính
          ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              MemberCard(
                name: 'Lê Tài Hưng Thịnh',
                role: 'Lập trình chính',
              ),
              MemberCard(
                name: 'Lê Phạm Nhật Lễ',
                role: 'Thiết kế giao diện',
              ),
              MemberCard(
                name: 'Nguyễn Hoàng Hải',
                role: 'Lập trình phụ',
              ),
              MemberCard(
                name: 'Nguyễn Minh Hiếu',
                role: 'abc',
              ),
              MemberCard(
                name: 'Trần Đăng Khôi',
                role: 'abcd',
              ),
              MemberCard(
                name: 'Tiến',
                role: 'ab',
              ),
              InfoCard(
                title: 'Thông tin phần mềm',
                subtitle: '123123',
              ),
              InfoCard(
                title: 'Profile',
                subtitle: '...',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MemberCard extends StatelessWidget {
  final String name;
  final String role;

  const MemberCard({required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.blue),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          role,
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoCard({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 4,
      child: ListTile(
        leading: Icon(Icons.info, color: Colors.blue),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
    );
  }
}
