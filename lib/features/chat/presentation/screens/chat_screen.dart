import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tandem/core/presentation/widgets/avatar_widget.dart';
import 'package:tandem/core/utils/colors_config/app_colors_config.dart';
import 'package:tandem/core/utils/typography/app_text_styles.dart';
import 'package:tandem/features/profile/presentation/components/gradient_icon.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({required this.tag, Key? key}) : super(key: key);

  final int tag;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        top: true,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon:
                  const Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Row(
              children: [
                Hero(
                    tag: 'img-$tag',
                    child: AvatarWidget(
                        size: 40, avatar: 'assets/images/user_1.png')),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Кристина',
                        style: appTextStyles.body1
                            .copyWith(height: 1, fontSize: 15)),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(false ? 'Сейчас в сети' : 'Не в сети',
                            style: appTextStyles.body2.copyWith(
                                color: appColors.black.withOpacity(0.25),
                                fontSize: 13,
                                height: 1,
                                fontWeight: FontWeight.w400)),
                        const SizedBox(width: 10),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: appColors.white, width: 2),
                              color:
                                  false ? appColors.success : appColors.errors,
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 12);
                    },
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 4) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: index % 2 == 0 ? 40 : 0,
                            right: index % 2 == 0 ? 0 : 40,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    index % 2 == 0
                                        ? appColors.primary
                                        : Colors.white,
                                    index % 2 == 0
                                        ? appColors.secondary
                                        : Colors.white,
                                    // appColors.primary,
                                    // appColors.secondary
                                  ]),
                              // color:
                              //     index % 2 == 0 ? Colors.blue : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: appColors.gray3.withOpacity(0.12),
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 10.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: SizedBox(
                            height: 26,
                            child: Row(
                              children: [
                                GradientIcon(
                                  Icon(Icons.play_arrow_rounded),
                                  26.0,
                                  LinearGradient(
                                    colors: <Color>[
                                      index % 2 == 0
                                          ? Colors.white
                                          : appColors.primary,
                                      index % 2 == 0
                                          ? Colors.white
                                          : appColors.secondary,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: (26 - 5) / 2,
                                            horizontal: 10),
                                        width: 100,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                index % 2 == 0
                                                    ? Colors.white
                                                    : appColors.primary,
                                                index % 2 == 0
                                                    ? Colors.white
                                                    : appColors.secondary
                                                // appColors.primary,
                                                // appColors.secondary
                                              ]),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 100),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3),
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      index % 2 == 0
                                                          ? Colors.white
                                                          : appColors.primary,
                                                      index % 2 == 0
                                                          ? Colors.white
                                                          : appColors.secondary
                                                      // appColors.primary,
                                                      // appColors.secondary
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: (26 - 5) / 2,
                                            horizontal: 10),
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          color: index % 2 == 0
                                              ? Colors.white.withOpacity(0.5)
                                              : appColors.gray3
                                                  .withOpacity(0.12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //  GradientIconButton(

                                //       padding: EdgeInsets.zero,
                                //       onPressed: () {},
                                //       icon: Icon(Icons.pause_rounded))
                              ],
                            ),
                          ),
                        );
                      }
                      if (index == 3) {
                        return Container(
                            margin: EdgeInsets.only(
                              left: index % 2 == 0 ? 40 : 0,
                              right: index % 2 == 0 ? 0 : 40,
                            ),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      index % 2 == 0
                                          ? appColors.primary
                                          : Colors.white,
                                      index % 2 == 0
                                          ? appColors.secondary
                                          : Colors.white,
                                      // appColors.primary,
                                      // appColors.secondary
                                    ]),
                                // color:
                                //     index % 2 == 0 ? Colors.blue : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: index % 2 == 0
                                        ? Colors.white.withOpacity(0.5)
                                        : appColors.gray3.withOpacity(0.12),
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 10.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(20)),
                            child: SizedBox(
                                height: 26,
                                child: Row(children: [
                                  GradientIcon(
                                    Icon(Icons.pause_rounded),
                                    26.0,
                                    LinearGradient(
                                      colors: <Color>[
                                        index % 2 == 0
                                            ? Colors.white
                                            : appColors.primary,
                                        index % 2 == 0
                                            ? Colors.white
                                            : appColors.secondary,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  Expanded(
                                    child: Stack(children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: (26 - 5) / 2,
                                            horizontal: 10),
                                        width: 30,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                              colors: [
                                                index % 2 == 0
                                                    ? Colors.white
                                                    : appColors.primary,
                                                index % 2 == 0
                                                    ? Colors.white
                                                    : appColors.secondary
                                                // appColors.primary,
                                                // appColors.secondary
                                              ]),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 30),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3),
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10)),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topRight,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      index % 2 == 0
                                                          ? Colors.white
                                                          : appColors.primary,
                                                      index % 2 == 0
                                                          ? Colors.white
                                                          : appColors.secondary
                                                      // appColors.primary,
                                                      // appColors.secondary
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            vertical: (26 - 5) / 2,
                                            horizontal: 10),
                                        height: 5,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          color: index % 2 == 0
                                              ? Colors.white.withOpacity(0.5)
                                              : appColors.gray3
                                                  .withOpacity(0.12),
                                        ),
                                      ),
                                    ]),
                                  )
                                ])));
                      }

                      /// vertical list padding
                      if (index == 10) {
                        return SizedBox(height: 100);
                      }
                      if (index == 0) {
                        return SizedBox(height: 20);
                      } else {
                        return Container(
                          margin: EdgeInsets.only(
                            left: index % 2 == 0 ? 40 : 0,
                            right: index % 2 == 0 ? 0 : 40,
                          ),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    index % 2 == 0
                                        ? appColors.primary
                                        : Colors.white,
                                    index % 2 == 0
                                        ? appColors.secondary
                                        : Colors.white,
                                    // appColors.primary,
                                    // appColors.secondary
                                  ]),
                              // color:
                              //     index % 2 == 0 ? Colors.blue : Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: appColors.gray3.withOpacity(0.12),
                                  offset: const Offset(0.0, 0.0),
                                  blurRadius: 10.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                              'Они сошлись. Волна и камень, Стихи и проза, лед и пламень, Не столь различны меж собой',
                              style: appTextStyles.body1.copyWith(
                                  color: index % 2 == 0
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                        );
                      }
                    }),
              ),
              Positioned.fill(
                bottom: 20,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: appColors.gray3.withOpacity(0.12),
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 10.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6, right: 4),
                          child: Image.asset('assets/images/camera.png'),
                        ),
                        Expanded(
                            child: TextField(
                          maxLines: null,
                          keyboardType: TextInputType.multiline,
                          style: appTextStyles.headline5.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            // fontWeight: FontWeight.w400,
                            //   color: appColors.white.withOpacity(0.5)
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            // hintText: 'Имя',
                            hintStyle: appTextStyles.headline5.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              //   color: appColors.white.withOpacity(0.5)),
                            ),
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/vector/send_msg.svg',
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
