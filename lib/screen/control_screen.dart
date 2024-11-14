import 'package:flutter/material.dart';

class ControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Điều khiển')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          // Gradient nền
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue.shade300, Colors.blue.shade900],
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SwitchListTile(
                  title: Text('Bật/Tắt LED', style: TextStyle(color: Colors.white)),
                  value: true,
                  onChanged: (bool value) {},
                ),
                Slider(
                  value: 50,
                  min: 0,
                  max: 100,
                  onChanged: (value) {},
                  label: 'Điều chỉnh sáng',
                  activeColor: Colors.white,
                  inactiveColor: Colors.white24,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Nhấn nút!'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
