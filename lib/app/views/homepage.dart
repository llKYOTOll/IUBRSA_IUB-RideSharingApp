import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iubrsa/app/controllers/homeframe_controller.dart';

import '../../data/constants/app_data.dart';
import '../widgets/google_map.dart';
import '../widgets/shortcut_layout.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final HomeframController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Hi, Khondakar Afridi',
                  style: AppData.regularTextStyle.copyWith(height: 1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Where are you heading\ntoday?',
                      style: AppData.boldTextStyle
                          .copyWith(fontSize: 20, height: .95),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppData.customLightGrey.withOpacity(.15),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: AppData.darkBlueColor,
                        size: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Active rides',
                          style: AppData.regularTextStyle,
                        ),
                        Text(
                          'Around you',
                          style: AppData.boldTextStyle
                              .copyWith(fontSize: 20, height: .95),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.openGoogleMapsScreen();
                      },
                      child: Text(
                        'view full map',
                        style: AppData.regularTextStyle.copyWith(
                          color: Colors.blue.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: Get.height / 3,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppData.defaultBorderRadius),
                  ),
                  child: GetGoogleMaps(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: AppData.royalBlueColor,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: const Icon(
                        Icons.location_pin,
                        color: AppData.customWhite,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Bily Road,',
                      style: AppData.boldTextStyle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Bangladesh',
                      style: AppData.regularTextStyle.copyWith(
                        color: AppData.customDarkGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Active trips',
                      style: AppData.boldTextStyle.copyWith(
                        fontSize: 20,
                        height: .95,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.openGoogleMapsScreen();
                      },
                      child: Text(
                        'view on map',
                        style: AppData.regularTextStyle.copyWith(
                          color: Colors.blue.withOpacity(.5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.showActiveTrips("To");
                  },
                  child: Container(
                    height: 180,
                    width: Get.width / 2,
                    decoration: BoxDecoration(
                      color: AppData.babyBlueColor,
                      borderRadius:
                          BorderRadius.circular(AppData.defaultBorderRadius),
                    ),
                    padding: AppData.defaultPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: SvgPicture.asset(
                            'assets/svgs/classroom.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'To',
                          style: AppData.regularTextStyle,
                        ),
                        Text(
                          'Independent\nUniversity\nBangladesh',
                          style: AppData.boldTextStyle.copyWith(
                            fontSize: 15,
                            height: .95,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    controller.showActiveTrips("From");
                  },
                  child: Container(
                    height: 180,
                    width: Get.width / 2,
                    decoration: BoxDecoration(
                      color: AppData.creamColor,
                      borderRadius:
                          BorderRadius.circular(AppData.defaultBorderRadius),
                    ),
                    padding: AppData.defaultPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: SvgPicture.asset(
                            'assets/svgs/home.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'From',
                          style: AppData.regularTextStyle,
                        ),
                        Text(
                          'Independent\nUniversity\nBangladesh',
                          style: AppData.boldTextStyle.copyWith(
                            fontSize: 15,
                            height: .95,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: AppData.defaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shortcuts',
                      style: AppData.boldTextStyle.copyWith(
                        fontSize: 20,
                        height: .95,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.onSoSButtonClick();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: AppData.defaultButtonHeight,
                        width: 80,
                        decoration: BoxDecoration(
                          color: AppData.customWhite,
                          borderRadius: BorderRadius.circular(
                            AppData.defaultBorderRadius,
                          ),
                          border: Border.all(
                            width: 1,
                            color: AppData.customWhite,
                          ),
                        ),
                        child: const Icon(
                          Icons.sos,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "S.O.S",
                        style: AppData.regularTextStyle,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Shortcut(
                  title: 'iub.edu.bd',
                  icon: Icons.web,
                  color: Colors.red,
                  link: 'http://www.iub.edu.bd/',
                ),
                const SizedBox(
                  width: 10,
                ),
                const Shortcut(
                  title: 'iRas V1',
                  icon: Icons.school,
                  color: Colors.pink,
                  link: 'https://irasv1.iub.edu.bd/#/',
                ),
                const SizedBox(
                  width: 10,
                ),
                const Shortcut(
                  title: 'old iRas',
                  icon: Icons.school,
                  link: 'https://iras.iub.edu.bd/login/Default.aspx',
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Shortcut(
                  title: 'Community',
                  icon: Icons.group,
                  link: 'https://www.facebook.com/iub.edu',
                  color: AppData.royalBlueColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Shortcut(
                  title: 'Traffic Alert',
                  icon: Icons.traffic,
                  link: '',
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}