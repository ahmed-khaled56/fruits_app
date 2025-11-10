import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, this.hieght, this.width});
  final double? hieght;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width, // same as Figma width
        height: hieght, // same as Figma height
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25), // 25 radius
          border: Border.all(color: Colors.grey.shade300), // light border
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            // Country code section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: const [
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "KW",
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                ],
              ),
            ),
            const VerticalDivider(
              color: Colors.grey,
              thickness: 1,
              indent: 10,
              endIndent: 10,
            ),
            // Text input field
            Expanded(
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'is required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
