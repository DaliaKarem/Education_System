import 'package:flutter/material.dart';
class ProfileField extends StatelessWidget {
  final String title;
  final String value;
  final bool isTextArea;

  ProfileField({required this.title, required this.value, this.isTextArea = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          InkWell(
            onTap: () {
              // Navigate to the edit page or show a dialog to edit the field
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                value,
                style: TextStyle(fontSize: 16),
                maxLines: isTextArea ? 3 : 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          if (isTextArea) SizedBox(height: 8),
          if (isTextArea)
            Divider(
              color: Colors.grey,
            ),
        ],
      ),
    );
  }
}