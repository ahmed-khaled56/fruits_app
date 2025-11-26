import 'package:flutter/material.dart';
import 'package:task_1/cores/widgets/responsive_text_method.dart';

class CustomOtp extends StatefulWidget {
  const CustomOtp({super.key});

  @override
  State<CustomOtp> createState() => _CustomOtpState();
}

class _CustomOtpState extends State<CustomOtp> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  @override
  double portraitWidth(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.width < size.height ? size.width : size.height;
  }

  double portraitHeight(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return size.height > size.width ? size.height : size.width;
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      width: portraitWidth(context) * .6139,
      height: portraitHeight(context) * .0615,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(4, (index) {
          return Row(
            children: [
              Container(
                width: portraitWidth(context) * .1139,
                height: portraitHeight(context) * .0515,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xff929292),
                    width: 1.5,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (controllers[index].text.isEmpty)
                      const Icon(
                        Icons.circle,
                        size: 6,
                        color: Color(0xff929292),
                      ),

                    TextField(
                      controller: controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(
                          context: context,
                          fontSize: 20,
                        ),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        counterText: '',
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        setState(() {});
                        if (value.isNotEmpty && index < 3) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                    ),
                  ],
                ),
              ),

              if (index != 3) SizedBox(width: portraitWidth(context) * 0.025),
            ],
          );
        }),
      ),
    );
  }
}
