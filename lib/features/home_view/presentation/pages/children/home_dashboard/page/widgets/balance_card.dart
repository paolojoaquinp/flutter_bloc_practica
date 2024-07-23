import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.sizeOf(context).height * 0.25,
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.07),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24.0)),
        color: Colors.purple,
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Total Balance",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w100
            ),
          ),
          Text("\$1,450.21",
            style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                letterSpacing: -1.5
            ),
          ),
          Row(
            children: [
              Text("Total cashback",
               style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100
                ),
              ),
              SizedBox(width: 4.0,),
              Text("\$124.40",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1.5
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
