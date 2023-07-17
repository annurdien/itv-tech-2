import 'package:bumble/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView(
        children: [
          Row(
            children: const [
              CircleAvatar(),
              AccountNumberInfo(top: "393", bottom: "Posts"),
              AccountNumberInfo(top: "22.4K", bottom: "Followers"),
              AccountNumberInfo(top: "400", bottom: "Following"),
            ],
          ),
          Text("UGM GANTENG CANTIK \nRepost? Tag atau kirim nama teman kamu"),
          Row(
            children: const [
              Flexible(
                child: ActionButton(
                  children: [
                    Text("Following"),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: ActionButton(
                  children: [
                    Text("Message"),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: ActionButton(
                  children: [
                    Icon(
                      Icons.person,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Row(children: children),
    );
  }
}

class AccountNumberInfo extends StatelessWidget {
  const AccountNumberInfo({super.key, required this.top, required this.bottom});

  final String top;
  final String bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Text(top), Text(bottom)],
    );
  }
}
