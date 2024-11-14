import 'package:demo/screen/info_screen.dart';

import 'control_screen.dart';
import 'statistics_screen.dart';
import 'group_info_screen.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _screens = [

//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.info,), label: 'Thông tin'),
//           BottomNavigationBarItem(icon: Icon(Icons.control_camera), label: 'Điều khiển'),
//           BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Thống kê'),
//           BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Nhóm'),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    InfoScreen(),       // Màn hình Thông tin 
    ControlScreen(),    // Màn hình Điều khiển
    StatisticsScreen(), // Màn hình Thống kê
    GroupInfoScreen(),  // Màn hình Thông tin nhóm
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black, // Màu chữ mục được chọn
        unselectedItemColor: Colors.black54, // Màu chữ mục không được chọn
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Thông tin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.control_camera),
            label: 'Điều khiển',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Thống kê',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Nhóm',
          ),
        ],
      ),
    );
  }
}
