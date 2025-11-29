import 'package:flutter/material.dart';
import 'package:task_1/cores/helper/landScapHndler.dart';

class AdsList extends StatefulWidget {
  const AdsList({super.key, required this.onPageChanged});
  final void Function(int)? onPageChanged;

  @override
  State<AdsList> createState() => _AdsListState();
}

class _AdsListState extends State<AdsList> {
  final ScrollController _controller = ScrollController();

  final List<String> images = [
    "assets/images/add.png",
    "assets/images/add.png",
    "assets/images/add.png",
    "assets/images/add.png",
  ];

  int lastIndex = 0;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      double offset = _controller.offset;
      double itemWidth = MediaQuery.of(context).size.width;

      int index = (offset / itemWidth).round();

      if (index != lastIndex) {
        lastIndex = index;
        widget.onPageChanged?.call(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: portraitHeight(context) * .1,

      // width: MediaQuery.of(context).size.width * .9,
      child: Padding(
        padding: EdgeInsets.only(
          left: portraitWidth(context) * .04,

          right: portraitWidth(context) * .03,
        ),
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: portraitWidth(context) * .04),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: portraitWidth(context) * .9,
                  child: Image(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
