import 'package:chat_gpt_flutter/chat_gpt_flutter.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

import 'package:http/http.dart' as http;

void main() async {
  var BOT_TOKEN = '5631403623:AAEnB84gKtAH7XL-pqrb_CRpFwSoejEqSOQ';
  final username = (await Telegram(BOT_TOKEN).getMe()).username;
  var teledart = TeleDart(BOT_TOKEN, Event(username!));

  teledart.onCommand('Start').listen((event) async {
    event.reply('wich code');
  });

  teledart.start();
}
