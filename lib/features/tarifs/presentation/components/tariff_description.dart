import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandem/core/presentation/widgets/app_primary_button.dart';
import 'package:tandem/core/utils/colors_config/app_colors_config.dart';
import 'package:tandem/core/utils/typography/app_text_styles.dart';
import 'package:tandem/features/tarifs/presentation/components/tariff_info_row.dart';
import 'dart:io' show Platform;

class TariffDescription extends StatelessWidget {
  const TariffDescription({
    required this.type,
    Key? key,
  }) : super(key: key);

  final int type;

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 30,
            ),
            child: Column(
              children: [
                TariffInfoRow(
                  title: 'Безлимитный Tandem',
                  subTitle: 'Знакомься и создавай тандемы',
                  type: type,
                ),
                const SizedBox(height: 14),
                TariffInfoRow(
                  title: 'Максимальное взаимодействие',
                  subTitle: 'Больше возможностей',
                  type: type,
                ),
                const SizedBox(height: 14),
                TariffInfoRow(
                  title: 'Статус верификации  🔱',
                  subTitle: 'Награждаем привелегиями',
                  type: type,
                ),
                const SizedBox(height: 14),
                TariffInfoRow(
                  title: 'Совместимость',
                  subTitle: 'Найди родную душу',
                  type: type,
                ),
                SizedBox(height: height / 4)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// const SizedBox(height: 5),
//                     RichText(
//                       // textAlign: TextAlign.center,
//                       text: TextSpan(
//                         text: 'Подписка оформлена?',
//                         style: appTextStyles.body2.copyWith(
//                             fontWeight: FontWeight.w500,
//                             color: appColors.gray5),
//                         children: <TextSpan>[
//                           TextSpan(
//                             text: ' Условия и Политика',
//                             style: appTextStyles.body2.copyWith(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w700,
//                                 color: appColors.gray5),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 15)