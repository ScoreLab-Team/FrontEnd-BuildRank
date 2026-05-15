import 'package:buildrank_mobile/core/services/stream_service.dart';
import 'package:buildrank_mobile/features/auth/presentation/screens/session_gate_screen.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class BuildRankApp extends StatelessWidget {
  const BuildRankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BuildRank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      builder: (context, child) => StreamChat(
        client: StreamService.client,
        streamChatThemeData: StreamChatThemeData(
          colorTheme: StreamColorTheme.light(
            accentPrimary: Colors.green,
          ),
          ownMessageTheme: const StreamMessageThemeData(
            messageBackgroundColor: Colors.green,
            messageTextStyle: TextStyle(color: Colors.white),
          ),
        ),
        child: child!,
      ),
      home: const SessionGateScreen(),
    );
  }
}
