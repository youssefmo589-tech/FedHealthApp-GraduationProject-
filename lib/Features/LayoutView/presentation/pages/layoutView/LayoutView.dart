import 'package:fedhealth_graduationproject/Features/LayoutView/presentation/pages/Assessment/Assessment.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Themes/AppColors.dart';
import '../../../../../core/gen/assets.gen.dart';
import '../Profile/Profile.dart';
import '../Research/Research.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int _selectedIndex = 0;

  List<Widget> pages = [Assessment(), Research(), Profile()];

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.darkgrey,
        selectedLabelStyle: theme.titleSmall?.copyWith(
          color: AppColors.blue,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: theme.titleSmall?.copyWith(
          color: AppColors.darkgrey,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.assesment.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(
                AppColors.darkgrey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.assesment.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
            ),
            label: "Assessment",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.chartNoAxesCombined.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(
                AppColors.darkgrey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.chartNoAxesCombined.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
            ),
            label: "Research",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.userRound.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(
                AppColors.darkgrey,
                BlendMode.srcIn,
              ),
            ),
            activeIcon: Assets.icons.userRound.svg(
              height: 21,
              width: 21,
              colorFilter: ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
