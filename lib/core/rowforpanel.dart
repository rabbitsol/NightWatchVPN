import 'package:flutter/material.dart';
import 'package:nightwatchvpn/core/model/appcolors.dart';

class RowforPanel extends StatefulWidget {
  const RowforPanel({super.key, required this.flag, required this.country});
  final String flag;
  final String country;
  @override
  State<RowforPanel> createState() => RowforPanelState();
}

class RowforPanelState extends State<RowforPanel> {
  bool pres = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          pres = !pres;
        });
      },
      child: ListTile(
        leading: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(8), // Image radius
                child: Image.asset(widget.flag, fit: BoxFit.cover),
              ),
            )),
        title: Text(
          widget.country,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: pres ? AppColors.roundbuttonlight : AppColors.txtcolor),
        ),
        trailing: Icon(
          Icons.signal_cellular_4_bar_outlined,
          color: AppColors.roundbuttonlight,
        ),
      ),
    );
  }
}
