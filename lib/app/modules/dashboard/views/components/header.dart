
import 'package:copos/app/modules/main/controllers/main_controller.dart';
import 'package:copos/constants.dart';
import 'package:copos/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Row(
         children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: controller.controlMenu,
              ),
            if (!Responsive.isMobile(context))
              Text(
                "Dashboard",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            if (!Responsive.isMobile(context))
              Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
            Expanded(child: SearchField()),
            ProfileCard()
          ],
        );
      }
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
      vertical: defaultPadding / 2
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius:  const BorderRadius.all(
          Radius.circular(10)
        ), border: Border.all(color: Colors.white10)
      ),
      child: Row(
        children: [
          Image.asset("assets/images/profile_pic.png", height: 38,),
          Padding(padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,),
            child: Text("Adiyoga"),),
            Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: secondaryColor,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defaultPadding * 0.75),
              margin: EdgeInsets.symmetric(horizontal: defaultPadding * 0.75),
              decoration: BoxDecoration(color: primaryColor),
              child: SvgPicture.asset("assets/icons/Search.svg"),
            ),
          )),
    );
  }
}
