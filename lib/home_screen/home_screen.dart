import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../app_theme/app_colors.dart';
import '../tabs/settings_tab.dart';
import '../tabs/task_list_tab.dart';
import 'bottom_sheet_task.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.lightBackgroundColor,
      appBar: AppBar(
        // toolbarHeight: MediaQuery.of(context).size.height*.03,
        backgroundColor: AppColors.PrimaryColor,
        title: Text(
          'To Do List',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Column(
        children: [
          Expanded(child: tabs[selectedIndex]),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(4),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.list,
                  size: 35,
                ),
                label: AppLocalizations.of(context)!.task_list),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings, size: 35),
              label: AppLocalizations.of(context)!.settings,
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTaskBottomSheet();
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: AppColors.PrimaryColor,
        splashColor: AppColors.PrimaryColor,
        shape:
            const CircleBorder(side: BorderSide(color: Colors.white, width: 3)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<Widget> tabs = [TaskListTab(), SettingsTab()];

  void addTaskBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => BottomSheetTask());
  }
}
