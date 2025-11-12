# Cara Menggunakan Account Page

## File yang dibuat
- `lib/pages/account.dart` - Halaman account dengan desain lo-fi

## Fitur Halaman Account

### 1. **Profile Section**
- Avatar dengan border lo-fi (lingkaran dengan border hitam tebal)
- Nama pengguna
- Email
- Bio dengan container lo-fi

### 2. **Stats Section**
- Jumlah Pins
- Jumlah Followers
- Jumlah Following
- Setiap stat dalam card lo-fi dengan border hitam

### 3. **Menu Section**
- Edit Profile
- Saved Pins
- Settings
- Privacy
- Help & Support
- Setiap menu item dengan icon dan arrow

### 4. **Logout Button**
- Tombol logout dengan shadow lo-fi (offset shadow hitam)

## Cara Menggunakan

### Opsi 1: Navigasi dari HomePage
Tambahkan navigasi di `home_page.dart` pada tombol person:

```dart
IconButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AccountPage()),
    );
  },
  icon: const Icon(Icons.person_2_outlined, size: 30),
),
```

Jangan lupa import:
```dart
import '../account.dart';
```

### Opsi 2: Langsung di main.dart
Ubah `main.dart` untuk testing:

```dart
import 'package:flutter/material.dart';
import 'pages/account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: AccountPage(),
    );
  }
}
```

## Desain Lo-Fi

Halaman ini menggunakan prinsip desain lo-fi:
- **Border tebal hitam** (3px) pada semua container utama
- **Box shadow solid** (tanpa blur) untuk efek 3D
- **Warna netral**: Putih, abu-abu muda (#F5F5F0), hitam
- **Typography bold** untuk heading
- **Spacing konsisten** untuk clean layout
- **Minimalis** tanpa gradient atau efek kompleks

## Kustomisasi

Anda bisa mengubah:
- Nama dan email di bagian profile
- Bio text
- Warna background: `Color(0xFFF5F5F0)` (krem muda)
- Ketebalan border: `width: 3`
- Shadow offset: `Offset(6, 6)`
- Menu items sesuai kebutuhan

## Screenshot Preview
Halaman akan menampilkan:
```
┌─────────────────────────┐
│       Account           │
├─────────────────────────┤
│  ┌─────────────────┐   │
│  │   ╭─────╮       │   │
│  │   │ 👤  │       │   │
│  │   ╰─────╯       │   │
│  │   John Doe      │   │
│  │ john@example.com│   │
│  │  ┌───────────┐  │   │
│  │  │ ✨ Bio... │  │   │
│  │  └───────────┘  │   │
│  └─────────────────┘   │
│                         │
│ ┌───┐ ┌───┐ ┌───┐     │
│ │128│ │1.2K│ │342│     │
│ │Pin│ │Fol│ │Fol│     │
│ └───┘ └───┘ └───┘     │
│                         │
│  ┌─────────────────┐   │
│  │ ✏️ Edit Profile │   │
│  │ 🔖 Saved Pins   │   │
│  │ ⚙️ Settings     │   │
│  │ 🔒 Privacy      │   │
│  │ ❓ Help         │   │
│  └─────────────────┘   │
│                         │
│  ┌─────────────────┐   │
│  │  🚪 Logout      │   │
│  └─────────────────┘   │
└─────────────────────────┘
```
