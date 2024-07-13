final Map<int, String> monthMapBn = {
  1: 'জানুয়ারি',
  2: 'ফেব্রুয়ারী',
  3: 'মার্চ',
  4: 'এপ্রিল',
  5: 'মে',
  6: 'জুন',
  7: 'জুলাই',
  8: 'আগস্ট',
  9: 'সেপ্টেম্বর',
  10: 'অক্টোবর',
  11: 'নভেম্বর',
  12: 'ডিসেম্বর',
};

final Map<int, String> weekdayMapBn = {
  1: 'শনিবার',
  2: 'রবিবার',
  3: 'সোমবার',
  4: 'মঙ্গলবার',
  5: 'বুধবার',
  6: 'বৃহস্পতিবার',
  7: 'শুক্রবার',
};
final Map<int, String> weekdayMapShortBn = {
  1: 'সোম',
  2: 'মঙ্গল',
  3: 'বুধ',
  4: 'বৃহঃ',
  5: 'শুক্র',
  6: 'শনি',
  7: 'রবি',
};

String convertNumberToBn(String val) {
  val = val.replaceAll('0', '০');
  val = val.replaceAll('1', '১');
  val = val.replaceAll('2', '২');
  val = val.replaceAll('3', '৩');
  val = val.replaceAll('4', '৪');
  val = val.replaceAll('5', '৫');
  val = val.replaceAll('6', '৬');
  val = val.replaceAll('7', '৭');
  val = val.replaceAll('8', '৮');
  val = val.replaceAll('9', '৯');

  return val;
}
