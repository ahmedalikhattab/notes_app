import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'Build your career with tahrwat samy',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 17,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'April12 , 2026',
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
