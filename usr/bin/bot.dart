import 'dart:io';
import 'dart:convert';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

// Ma'lumotlar bazasi
Map<String, dynamic> db = {
  'admin_id': null,
  'channels': [],
  'premium_users': [],
  'movies': {},
};

void saveDb() {
  File('database.json').writeAsStringSync(jsonEncode(db));
}

void loadDb() {
  var file = File('database.json');
  if (file.existsSync()) {
    db = jsonDecode(file.readAsStringSync());
  }
}

Future<void> main() async {
  loadDb();
  
  final botToken = 'SIZNING_BOT_TOKENINGIZNI_SHU_YERGA_YOZING';
  final username = (await Telegram(botToken).getMe()).username;
  var teledart = TeleDart(botToken, Event(username!));
  
  teledart.start();
  print('Bot ishga tushdi: @$username');

  // Asosiy bot logikasi shu yerda yoziladi
  teledart.onMessage(keyword: 'start').listen((message) {
    var userId = message.chat.id;
    if (db['admin_id'] == null) {
      db['admin_id'] = userId;
      saveDb();
      message.reply('Siz botning birinchi foydalanuvchisisiz. Siz admin qilib belgilandingiz!');
    }
    
    // Obunani tekshirish qismi
    message.reply(
      'Xush kelibsiz! Botdan foydalanish uchun kanallarimizga obuna bo\\'ling.',
      replyMarkup: InlineKeyboardMarkup(
        inlineKeyboard: [
          [InlineKeyboardButton(text: '✅ Tasdiqlash', callbackData: 'check_sub')],
          [InlineKeyboardButton(text: '👑 Premium', callbackData: 'premium')]
        ]
      )
    );
  });

  // Callbacks
  teledart.onCallbackQuery().listen((callbackQuery) {
    if (callbackQuery.data == 'premium') {
      teledart.telegram.sendMessage(
        callbackQuery.message!.chat.id,
        'Premium sotib olish uchun admin bilan bog\\'laning: @Rustamjon_001'
      );
    } else if (callbackQuery.data == 'check_sub') {
       teledart.telegram.sendMessage(
        callbackQuery.message!.chat.id,
        'Obuna tekshirildi! Endi kino kodini yuboring.'
      );
    }
  });

  // Kino izlash va Admin qismi kodlari...
}
