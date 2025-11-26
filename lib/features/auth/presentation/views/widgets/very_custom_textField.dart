import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, this.hieght, this.width});
  final double? hieght;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        //top: MediaQuery.sizeOf(context).width * 0.03487,
        //left: MediaQuery.sizeOf(context).width * 0.0353,
        // bottom: MediaQuery.sizeOf(context).height * 0.01448,
      ),
      child: Container(
        width: width,
        height: hieght,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),

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
