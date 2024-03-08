class MatCalcRepository{

  int toplama(String alinanSayi1,String alinanSayi2){
    int alinanNum1 = int.parse(alinanSayi1);
    int alinanNum2 = int.parse(alinanSayi2);
    int toplam = alinanNum1 + alinanNum2;
    return toplam;
  }


  int carpma(String alinanSayi1,String alinanSayi2){
    int alinanNum1 = int.parse(alinanSayi1);
    int alinanNum2 = int.parse(alinanSayi2);
    int carpma = alinanNum1 * alinanNum2;
    return carpma;
  }


}