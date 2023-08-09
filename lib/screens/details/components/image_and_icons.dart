import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

import '../../../constants.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3), // set padding image and icons
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3), // set padding bảng icon
                child: Column(
                  children: <Widget>[ // mui ten tro ve
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding), // set padding mui ten
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                    Spacer(),
                    // bảng icons
                    IconCards(icon: "assets/icons/sun.svg"),
                    IconCards(icon: "assets/icons/icon_2.svg"),
                    IconCards(icon: "assets/icons/icon_3.svg"),
                    IconCards(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ), // Tạo một khoảng trống để hình cái cây nằm bên phải  
            ),
            Container( // Hinh cai cay
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(63),
                  topLeft: Radius.circular(63),
                  ),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.29),
                )],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png")
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

