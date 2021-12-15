import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tandem/core/utils/colors_config/app_colors_config.dart';
import 'package:tandem/core/utils/typography/app_text_styles.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showHintText = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));
    Size size = MediaQuery.of(context).size;
    double fontSizeScale = size.width > 440 ? 1 : 0.8;
    double fontSizeScaleName = size.width > 440 ? 1.2 : 1;
    print('SIZE ${size.width}');

    return Scaffold(
      backgroundColor: appColors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// photo bg
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0)),
            child: Image.asset(
              'assets/images/default_img.png',
              fit: BoxFit.fill,
            ),
          ),

          /// photo placer
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 100 * fontSizeScale,
                  child: SvgPicture.asset('assets/vector/photo_place.svg')),
              const SizedBox(height: 24),
              Text(
                'Tandem Фотокарточки',
                style: appTextStyles.b1.copyWith(color: appColors.white),
              ),
              const SizedBox(height: 150)
            ],
          ),

          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: TextField(
                              style: appTextStyles.headline5.copyWith(
                                  fontSize: fontSizeScale * 23,
                                  // fontWeight: FontWeight.w400,
                                  color: appColors.white.withOpacity(0.6)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Имя',
                                hintStyle: appTextStyles.headline5.copyWith(
                                    fontSize: fontSizeScale * 23,
                                    // fontWeight: FontWeight.w400,
                                    color: appColors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),

                          /// День рождения
                          Expanded(
                            child: TextField(
                              textAlign: TextAlign.end,
                              style: appTextStyles.headline5.copyWith(
                                  fontSize: fontSizeScale * 20,
                                  fontWeight: FontWeight.w400,
                                  color: appColors.white.withOpacity(0.6)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'День рождение',
                                hintStyle: appTextStyles.headline6.copyWith(
                                    fontSize: fontSizeScale * 20,
                                    fontWeight: FontWeight.w500,
                                    color: appColors.white.withOpacity(0.6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    SizedBox(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Город
                          Expanded(
                            child: TextField(
                              style: appTextStyles.headline5.copyWith(
                                  fontSize: fontSizeScale * 20,
                                  fontWeight: FontWeight.w500,
                                  color: appColors.white.withOpacity(0.6)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Город',
                                hintStyle: appTextStyles.headline6.copyWith(
                                  fontSize: fontSizeScale * 20,
                                  fontWeight: FontWeight.w500,
                                  color: appColors.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /// Расскажи
                    SizedBox(
                      height: 45,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Visibility(
                                visible: showHintText,
                                // visible: true,
                                child: Text(
                                  'Расскажи Миру уникальную часть из жизни, открыто и с любовью',
                                  style: appTextStyles.headline6.copyWith(
                                      fontSize: fontSizeScale * 20,
                                      fontWeight: FontWeight.w500,
                                      color: appColors.white.withOpacity(0.5)),
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            minLines: 2,
                            maxLines: 3,
                            style: appTextStyles.headline5.copyWith(
                                fontSize: fontSizeScale * 20,
                                fontWeight: FontWeight.w500,
                                color: appColors.white.withOpacity(0.5)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,

                              // hintText: 'Расскажи Миру уникальную часть из жизни, открыто и с любовью',
                              hintStyle: appTextStyles.headline6.copyWith(
                                  fontSize: fontSizeScale * 20,
                                  fontWeight: FontWeight.w500,
                                  color: appColors.white.withOpacity(0.5)),
                            ),
                            onChanged: (val) {
                              print(val);
                              if (val.isNotEmpty) {
                                setState(() {
                                  showHintText = false;
                                });
                              } else {
                                setState(() {
                                  showHintText = true;
                                });
                              }
                              print('showHintText: $showHintText');
                            },
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 17),
                    Container(
                      // height: 45,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          color: appColors.white.withOpacity(0.2)),
                      child: Material(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            // radius: 25,
                            // splashColor: AppColors.gray2.withOpacity(0.4),
                            // highlightColor: AppColors.gray2.withOpacity(0.2),
                            onTap: () {},
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 6, bottom: 6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/rainbow.png'),
                                    const SizedBox(width: 12),
                                    Text(
                                      'Интересы',
                                      style: appTextStyles.b1
                                          .copyWith(color: appColors.white),
                                    ),
                                  ],
                                )),
                          )),
                    ),
                    const SizedBox(height: 22),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
