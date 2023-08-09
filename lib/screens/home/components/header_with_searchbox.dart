import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5), // padding header's bottom
      // It will cover 20% of our total height
      height: size.height * 0.2,
      child: Stack( // ngan xep, lam header truoc => Hi, Uishopy => searchbox // header nam duoi searchbox va Hi
        children: <Widget>[
          Container( // header
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 26 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row( // Hi Uishopy! 
              children: <Widget>[
                Text(
                  'Hi Uishopy!', 
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned( // ô search
            bottom: 0, // cố định chỗ ô search nằm ở cuối container
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center, // chữ Search nằm giữa
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField( // bên trong ô search
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none, // mất dòng kẻ dưới chữ Search
                          focusedBorder: InputBorder.none, // khi nhấp vào sẽ không hiện dòng kẻ dưới chữ Search
                          // Suffix isn't working properly with SVG
                          // That why we use row
                         //suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/search.svg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}