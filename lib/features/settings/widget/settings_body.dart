import 'package:bookly/config/manager/appsetting_cubit.dart';
import 'package:bookly/features/settings/widget/themeing_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'custom_settings_bottom_sheet.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Dark Mode",
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const Gap(10),
          CustomSettingBottomSheet(
            text: bloc.appTheme == ThemeMode.dark ? "Dark" : "Light",
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const ThemeBottomSheet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
