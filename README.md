# Telegram Anime Bot

Bu loyiha Telegram bot bo'lib, foydalanuvchilarga anime ko'rish uchun kino kodlari orqali xizmat ko'rsatadi. Botda majburiy obuna, premium foydalanuvchilar, va admin paneli mavjud.

## Imkoniyatlari

- **Majburiy Obuna**: Foydalanuvchilar botdan foydalanishdan oldin belgilangan kanallarga obuna bo'lishi kerak.
- **Premium Tizimi**: Premium sotib olgan foydalanuvchilardan 1 oy davomida majburiy obuna so'ralmaydi. Premium sotib olish uchun adminga (@Rustamjon_001) murojaat qilish kerak.
- **Anime Kodlari**: Obunani tekshirgandan so'ng, foydalanuvchilar kino kodini kiritib anime qismlarini ko'rishlari mumkin.
- **Admin Paneli**: Botni birinchi ishga tushirgan foydalanuvchi admin bo'ladi.
- **Kanal Boshqaruvi**: Admin panel orqali telegram, YouTube, Instagram kanallarini qo'shish, o'chirish va obunachi limitlarini (masalan, 200 ta obunachidan so'ng avtomatik o'chish) sozlash mumkin.
- **Xabar Yuborish**: Admin barcha foydalanuvchilarga bittada xabar yuborishi mumkin.
- **Kino Boshqaruvi**: Admin kino kodlarini kiritib, qismlar bo'yicha animelarni yuklashi va o'chirishi mumkin.
- **Statistika**: Admin panel orqali bot statistikasi ko'rinadi.

## Ishlatish

Botni ishga tushirish uchun quyidagi buyruqni bajaring:

```bash
dart run bin/bot.dart
```

> **Eslatma:** Bot ishlashi uchun unga o'z bot tokeningizni `bot.dart` ichidagi token joyiga kiritishingiz kerak. Hozirda bu kod SQLite yoki xotirada ma'lumot saqlaydigan qilib tuzilgan.

## Texnologiyalar

- Dart
- teledart

## CouldAI Haqida

Ushbu ilova [CouldAI](https://could.ai) yordamida yaratilgan. CouldAI - bu sun'iy intellekt yordamida kross-platforma ilovalar yaratuvchi platformadir. U so'rovlarni qabul qilib, avtonom AI agentlari orqali haqiqiy iOS, Android, Web va Desktop ilovalarini arxitekturalaydi, quradi, sinovdan o'tkazadi, o'rnatadi va takomillashtiradi.

Ilovalaringizni AI yordamida yaratish uchun [could.ai](https://could.ai) saytiga tashrif buyuring.
