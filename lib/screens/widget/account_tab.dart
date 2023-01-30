import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:anyar_retail/utils/dimension.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const CardProfile(),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.GAP_SIZE_DEFAULT,
                vertical: 12,
              ),
              child: Text(
                'My Info',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  MenuItem(
                    titleMenu: 'Personal Info',
                    icon: Icons.account_circle,
                  ),
                  MenuItem(
                    titleMenu: 'Employee Info',
                    icon: Icons.work,
                  ),
                  MenuItem(
                    titleMenu: 'Payroll Info',
                    icon: Icons.monetization_on,
                  ),
                ],
              ),
            ),
            const SizedBox(height: Dimension.GAP_SIZE_DEFAULT),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.GAP_SIZE_DEFAULT,
                vertical: 12,
              ),
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  MenuItem(
                    titleMenu: 'Change Password',
                    icon: Icons.lock,
                  ),
                ],
              ),
            ),
            const SizedBox(height: Dimension.GAP_SIZE_DEFAULT),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimension.GAP_SIZE_DEFAULT,
                vertical: 12,
              ),
              child: Text(
                'Other',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  MenuItem(
                    titleMenu: 'Term of use',
                    icon: CupertinoIcons.chat_bubble_2_fill,
                  ),
                  MenuItem(
                    titleMenu: 'Safety & Privacy',
                    icon: Icons.fact_check_rounded,
                  ),
                  MenuItem(
                    titleMenu: 'Logout',
                    icon: CupertinoIcons.square_arrow_left,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    this.icon,
    required this.titleMenu,
  }) : super(key: key);

  final IconData? icon;
  final String titleMenu;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.redAccent,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titleMenu,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.grey,
                        size: 20,
                      )
                    ],
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

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimension.GAP_SIZE_DEFAULT),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.red,
            radius: 35,
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Full Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Staff IT',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'PT Anyar Retail Indonesia',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}