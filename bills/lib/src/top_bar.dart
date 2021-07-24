import 'package:flutter/material.dart';

class KTopBar extends StatelessWidget {
  const KTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTopSpacer(context),
        _buildTopBar(),
      ],
    );
  }

  Widget _buildTopSpacer(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).padding.top,
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.all(25.0),
      margin: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bills App',
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
              Text(
                'Hello Marcelo',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          _buildAvatar(),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.grey.shade300,
      backgroundImage: NetworkImage(
        'https://avatars.githubusercontent.com/u/5226773?v=4',
      ),
    );
  }
}
