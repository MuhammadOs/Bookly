import 'package:bookly/config/manager/appsetting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*
class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      height: MediaQuery.of(context).size.height * .15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              bloc.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Light Mode",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
                bloc.appTheme == ThemeMode.light
                    ? const Icon(
                        Icons.check,
                        size: 25,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              bloc.changeTheme(ThemeMode.dark);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
                bloc.appTheme == ThemeMode.dark
                    ? const Icon(
                        Icons.check,
                        size: 25,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
*/
class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<AppsettingCubit>(context);
    return Wrap(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.light_mode,
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          title: Text('Light Mode',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: bloc.appTheme == ThemeMode.light
              ? Icon(
                  Icons.check,
                  size: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            bloc.changeTheme(ThemeMode.light);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.dark_mode,
            size: 20,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          title: Text('Dark Mode',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)),
          trailing: bloc.appTheme == ThemeMode.dark
              ? Icon(
                  Icons.check,
                  size: 22,
                  color: Theme.of(context).colorScheme.onPrimary,
                )
              : const SizedBox.shrink(),
          onTap: () {
            bloc.changeTheme(ThemeMode.dark);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
