import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey,
            //      boxShadow:  Colors.grey,
          ),
          child: const Column(
            children: [
              Icon(Icons.wallet, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
