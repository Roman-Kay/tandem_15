import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tandem/core/presentation/widgets/app_primary_button.dart';
import 'package:tandem/core/utils/colors_config/app_colors_config.dart';
import 'package:tandem/core/utils/typography/app_text_styles.dart';
import 'package:tandem/features/tarifs/presentation/components/tariff_info_row.dart';
import 'dart:io' show Platform;

class TariffPayButton extends StatelessWidget {
  const TariffPayButton({
    required this.type,
    Key? key,
  }) : super(key: key);

  final int type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        height: 88,
        child: Column(
          children: [
            AppPrimaryButton(
              child: SvgPicture.asset(
                Platform.isIOS
                    ? 'assets/vector/apple_pay_logo_white.svg'
                    : 'assets/vector/google_play_logo.svg',
                height: 1000,
              ),
              gradientType: type,
              onTap: () {},
            ),
            const SizedBox(height: 5),
            RichText(
              // textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Подписка оформлена?',
                style: appTextStyles.body2.copyWith(
                    fontWeight: FontWeight.w500, color: appColors.gray5),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Условия и Политика',
                    style: appTextStyles.body2.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: appColors.gray5),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12)
          ],
        ),
      ),
    );
  }
}
