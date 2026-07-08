# Gunpla Viewer

## รายละเอียดโปรเจกต์

Gunpla Viewer เป็นแอปพลิเคชัน Flutter สำหรับแสดงรายการ Gunpla Collection โดยผู้ใช้สามารถดูรายการโมเดลกันดั้มทั้งหมด และกดเข้าไปดูรายละเอียดของแต่ละตัวได้ พร้อมทั้งดูรูปภาพแบบขยายได้

---

# โครงสร้างโปรเจกต์

```
lib/
│
├── models/
│   └── gunpla.dart
│
├── data/
│   └── gunpla_data.dart
│
├── screens/
│   ├── gunpla_list_screen.dart
│   └── gunpla_detail_screen.dart
│
└── main.dart
```

---

# การทำงานของแต่ละไฟล์

## 1. gunpla.dart

เป็น Model สำหรับเก็บข้อมูลของ Gunpla

ประกอบด้วย

- id
- name
- grade
- imagePaths
- status
- price
- purchaseDate
- assembledDate

ตัวอย่าง Constructor

```dart
Gunpla(
  id: 1,
  name: "Infinite Justice Gundam",
  ...
)
```

หน้าที่

- กำหนดโครงสร้างข้อมูลของ Gunpla
- ใช้เป็นชนิดข้อมูลในทุกหน้าของโปรแกรม

---

## 2. gunpla_data.dart

เป็นไฟล์เก็บข้อมูลตัวอย่างของ Gunpla

ประกาศตัวแปร

```dart
final List<Gunpla> gunplaList
```

ภายในเก็บข้อมูลทั้งหมดของ Gunpla เช่น

- ชื่อ
- เกรด
- ราคา
- วันที่ซื้อ
- วันที่ประกอบ
- รูปภาพ

หน้าที่

- จำลองฐานข้อมูล
- ส่งข้อมูลให้หน้ารายการ (List Screen)

---

## 3. gunpla_list_screen.dart

เป็นหน้าหลักของโปรแกรม

ใช้

```
ListView.builder()
```

เพื่อสร้างรายการ Gunpla ตามจำนวนข้อมูลที่มี

แต่ละรายการแสดง

- รูปภาพ
- ชื่อ
- Grade
- Status

เมื่อกดที่รายการ

```dart
Navigator.push(...)
```

จะเปิดหน้า

```
GunplaDetailScreen
```

พร้อมส่งข้อมูล Gunpla ที่เลือกไป

---

## 4. gunpla_detail_screen.dart

ใช้แสดงรายละเอียดของ Gunpla

แสดงข้อมูล

- ID
- Grade
- Status
- Purchase Date
- Assembled Date

พร้อมแสดงรูปภาพทั้งหมดของ Gunpla

ใช้

```
ListView.builder()
```

เพื่อสร้างรูปภาพหลายรูป

เมื่อแตะรูปภาพ

```
GestureDetector
```

จะเรียก

```
_showFullImage()
```

เพื่อเปิดรูปภาพแบบเต็มจอ

และใช้

```
InteractiveViewer
```

สำหรับ

- Zoom
- Pan

รูปภาพได้

---

# การทำงานของโปรแกรม

1. เปิดโปรแกรม
2. แสดงรายการ Gunpla ทั้งหมด
3. ผู้ใช้เลือก Gunpla ที่ต้องการ
4. โปรแกรมส่งข้อมูลไปยังหน้า Detail
5. หน้า Detail แสดงรายละเอียดทั้งหมด
6. ผู้ใช้แตะรูปเพื่อดูภาพขนาดใหญ่
7. สามารถซูมและเลื่อนรูปภาพได้

---

# Widget ที่ใช้

| Widget | หน้าที่ |
|---------|---------|
| Scaffold | โครงสร้างหน้าจอ |
| AppBar | แสดงหัวข้อ |
| ListView.builder | สร้างรายการแบบอัตโนมัติ |
| ListTile | แสดงข้อมูลแต่ละรายการ |
| Image.asset | แสดงรูปจาก Assets |
| GestureDetector | ตรวจจับการแตะ |
| InteractiveViewer | ซูมและเลื่อนรูป |
| Navigator | เปลี่ยนหน้า |
| Text | แสดงข้อความ |
| Padding | จัดระยะห่าง |
| SizedBox | กำหนดขนาด |

---

# หลักการทำงาน

```
ข้อมูล (gunpla_data.dart)
        │
        ▼
GunplaListScreen
        │
เลือก Gunpla
        │
        ▼
Navigator.push()
        │
ส่งข้อมูล Gunpla
        │
        ▼
GunplaDetailScreen
        │
แตะรูปภาพ
        ▼
InteractiveViewer
```

---

# สรุป

โปรเจกต์นี้ใช้หลักการแบ่งส่วนการทำงาน (Separation of Concerns)

- Model ใช้เก็บโครงสร้างข้อมูล
- Data ใช้เก็บข้อมูลตัวอย่าง
- List Screen ใช้แสดงรายการทั้งหมด
- Detail Screen ใช้แสดงรายละเอียดของข้อมูลที่เลือก

การส่งข้อมูลระหว่างหน้าทำผ่าน `Navigator.push()` และส่ง Object `Gunpla` ไปยังหน้ารายละเอียด ทำให้สามารถแสดงข้อมูลได้ครบถ้วนและรองรับการขยายระบบในอนาคตได้ง่าย