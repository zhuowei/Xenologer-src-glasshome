package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

public final class Version
{
  private static final Version[] VERSIONS = buildVersions();
  private static final int[] VERSION_DECODE_INFO = { 31892, 34236, 39577, 42195, 48118, 51042, 55367, 58893, 63784, 68472, 70749, 76311, 79154, 84390, 87683, 92361, 96236, 102084, 102881, 110507, 110734, 117786, 119615, 126325, 127568, 133589, 136944, 141498, 145311, 150283, 152622, 158308, 161089, 167017 };
  private final int[] alignmentPatternCenters;
  private final ECBlocks[] ecBlocks;
  private final int totalCodewords;
  private final int versionNumber;

  private Version(int paramInt, int[] paramArrayOfInt, ECBlocks[] paramArrayOfECBlocks)
  {
    this.versionNumber = paramInt;
    this.alignmentPatternCenters = paramArrayOfInt;
    this.ecBlocks = paramArrayOfECBlocks;
    int i = 0;
    int j = paramArrayOfECBlocks[0].getECCodewordsPerBlock();
    for (ECB localECB : paramArrayOfECBlocks[0].getECBlocks())
      i += localECB.getCount() * (j + localECB.getDataCodewords());
    this.totalCodewords = i;
  }

  private static Version[] buildVersions()
  {
    Version[] arrayOfVersion = new Version[40];
    int[] arrayOfInt1 = new int[0];
    ECBlocks[] arrayOfECBlocks1 = new ECBlocks[4];
    ECB[] arrayOfECB1 = new ECB[1];
    arrayOfECB1[0] = new ECB(1, 19);
    arrayOfECBlocks1[0] = new ECBlocks(7, arrayOfECB1);
    ECB[] arrayOfECB2 = new ECB[1];
    arrayOfECB2[0] = new ECB(1, 16);
    arrayOfECBlocks1[1] = new ECBlocks(10, arrayOfECB2);
    ECB[] arrayOfECB3 = new ECB[1];
    arrayOfECB3[0] = new ECB(1, 13);
    arrayOfECBlocks1[2] = new ECBlocks(13, arrayOfECB3);
    ECB[] arrayOfECB4 = new ECB[1];
    arrayOfECB4[0] = new ECB(1, 9);
    arrayOfECBlocks1[3] = new ECBlocks(17, arrayOfECB4);
    arrayOfVersion[0] = new Version(1, arrayOfInt1, arrayOfECBlocks1);
    int[] arrayOfInt2 = { 6, 18 };
    ECBlocks[] arrayOfECBlocks2 = new ECBlocks[4];
    ECB[] arrayOfECB5 = new ECB[1];
    arrayOfECB5[0] = new ECB(1, 34);
    arrayOfECBlocks2[0] = new ECBlocks(10, arrayOfECB5);
    ECB[] arrayOfECB6 = new ECB[1];
    arrayOfECB6[0] = new ECB(1, 28);
    arrayOfECBlocks2[1] = new ECBlocks(16, arrayOfECB6);
    ECB[] arrayOfECB7 = new ECB[1];
    arrayOfECB7[0] = new ECB(1, 22);
    arrayOfECBlocks2[2] = new ECBlocks(22, arrayOfECB7);
    ECB[] arrayOfECB8 = new ECB[1];
    arrayOfECB8[0] = new ECB(1, 16);
    arrayOfECBlocks2[3] = new ECBlocks(28, arrayOfECB8);
    arrayOfVersion[1] = new Version(2, arrayOfInt2, arrayOfECBlocks2);
    int[] arrayOfInt3 = { 6, 22 };
    ECBlocks[] arrayOfECBlocks3 = new ECBlocks[4];
    ECB[] arrayOfECB9 = new ECB[1];
    arrayOfECB9[0] = new ECB(1, 55);
    arrayOfECBlocks3[0] = new ECBlocks(15, arrayOfECB9);
    ECB[] arrayOfECB10 = new ECB[1];
    arrayOfECB10[0] = new ECB(1, 44);
    arrayOfECBlocks3[1] = new ECBlocks(26, arrayOfECB10);
    ECB[] arrayOfECB11 = new ECB[1];
    arrayOfECB11[0] = new ECB(2, 17);
    arrayOfECBlocks3[2] = new ECBlocks(18, arrayOfECB11);
    ECB[] arrayOfECB12 = new ECB[1];
    arrayOfECB12[0] = new ECB(2, 13);
    arrayOfECBlocks3[3] = new ECBlocks(22, arrayOfECB12);
    arrayOfVersion[2] = new Version(3, arrayOfInt3, arrayOfECBlocks3);
    int[] arrayOfInt4 = { 6, 26 };
    ECBlocks[] arrayOfECBlocks4 = new ECBlocks[4];
    ECB[] arrayOfECB13 = new ECB[1];
    arrayOfECB13[0] = new ECB(1, 80);
    arrayOfECBlocks4[0] = new ECBlocks(20, arrayOfECB13);
    ECB[] arrayOfECB14 = new ECB[1];
    arrayOfECB14[0] = new ECB(2, 32);
    arrayOfECBlocks4[1] = new ECBlocks(18, arrayOfECB14);
    ECB[] arrayOfECB15 = new ECB[1];
    arrayOfECB15[0] = new ECB(2, 24);
    arrayOfECBlocks4[2] = new ECBlocks(26, arrayOfECB15);
    ECB[] arrayOfECB16 = new ECB[1];
    arrayOfECB16[0] = new ECB(4, 9);
    arrayOfECBlocks4[3] = new ECBlocks(16, arrayOfECB16);
    arrayOfVersion[3] = new Version(4, arrayOfInt4, arrayOfECBlocks4);
    int[] arrayOfInt5 = { 6, 30 };
    ECBlocks[] arrayOfECBlocks5 = new ECBlocks[4];
    ECB[] arrayOfECB17 = new ECB[1];
    arrayOfECB17[0] = new ECB(1, 108);
    arrayOfECBlocks5[0] = new ECBlocks(26, arrayOfECB17);
    ECB[] arrayOfECB18 = new ECB[1];
    arrayOfECB18[0] = new ECB(2, 43);
    arrayOfECBlocks5[1] = new ECBlocks(24, arrayOfECB18);
    ECB[] arrayOfECB19 = new ECB[2];
    arrayOfECB19[0] = new ECB(2, 15);
    arrayOfECB19[1] = new ECB(2, 16);
    arrayOfECBlocks5[2] = new ECBlocks(18, arrayOfECB19);
    ECB[] arrayOfECB20 = new ECB[2];
    arrayOfECB20[0] = new ECB(2, 11);
    arrayOfECB20[1] = new ECB(2, 12);
    arrayOfECBlocks5[3] = new ECBlocks(22, arrayOfECB20);
    arrayOfVersion[4] = new Version(5, arrayOfInt5, arrayOfECBlocks5);
    int[] arrayOfInt6 = { 6, 34 };
    ECBlocks[] arrayOfECBlocks6 = new ECBlocks[4];
    ECB[] arrayOfECB21 = new ECB[1];
    arrayOfECB21[0] = new ECB(2, 68);
    arrayOfECBlocks6[0] = new ECBlocks(18, arrayOfECB21);
    ECB[] arrayOfECB22 = new ECB[1];
    arrayOfECB22[0] = new ECB(4, 27);
    arrayOfECBlocks6[1] = new ECBlocks(16, arrayOfECB22);
    ECB[] arrayOfECB23 = new ECB[1];
    arrayOfECB23[0] = new ECB(4, 19);
    arrayOfECBlocks6[2] = new ECBlocks(24, arrayOfECB23);
    ECB[] arrayOfECB24 = new ECB[1];
    arrayOfECB24[0] = new ECB(4, 15);
    arrayOfECBlocks6[3] = new ECBlocks(28, arrayOfECB24);
    arrayOfVersion[5] = new Version(6, arrayOfInt6, arrayOfECBlocks6);
    int[] arrayOfInt7 = { 6, 22, 38 };
    ECBlocks[] arrayOfECBlocks7 = new ECBlocks[4];
    ECB[] arrayOfECB25 = new ECB[1];
    arrayOfECB25[0] = new ECB(2, 78);
    arrayOfECBlocks7[0] = new ECBlocks(20, arrayOfECB25);
    ECB[] arrayOfECB26 = new ECB[1];
    arrayOfECB26[0] = new ECB(4, 31);
    arrayOfECBlocks7[1] = new ECBlocks(18, arrayOfECB26);
    ECB[] arrayOfECB27 = new ECB[2];
    arrayOfECB27[0] = new ECB(2, 14);
    arrayOfECB27[1] = new ECB(4, 15);
    arrayOfECBlocks7[2] = new ECBlocks(18, arrayOfECB27);
    ECB[] arrayOfECB28 = new ECB[2];
    arrayOfECB28[0] = new ECB(4, 13);
    arrayOfECB28[1] = new ECB(1, 14);
    arrayOfECBlocks7[3] = new ECBlocks(26, arrayOfECB28);
    arrayOfVersion[6] = new Version(7, arrayOfInt7, arrayOfECBlocks7);
    int[] arrayOfInt8 = { 6, 24, 42 };
    ECBlocks[] arrayOfECBlocks8 = new ECBlocks[4];
    ECB[] arrayOfECB29 = new ECB[1];
    arrayOfECB29[0] = new ECB(2, 97);
    arrayOfECBlocks8[0] = new ECBlocks(24, arrayOfECB29);
    ECB[] arrayOfECB30 = new ECB[2];
    arrayOfECB30[0] = new ECB(2, 38);
    arrayOfECB30[1] = new ECB(2, 39);
    arrayOfECBlocks8[1] = new ECBlocks(22, arrayOfECB30);
    ECB[] arrayOfECB31 = new ECB[2];
    arrayOfECB31[0] = new ECB(4, 18);
    arrayOfECB31[1] = new ECB(2, 19);
    arrayOfECBlocks8[2] = new ECBlocks(22, arrayOfECB31);
    ECB[] arrayOfECB32 = new ECB[2];
    arrayOfECB32[0] = new ECB(4, 14);
    arrayOfECB32[1] = new ECB(2, 15);
    arrayOfECBlocks8[3] = new ECBlocks(26, arrayOfECB32);
    arrayOfVersion[7] = new Version(8, arrayOfInt8, arrayOfECBlocks8);
    int[] arrayOfInt9 = { 6, 26, 46 };
    ECBlocks[] arrayOfECBlocks9 = new ECBlocks[4];
    ECB[] arrayOfECB33 = new ECB[1];
    arrayOfECB33[0] = new ECB(2, 116);
    arrayOfECBlocks9[0] = new ECBlocks(30, arrayOfECB33);
    ECB[] arrayOfECB34 = new ECB[2];
    arrayOfECB34[0] = new ECB(3, 36);
    arrayOfECB34[1] = new ECB(2, 37);
    arrayOfECBlocks9[1] = new ECBlocks(22, arrayOfECB34);
    ECB[] arrayOfECB35 = new ECB[2];
    arrayOfECB35[0] = new ECB(4, 16);
    arrayOfECB35[1] = new ECB(4, 17);
    arrayOfECBlocks9[2] = new ECBlocks(20, arrayOfECB35);
    ECB[] arrayOfECB36 = new ECB[2];
    arrayOfECB36[0] = new ECB(4, 12);
    arrayOfECB36[1] = new ECB(4, 13);
    arrayOfECBlocks9[3] = new ECBlocks(24, arrayOfECB36);
    arrayOfVersion[8] = new Version(9, arrayOfInt9, arrayOfECBlocks9);
    int[] arrayOfInt10 = { 6, 28, 50 };
    ECBlocks[] arrayOfECBlocks10 = new ECBlocks[4];
    ECB[] arrayOfECB37 = new ECB[2];
    arrayOfECB37[0] = new ECB(2, 68);
    arrayOfECB37[1] = new ECB(2, 69);
    arrayOfECBlocks10[0] = new ECBlocks(18, arrayOfECB37);
    ECB[] arrayOfECB38 = new ECB[2];
    arrayOfECB38[0] = new ECB(4, 43);
    arrayOfECB38[1] = new ECB(1, 44);
    arrayOfECBlocks10[1] = new ECBlocks(26, arrayOfECB38);
    ECB[] arrayOfECB39 = new ECB[2];
    arrayOfECB39[0] = new ECB(6, 19);
    arrayOfECB39[1] = new ECB(2, 20);
    arrayOfECBlocks10[2] = new ECBlocks(24, arrayOfECB39);
    ECB[] arrayOfECB40 = new ECB[2];
    arrayOfECB40[0] = new ECB(6, 15);
    arrayOfECB40[1] = new ECB(2, 16);
    arrayOfECBlocks10[3] = new ECBlocks(28, arrayOfECB40);
    arrayOfVersion[9] = new Version(10, arrayOfInt10, arrayOfECBlocks10);
    int[] arrayOfInt11 = { 6, 30, 54 };
    ECBlocks[] arrayOfECBlocks11 = new ECBlocks[4];
    ECB[] arrayOfECB41 = new ECB[1];
    arrayOfECB41[0] = new ECB(4, 81);
    arrayOfECBlocks11[0] = new ECBlocks(20, arrayOfECB41);
    ECB[] arrayOfECB42 = new ECB[2];
    arrayOfECB42[0] = new ECB(1, 50);
    arrayOfECB42[1] = new ECB(4, 51);
    arrayOfECBlocks11[1] = new ECBlocks(30, arrayOfECB42);
    ECB[] arrayOfECB43 = new ECB[2];
    arrayOfECB43[0] = new ECB(4, 22);
    arrayOfECB43[1] = new ECB(4, 23);
    arrayOfECBlocks11[2] = new ECBlocks(28, arrayOfECB43);
    ECB[] arrayOfECB44 = new ECB[2];
    arrayOfECB44[0] = new ECB(3, 12);
    arrayOfECB44[1] = new ECB(8, 13);
    arrayOfECBlocks11[3] = new ECBlocks(24, arrayOfECB44);
    arrayOfVersion[10] = new Version(11, arrayOfInt11, arrayOfECBlocks11);
    int[] arrayOfInt12 = { 6, 32, 58 };
    ECBlocks[] arrayOfECBlocks12 = new ECBlocks[4];
    ECB[] arrayOfECB45 = new ECB[2];
    arrayOfECB45[0] = new ECB(2, 92);
    arrayOfECB45[1] = new ECB(2, 93);
    arrayOfECBlocks12[0] = new ECBlocks(24, arrayOfECB45);
    ECB[] arrayOfECB46 = new ECB[2];
    arrayOfECB46[0] = new ECB(6, 36);
    arrayOfECB46[1] = new ECB(2, 37);
    arrayOfECBlocks12[1] = new ECBlocks(22, arrayOfECB46);
    ECB[] arrayOfECB47 = new ECB[2];
    arrayOfECB47[0] = new ECB(4, 20);
    arrayOfECB47[1] = new ECB(6, 21);
    arrayOfECBlocks12[2] = new ECBlocks(26, arrayOfECB47);
    ECB[] arrayOfECB48 = new ECB[2];
    arrayOfECB48[0] = new ECB(7, 14);
    arrayOfECB48[1] = new ECB(4, 15);
    arrayOfECBlocks12[3] = new ECBlocks(28, arrayOfECB48);
    arrayOfVersion[11] = new Version(12, arrayOfInt12, arrayOfECBlocks12);
    int[] arrayOfInt13 = { 6, 34, 62 };
    ECBlocks[] arrayOfECBlocks13 = new ECBlocks[4];
    ECB[] arrayOfECB49 = new ECB[1];
    arrayOfECB49[0] = new ECB(4, 107);
    arrayOfECBlocks13[0] = new ECBlocks(26, arrayOfECB49);
    ECB[] arrayOfECB50 = new ECB[2];
    arrayOfECB50[0] = new ECB(8, 37);
    arrayOfECB50[1] = new ECB(1, 38);
    arrayOfECBlocks13[1] = new ECBlocks(22, arrayOfECB50);
    ECB[] arrayOfECB51 = new ECB[2];
    arrayOfECB51[0] = new ECB(8, 20);
    arrayOfECB51[1] = new ECB(4, 21);
    arrayOfECBlocks13[2] = new ECBlocks(24, arrayOfECB51);
    ECB[] arrayOfECB52 = new ECB[2];
    arrayOfECB52[0] = new ECB(12, 11);
    arrayOfECB52[1] = new ECB(4, 12);
    arrayOfECBlocks13[3] = new ECBlocks(22, arrayOfECB52);
    arrayOfVersion[12] = new Version(13, arrayOfInt13, arrayOfECBlocks13);
    int[] arrayOfInt14 = { 6, 26, 46, 66 };
    ECBlocks[] arrayOfECBlocks14 = new ECBlocks[4];
    ECB[] arrayOfECB53 = new ECB[2];
    arrayOfECB53[0] = new ECB(3, 115);
    arrayOfECB53[1] = new ECB(1, 116);
    arrayOfECBlocks14[0] = new ECBlocks(30, arrayOfECB53);
    ECB[] arrayOfECB54 = new ECB[2];
    arrayOfECB54[0] = new ECB(4, 40);
    arrayOfECB54[1] = new ECB(5, 41);
    arrayOfECBlocks14[1] = new ECBlocks(24, arrayOfECB54);
    ECB[] arrayOfECB55 = new ECB[2];
    arrayOfECB55[0] = new ECB(11, 16);
    arrayOfECB55[1] = new ECB(5, 17);
    arrayOfECBlocks14[2] = new ECBlocks(20, arrayOfECB55);
    ECB[] arrayOfECB56 = new ECB[2];
    arrayOfECB56[0] = new ECB(11, 12);
    arrayOfECB56[1] = new ECB(5, 13);
    arrayOfECBlocks14[3] = new ECBlocks(24, arrayOfECB56);
    arrayOfVersion[13] = new Version(14, arrayOfInt14, arrayOfECBlocks14);
    int[] arrayOfInt15 = { 6, 26, 48, 70 };
    ECBlocks[] arrayOfECBlocks15 = new ECBlocks[4];
    ECB[] arrayOfECB57 = new ECB[2];
    arrayOfECB57[0] = new ECB(5, 87);
    arrayOfECB57[1] = new ECB(1, 88);
    arrayOfECBlocks15[0] = new ECBlocks(22, arrayOfECB57);
    ECB[] arrayOfECB58 = new ECB[2];
    arrayOfECB58[0] = new ECB(5, 41);
    arrayOfECB58[1] = new ECB(5, 42);
    arrayOfECBlocks15[1] = new ECBlocks(24, arrayOfECB58);
    ECB[] arrayOfECB59 = new ECB[2];
    arrayOfECB59[0] = new ECB(5, 24);
    arrayOfECB59[1] = new ECB(7, 25);
    arrayOfECBlocks15[2] = new ECBlocks(30, arrayOfECB59);
    ECB[] arrayOfECB60 = new ECB[2];
    arrayOfECB60[0] = new ECB(11, 12);
    arrayOfECB60[1] = new ECB(7, 13);
    arrayOfECBlocks15[3] = new ECBlocks(24, arrayOfECB60);
    arrayOfVersion[14] = new Version(15, arrayOfInt15, arrayOfECBlocks15);
    int[] arrayOfInt16 = { 6, 26, 50, 74 };
    ECBlocks[] arrayOfECBlocks16 = new ECBlocks[4];
    ECB[] arrayOfECB61 = new ECB[2];
    arrayOfECB61[0] = new ECB(5, 98);
    arrayOfECB61[1] = new ECB(1, 99);
    arrayOfECBlocks16[0] = new ECBlocks(24, arrayOfECB61);
    ECB[] arrayOfECB62 = new ECB[2];
    arrayOfECB62[0] = new ECB(7, 45);
    arrayOfECB62[1] = new ECB(3, 46);
    arrayOfECBlocks16[1] = new ECBlocks(28, arrayOfECB62);
    ECB[] arrayOfECB63 = new ECB[2];
    arrayOfECB63[0] = new ECB(15, 19);
    arrayOfECB63[1] = new ECB(2, 20);
    arrayOfECBlocks16[2] = new ECBlocks(24, arrayOfECB63);
    ECB[] arrayOfECB64 = new ECB[2];
    arrayOfECB64[0] = new ECB(3, 15);
    arrayOfECB64[1] = new ECB(13, 16);
    arrayOfECBlocks16[3] = new ECBlocks(30, arrayOfECB64);
    arrayOfVersion[15] = new Version(16, arrayOfInt16, arrayOfECBlocks16);
    int[] arrayOfInt17 = { 6, 30, 54, 78 };
    ECBlocks[] arrayOfECBlocks17 = new ECBlocks[4];
    ECB[] arrayOfECB65 = new ECB[2];
    arrayOfECB65[0] = new ECB(1, 107);
    arrayOfECB65[1] = new ECB(5, 108);
    arrayOfECBlocks17[0] = new ECBlocks(28, arrayOfECB65);
    ECB[] arrayOfECB66 = new ECB[2];
    arrayOfECB66[0] = new ECB(10, 46);
    arrayOfECB66[1] = new ECB(1, 47);
    arrayOfECBlocks17[1] = new ECBlocks(28, arrayOfECB66);
    ECB[] arrayOfECB67 = new ECB[2];
    arrayOfECB67[0] = new ECB(1, 22);
    arrayOfECB67[1] = new ECB(15, 23);
    arrayOfECBlocks17[2] = new ECBlocks(28, arrayOfECB67);
    ECB[] arrayOfECB68 = new ECB[2];
    arrayOfECB68[0] = new ECB(2, 14);
    arrayOfECB68[1] = new ECB(17, 15);
    arrayOfECBlocks17[3] = new ECBlocks(28, arrayOfECB68);
    arrayOfVersion[16] = new Version(17, arrayOfInt17, arrayOfECBlocks17);
    int[] arrayOfInt18 = { 6, 30, 56, 82 };
    ECBlocks[] arrayOfECBlocks18 = new ECBlocks[4];
    ECB[] arrayOfECB69 = new ECB[2];
    arrayOfECB69[0] = new ECB(5, 120);
    arrayOfECB69[1] = new ECB(1, 121);
    arrayOfECBlocks18[0] = new ECBlocks(30, arrayOfECB69);
    ECB[] arrayOfECB70 = new ECB[2];
    arrayOfECB70[0] = new ECB(9, 43);
    arrayOfECB70[1] = new ECB(4, 44);
    arrayOfECBlocks18[1] = new ECBlocks(26, arrayOfECB70);
    ECB[] arrayOfECB71 = new ECB[2];
    arrayOfECB71[0] = new ECB(17, 22);
    arrayOfECB71[1] = new ECB(1, 23);
    arrayOfECBlocks18[2] = new ECBlocks(28, arrayOfECB71);
    ECB[] arrayOfECB72 = new ECB[2];
    arrayOfECB72[0] = new ECB(2, 14);
    arrayOfECB72[1] = new ECB(19, 15);
    arrayOfECBlocks18[3] = new ECBlocks(28, arrayOfECB72);
    arrayOfVersion[17] = new Version(18, arrayOfInt18, arrayOfECBlocks18);
    int[] arrayOfInt19 = { 6, 30, 58, 86 };
    ECBlocks[] arrayOfECBlocks19 = new ECBlocks[4];
    ECB[] arrayOfECB73 = new ECB[2];
    arrayOfECB73[0] = new ECB(3, 113);
    arrayOfECB73[1] = new ECB(4, 114);
    arrayOfECBlocks19[0] = new ECBlocks(28, arrayOfECB73);
    ECB[] arrayOfECB74 = new ECB[2];
    arrayOfECB74[0] = new ECB(3, 44);
    arrayOfECB74[1] = new ECB(11, 45);
    arrayOfECBlocks19[1] = new ECBlocks(26, arrayOfECB74);
    ECB[] arrayOfECB75 = new ECB[2];
    arrayOfECB75[0] = new ECB(17, 21);
    arrayOfECB75[1] = new ECB(4, 22);
    arrayOfECBlocks19[2] = new ECBlocks(26, arrayOfECB75);
    ECB[] arrayOfECB76 = new ECB[2];
    arrayOfECB76[0] = new ECB(9, 13);
    arrayOfECB76[1] = new ECB(16, 14);
    arrayOfECBlocks19[3] = new ECBlocks(26, arrayOfECB76);
    arrayOfVersion[18] = new Version(19, arrayOfInt19, arrayOfECBlocks19);
    int[] arrayOfInt20 = { 6, 34, 62, 90 };
    ECBlocks[] arrayOfECBlocks20 = new ECBlocks[4];
    ECB[] arrayOfECB77 = new ECB[2];
    arrayOfECB77[0] = new ECB(3, 107);
    arrayOfECB77[1] = new ECB(5, 108);
    arrayOfECBlocks20[0] = new ECBlocks(28, arrayOfECB77);
    ECB[] arrayOfECB78 = new ECB[2];
    arrayOfECB78[0] = new ECB(3, 41);
    arrayOfECB78[1] = new ECB(13, 42);
    arrayOfECBlocks20[1] = new ECBlocks(26, arrayOfECB78);
    ECB[] arrayOfECB79 = new ECB[2];
    arrayOfECB79[0] = new ECB(15, 24);
    arrayOfECB79[1] = new ECB(5, 25);
    arrayOfECBlocks20[2] = new ECBlocks(30, arrayOfECB79);
    ECB[] arrayOfECB80 = new ECB[2];
    arrayOfECB80[0] = new ECB(15, 15);
    arrayOfECB80[1] = new ECB(10, 16);
    arrayOfECBlocks20[3] = new ECBlocks(28, arrayOfECB80);
    arrayOfVersion[19] = new Version(20, arrayOfInt20, arrayOfECBlocks20);
    int[] arrayOfInt21 = { 6, 28, 50, 72, 94 };
    ECBlocks[] arrayOfECBlocks21 = new ECBlocks[4];
    ECB[] arrayOfECB81 = new ECB[2];
    arrayOfECB81[0] = new ECB(4, 116);
    arrayOfECB81[1] = new ECB(4, 117);
    arrayOfECBlocks21[0] = new ECBlocks(28, arrayOfECB81);
    ECB[] arrayOfECB82 = new ECB[1];
    arrayOfECB82[0] = new ECB(17, 42);
    arrayOfECBlocks21[1] = new ECBlocks(26, arrayOfECB82);
    ECB[] arrayOfECB83 = new ECB[2];
    arrayOfECB83[0] = new ECB(17, 22);
    arrayOfECB83[1] = new ECB(6, 23);
    arrayOfECBlocks21[2] = new ECBlocks(28, arrayOfECB83);
    ECB[] arrayOfECB84 = new ECB[2];
    arrayOfECB84[0] = new ECB(19, 16);
    arrayOfECB84[1] = new ECB(6, 17);
    arrayOfECBlocks21[3] = new ECBlocks(30, arrayOfECB84);
    arrayOfVersion[20] = new Version(21, arrayOfInt21, arrayOfECBlocks21);
    int[] arrayOfInt22 = { 6, 26, 50, 74, 98 };
    ECBlocks[] arrayOfECBlocks22 = new ECBlocks[4];
    ECB[] arrayOfECB85 = new ECB[2];
    arrayOfECB85[0] = new ECB(2, 111);
    arrayOfECB85[1] = new ECB(7, 112);
    arrayOfECBlocks22[0] = new ECBlocks(28, arrayOfECB85);
    ECB[] arrayOfECB86 = new ECB[1];
    arrayOfECB86[0] = new ECB(17, 46);
    arrayOfECBlocks22[1] = new ECBlocks(28, arrayOfECB86);
    ECB[] arrayOfECB87 = new ECB[2];
    arrayOfECB87[0] = new ECB(7, 24);
    arrayOfECB87[1] = new ECB(16, 25);
    arrayOfECBlocks22[2] = new ECBlocks(30, arrayOfECB87);
    ECB[] arrayOfECB88 = new ECB[1];
    arrayOfECB88[0] = new ECB(34, 13);
    arrayOfECBlocks22[3] = new ECBlocks(24, arrayOfECB88);
    arrayOfVersion[21] = new Version(22, arrayOfInt22, arrayOfECBlocks22);
    int[] arrayOfInt23 = { 6, 30, 54, 78, 102 };
    ECBlocks[] arrayOfECBlocks23 = new ECBlocks[4];
    ECB[] arrayOfECB89 = new ECB[2];
    arrayOfECB89[0] = new ECB(4, 121);
    arrayOfECB89[1] = new ECB(5, 122);
    arrayOfECBlocks23[0] = new ECBlocks(30, arrayOfECB89);
    ECB[] arrayOfECB90 = new ECB[2];
    arrayOfECB90[0] = new ECB(4, 47);
    arrayOfECB90[1] = new ECB(14, 48);
    arrayOfECBlocks23[1] = new ECBlocks(28, arrayOfECB90);
    ECB[] arrayOfECB91 = new ECB[2];
    arrayOfECB91[0] = new ECB(11, 24);
    arrayOfECB91[1] = new ECB(14, 25);
    arrayOfECBlocks23[2] = new ECBlocks(30, arrayOfECB91);
    ECB[] arrayOfECB92 = new ECB[2];
    arrayOfECB92[0] = new ECB(16, 15);
    arrayOfECB92[1] = new ECB(14, 16);
    arrayOfECBlocks23[3] = new ECBlocks(30, arrayOfECB92);
    arrayOfVersion[22] = new Version(23, arrayOfInt23, arrayOfECBlocks23);
    int[] arrayOfInt24 = { 6, 28, 54, 80, 106 };
    ECBlocks[] arrayOfECBlocks24 = new ECBlocks[4];
    ECB[] arrayOfECB93 = new ECB[2];
    arrayOfECB93[0] = new ECB(6, 117);
    arrayOfECB93[1] = new ECB(4, 118);
    arrayOfECBlocks24[0] = new ECBlocks(30, arrayOfECB93);
    ECB[] arrayOfECB94 = new ECB[2];
    arrayOfECB94[0] = new ECB(6, 45);
    arrayOfECB94[1] = new ECB(14, 46);
    arrayOfECBlocks24[1] = new ECBlocks(28, arrayOfECB94);
    ECB[] arrayOfECB95 = new ECB[2];
    arrayOfECB95[0] = new ECB(11, 24);
    arrayOfECB95[1] = new ECB(16, 25);
    arrayOfECBlocks24[2] = new ECBlocks(30, arrayOfECB95);
    ECB[] arrayOfECB96 = new ECB[2];
    arrayOfECB96[0] = new ECB(30, 16);
    arrayOfECB96[1] = new ECB(2, 17);
    arrayOfECBlocks24[3] = new ECBlocks(30, arrayOfECB96);
    arrayOfVersion[23] = new Version(24, arrayOfInt24, arrayOfECBlocks24);
    int[] arrayOfInt25 = { 6, 32, 58, 84, 110 };
    ECBlocks[] arrayOfECBlocks25 = new ECBlocks[4];
    ECB[] arrayOfECB97 = new ECB[2];
    arrayOfECB97[0] = new ECB(8, 106);
    arrayOfECB97[1] = new ECB(4, 107);
    arrayOfECBlocks25[0] = new ECBlocks(26, arrayOfECB97);
    ECB[] arrayOfECB98 = new ECB[2];
    arrayOfECB98[0] = new ECB(8, 47);
    arrayOfECB98[1] = new ECB(13, 48);
    arrayOfECBlocks25[1] = new ECBlocks(28, arrayOfECB98);
    ECB[] arrayOfECB99 = new ECB[2];
    arrayOfECB99[0] = new ECB(7, 24);
    arrayOfECB99[1] = new ECB(22, 25);
    arrayOfECBlocks25[2] = new ECBlocks(30, arrayOfECB99);
    ECB[] arrayOfECB100 = new ECB[2];
    arrayOfECB100[0] = new ECB(22, 15);
    arrayOfECB100[1] = new ECB(13, 16);
    arrayOfECBlocks25[3] = new ECBlocks(30, arrayOfECB100);
    arrayOfVersion[24] = new Version(25, arrayOfInt25, arrayOfECBlocks25);
    int[] arrayOfInt26 = { 6, 30, 58, 86, 114 };
    ECBlocks[] arrayOfECBlocks26 = new ECBlocks[4];
    ECB[] arrayOfECB101 = new ECB[2];
    arrayOfECB101[0] = new ECB(10, 114);
    arrayOfECB101[1] = new ECB(2, 115);
    arrayOfECBlocks26[0] = new ECBlocks(28, arrayOfECB101);
    ECB[] arrayOfECB102 = new ECB[2];
    arrayOfECB102[0] = new ECB(19, 46);
    arrayOfECB102[1] = new ECB(4, 47);
    arrayOfECBlocks26[1] = new ECBlocks(28, arrayOfECB102);
    ECB[] arrayOfECB103 = new ECB[2];
    arrayOfECB103[0] = new ECB(28, 22);
    arrayOfECB103[1] = new ECB(6, 23);
    arrayOfECBlocks26[2] = new ECBlocks(28, arrayOfECB103);
    ECB[] arrayOfECB104 = new ECB[2];
    arrayOfECB104[0] = new ECB(33, 16);
    arrayOfECB104[1] = new ECB(4, 17);
    arrayOfECBlocks26[3] = new ECBlocks(30, arrayOfECB104);
    arrayOfVersion[25] = new Version(26, arrayOfInt26, arrayOfECBlocks26);
    int[] arrayOfInt27 = { 6, 34, 62, 90, 118 };
    ECBlocks[] arrayOfECBlocks27 = new ECBlocks[4];
    ECB[] arrayOfECB105 = new ECB[2];
    arrayOfECB105[0] = new ECB(8, 122);
    arrayOfECB105[1] = new ECB(4, 123);
    arrayOfECBlocks27[0] = new ECBlocks(30, arrayOfECB105);
    ECB[] arrayOfECB106 = new ECB[2];
    arrayOfECB106[0] = new ECB(22, 45);
    arrayOfECB106[1] = new ECB(3, 46);
    arrayOfECBlocks27[1] = new ECBlocks(28, arrayOfECB106);
    ECB[] arrayOfECB107 = new ECB[2];
    arrayOfECB107[0] = new ECB(8, 23);
    arrayOfECB107[1] = new ECB(26, 24);
    arrayOfECBlocks27[2] = new ECBlocks(30, arrayOfECB107);
    ECB[] arrayOfECB108 = new ECB[2];
    arrayOfECB108[0] = new ECB(12, 15);
    arrayOfECB108[1] = new ECB(28, 16);
    arrayOfECBlocks27[3] = new ECBlocks(30, arrayOfECB108);
    arrayOfVersion[26] = new Version(27, arrayOfInt27, arrayOfECBlocks27);
    int[] arrayOfInt28 = { 6, 26, 50, 74, 98, 122 };
    ECBlocks[] arrayOfECBlocks28 = new ECBlocks[4];
    ECB[] arrayOfECB109 = new ECB[2];
    arrayOfECB109[0] = new ECB(3, 117);
    arrayOfECB109[1] = new ECB(10, 118);
    arrayOfECBlocks28[0] = new ECBlocks(30, arrayOfECB109);
    ECB[] arrayOfECB110 = new ECB[2];
    arrayOfECB110[0] = new ECB(3, 45);
    arrayOfECB110[1] = new ECB(23, 46);
    arrayOfECBlocks28[1] = new ECBlocks(28, arrayOfECB110);
    ECB[] arrayOfECB111 = new ECB[2];
    arrayOfECB111[0] = new ECB(4, 24);
    arrayOfECB111[1] = new ECB(31, 25);
    arrayOfECBlocks28[2] = new ECBlocks(30, arrayOfECB111);
    ECB[] arrayOfECB112 = new ECB[2];
    arrayOfECB112[0] = new ECB(11, 15);
    arrayOfECB112[1] = new ECB(31, 16);
    arrayOfECBlocks28[3] = new ECBlocks(30, arrayOfECB112);
    arrayOfVersion[27] = new Version(28, arrayOfInt28, arrayOfECBlocks28);
    int[] arrayOfInt29 = { 6, 30, 54, 78, 102, 126 };
    ECBlocks[] arrayOfECBlocks29 = new ECBlocks[4];
    ECB[] arrayOfECB113 = new ECB[2];
    arrayOfECB113[0] = new ECB(7, 116);
    arrayOfECB113[1] = new ECB(7, 117);
    arrayOfECBlocks29[0] = new ECBlocks(30, arrayOfECB113);
    ECB[] arrayOfECB114 = new ECB[2];
    arrayOfECB114[0] = new ECB(21, 45);
    arrayOfECB114[1] = new ECB(7, 46);
    arrayOfECBlocks29[1] = new ECBlocks(28, arrayOfECB114);
    ECB[] arrayOfECB115 = new ECB[2];
    arrayOfECB115[0] = new ECB(1, 23);
    arrayOfECB115[1] = new ECB(37, 24);
    arrayOfECBlocks29[2] = new ECBlocks(30, arrayOfECB115);
    ECB[] arrayOfECB116 = new ECB[2];
    arrayOfECB116[0] = new ECB(19, 15);
    arrayOfECB116[1] = new ECB(26, 16);
    arrayOfECBlocks29[3] = new ECBlocks(30, arrayOfECB116);
    arrayOfVersion[28] = new Version(29, arrayOfInt29, arrayOfECBlocks29);
    int[] arrayOfInt30 = { 6, 26, 52, 78, 104, 130 };
    ECBlocks[] arrayOfECBlocks30 = new ECBlocks[4];
    ECB[] arrayOfECB117 = new ECB[2];
    arrayOfECB117[0] = new ECB(5, 115);
    arrayOfECB117[1] = new ECB(10, 116);
    arrayOfECBlocks30[0] = new ECBlocks(30, arrayOfECB117);
    ECB[] arrayOfECB118 = new ECB[2];
    arrayOfECB118[0] = new ECB(19, 47);
    arrayOfECB118[1] = new ECB(10, 48);
    arrayOfECBlocks30[1] = new ECBlocks(28, arrayOfECB118);
    ECB[] arrayOfECB119 = new ECB[2];
    arrayOfECB119[0] = new ECB(15, 24);
    arrayOfECB119[1] = new ECB(25, 25);
    arrayOfECBlocks30[2] = new ECBlocks(30, arrayOfECB119);
    ECB[] arrayOfECB120 = new ECB[2];
    arrayOfECB120[0] = new ECB(23, 15);
    arrayOfECB120[1] = new ECB(25, 16);
    arrayOfECBlocks30[3] = new ECBlocks(30, arrayOfECB120);
    arrayOfVersion[29] = new Version(30, arrayOfInt30, arrayOfECBlocks30);
    int[] arrayOfInt31 = { 6, 30, 56, 82, 108, 134 };
    ECBlocks[] arrayOfECBlocks31 = new ECBlocks[4];
    ECB[] arrayOfECB121 = new ECB[2];
    arrayOfECB121[0] = new ECB(13, 115);
    arrayOfECB121[1] = new ECB(3, 116);
    arrayOfECBlocks31[0] = new ECBlocks(30, arrayOfECB121);
    ECB[] arrayOfECB122 = new ECB[2];
    arrayOfECB122[0] = new ECB(2, 46);
    arrayOfECB122[1] = new ECB(29, 47);
    arrayOfECBlocks31[1] = new ECBlocks(28, arrayOfECB122);
    ECB[] arrayOfECB123 = new ECB[2];
    arrayOfECB123[0] = new ECB(42, 24);
    arrayOfECB123[1] = new ECB(1, 25);
    arrayOfECBlocks31[2] = new ECBlocks(30, arrayOfECB123);
    ECB[] arrayOfECB124 = new ECB[2];
    arrayOfECB124[0] = new ECB(23, 15);
    arrayOfECB124[1] = new ECB(28, 16);
    arrayOfECBlocks31[3] = new ECBlocks(30, arrayOfECB124);
    arrayOfVersion[30] = new Version(31, arrayOfInt31, arrayOfECBlocks31);
    int[] arrayOfInt32 = { 6, 34, 60, 86, 112, 138 };
    ECBlocks[] arrayOfECBlocks32 = new ECBlocks[4];
    ECB[] arrayOfECB125 = new ECB[1];
    arrayOfECB125[0] = new ECB(17, 115);
    arrayOfECBlocks32[0] = new ECBlocks(30, arrayOfECB125);
    ECB[] arrayOfECB126 = new ECB[2];
    arrayOfECB126[0] = new ECB(10, 46);
    arrayOfECB126[1] = new ECB(23, 47);
    arrayOfECBlocks32[1] = new ECBlocks(28, arrayOfECB126);
    ECB[] arrayOfECB127 = new ECB[2];
    arrayOfECB127[0] = new ECB(10, 24);
    arrayOfECB127[1] = new ECB(35, 25);
    arrayOfECBlocks32[2] = new ECBlocks(30, arrayOfECB127);
    ECB[] arrayOfECB128 = new ECB[2];
    arrayOfECB128[0] = new ECB(19, 15);
    arrayOfECB128[1] = new ECB(35, 16);
    arrayOfECBlocks32[3] = new ECBlocks(30, arrayOfECB128);
    arrayOfVersion[31] = new Version(32, arrayOfInt32, arrayOfECBlocks32);
    int[] arrayOfInt33 = { 6, 30, 58, 86, 114, 142 };
    ECBlocks[] arrayOfECBlocks33 = new ECBlocks[4];
    ECB[] arrayOfECB129 = new ECB[2];
    arrayOfECB129[0] = new ECB(17, 115);
    arrayOfECB129[1] = new ECB(1, 116);
    arrayOfECBlocks33[0] = new ECBlocks(30, arrayOfECB129);
    ECB[] arrayOfECB130 = new ECB[2];
    arrayOfECB130[0] = new ECB(14, 46);
    arrayOfECB130[1] = new ECB(21, 47);
    arrayOfECBlocks33[1] = new ECBlocks(28, arrayOfECB130);
    ECB[] arrayOfECB131 = new ECB[2];
    arrayOfECB131[0] = new ECB(29, 24);
    arrayOfECB131[1] = new ECB(19, 25);
    arrayOfECBlocks33[2] = new ECBlocks(30, arrayOfECB131);
    ECB[] arrayOfECB132 = new ECB[2];
    arrayOfECB132[0] = new ECB(11, 15);
    arrayOfECB132[1] = new ECB(46, 16);
    arrayOfECBlocks33[3] = new ECBlocks(30, arrayOfECB132);
    arrayOfVersion[32] = new Version(33, arrayOfInt33, arrayOfECBlocks33);
    int[] arrayOfInt34 = { 6, 34, 62, 90, 118, 146 };
    ECBlocks[] arrayOfECBlocks34 = new ECBlocks[4];
    ECB[] arrayOfECB133 = new ECB[2];
    arrayOfECB133[0] = new ECB(13, 115);
    arrayOfECB133[1] = new ECB(6, 116);
    arrayOfECBlocks34[0] = new ECBlocks(30, arrayOfECB133);
    ECB[] arrayOfECB134 = new ECB[2];
    arrayOfECB134[0] = new ECB(14, 46);
    arrayOfECB134[1] = new ECB(23, 47);
    arrayOfECBlocks34[1] = new ECBlocks(28, arrayOfECB134);
    ECB[] arrayOfECB135 = new ECB[2];
    arrayOfECB135[0] = new ECB(44, 24);
    arrayOfECB135[1] = new ECB(7, 25);
    arrayOfECBlocks34[2] = new ECBlocks(30, arrayOfECB135);
    ECB[] arrayOfECB136 = new ECB[2];
    arrayOfECB136[0] = new ECB(59, 16);
    arrayOfECB136[1] = new ECB(1, 17);
    arrayOfECBlocks34[3] = new ECBlocks(30, arrayOfECB136);
    arrayOfVersion[33] = new Version(34, arrayOfInt34, arrayOfECBlocks34);
    int[] arrayOfInt35 = { 6, 30, 54, 78, 102, 126, 150 };
    ECBlocks[] arrayOfECBlocks35 = new ECBlocks[4];
    ECB[] arrayOfECB137 = new ECB[2];
    arrayOfECB137[0] = new ECB(12, 121);
    arrayOfECB137[1] = new ECB(7, 122);
    arrayOfECBlocks35[0] = new ECBlocks(30, arrayOfECB137);
    ECB[] arrayOfECB138 = new ECB[2];
    arrayOfECB138[0] = new ECB(12, 47);
    arrayOfECB138[1] = new ECB(26, 48);
    arrayOfECBlocks35[1] = new ECBlocks(28, arrayOfECB138);
    ECB[] arrayOfECB139 = new ECB[2];
    arrayOfECB139[0] = new ECB(39, 24);
    arrayOfECB139[1] = new ECB(14, 25);
    arrayOfECBlocks35[2] = new ECBlocks(30, arrayOfECB139);
    ECB[] arrayOfECB140 = new ECB[2];
    arrayOfECB140[0] = new ECB(22, 15);
    arrayOfECB140[1] = new ECB(41, 16);
    arrayOfECBlocks35[3] = new ECBlocks(30, arrayOfECB140);
    arrayOfVersion[34] = new Version(35, arrayOfInt35, arrayOfECBlocks35);
    int[] arrayOfInt36 = { 6, 24, 50, 76, 102, 128, 154 };
    ECBlocks[] arrayOfECBlocks36 = new ECBlocks[4];
    ECB[] arrayOfECB141 = new ECB[2];
    arrayOfECB141[0] = new ECB(6, 121);
    arrayOfECB141[1] = new ECB(14, 122);
    arrayOfECBlocks36[0] = new ECBlocks(30, arrayOfECB141);
    ECB[] arrayOfECB142 = new ECB[2];
    arrayOfECB142[0] = new ECB(6, 47);
    arrayOfECB142[1] = new ECB(34, 48);
    arrayOfECBlocks36[1] = new ECBlocks(28, arrayOfECB142);
    ECB[] arrayOfECB143 = new ECB[2];
    arrayOfECB143[0] = new ECB(46, 24);
    arrayOfECB143[1] = new ECB(10, 25);
    arrayOfECBlocks36[2] = new ECBlocks(30, arrayOfECB143);
    ECB[] arrayOfECB144 = new ECB[2];
    arrayOfECB144[0] = new ECB(2, 15);
    arrayOfECB144[1] = new ECB(64, 16);
    arrayOfECBlocks36[3] = new ECBlocks(30, arrayOfECB144);
    arrayOfVersion[35] = new Version(36, arrayOfInt36, arrayOfECBlocks36);
    int[] arrayOfInt37 = { 6, 28, 54, 80, 106, 132, 158 };
    ECBlocks[] arrayOfECBlocks37 = new ECBlocks[4];
    ECB[] arrayOfECB145 = new ECB[2];
    arrayOfECB145[0] = new ECB(17, 122);
    arrayOfECB145[1] = new ECB(4, 123);
    arrayOfECBlocks37[0] = new ECBlocks(30, arrayOfECB145);
    ECB[] arrayOfECB146 = new ECB[2];
    arrayOfECB146[0] = new ECB(29, 46);
    arrayOfECB146[1] = new ECB(14, 47);
    arrayOfECBlocks37[1] = new ECBlocks(28, arrayOfECB146);
    ECB[] arrayOfECB147 = new ECB[2];
    arrayOfECB147[0] = new ECB(49, 24);
    arrayOfECB147[1] = new ECB(10, 25);
    arrayOfECBlocks37[2] = new ECBlocks(30, arrayOfECB147);
    ECB[] arrayOfECB148 = new ECB[2];
    arrayOfECB148[0] = new ECB(24, 15);
    arrayOfECB148[1] = new ECB(46, 16);
    arrayOfECBlocks37[3] = new ECBlocks(30, arrayOfECB148);
    arrayOfVersion[36] = new Version(37, arrayOfInt37, arrayOfECBlocks37);
    int[] arrayOfInt38 = { 6, 32, 58, 84, 110, 136, 162 };
    ECBlocks[] arrayOfECBlocks38 = new ECBlocks[4];
    ECB[] arrayOfECB149 = new ECB[2];
    arrayOfECB149[0] = new ECB(4, 122);
    arrayOfECB149[1] = new ECB(18, 123);
    arrayOfECBlocks38[0] = new ECBlocks(30, arrayOfECB149);
    ECB[] arrayOfECB150 = new ECB[2];
    arrayOfECB150[0] = new ECB(13, 46);
    arrayOfECB150[1] = new ECB(32, 47);
    arrayOfECBlocks38[1] = new ECBlocks(28, arrayOfECB150);
    ECB[] arrayOfECB151 = new ECB[2];
    arrayOfECB151[0] = new ECB(48, 24);
    arrayOfECB151[1] = new ECB(14, 25);
    arrayOfECBlocks38[2] = new ECBlocks(30, arrayOfECB151);
    ECB[] arrayOfECB152 = new ECB[2];
    arrayOfECB152[0] = new ECB(42, 15);
    arrayOfECB152[1] = new ECB(32, 16);
    arrayOfECBlocks38[3] = new ECBlocks(30, arrayOfECB152);
    arrayOfVersion[37] = new Version(38, arrayOfInt38, arrayOfECBlocks38);
    int[] arrayOfInt39 = { 6, 26, 54, 82, 110, 138, 166 };
    ECBlocks[] arrayOfECBlocks39 = new ECBlocks[4];
    ECB[] arrayOfECB153 = new ECB[2];
    arrayOfECB153[0] = new ECB(20, 117);
    arrayOfECB153[1] = new ECB(4, 118);
    arrayOfECBlocks39[0] = new ECBlocks(30, arrayOfECB153);
    ECB[] arrayOfECB154 = new ECB[2];
    arrayOfECB154[0] = new ECB(40, 47);
    arrayOfECB154[1] = new ECB(7, 48);
    arrayOfECBlocks39[1] = new ECBlocks(28, arrayOfECB154);
    ECB[] arrayOfECB155 = new ECB[2];
    arrayOfECB155[0] = new ECB(43, 24);
    arrayOfECB155[1] = new ECB(22, 25);
    arrayOfECBlocks39[2] = new ECBlocks(30, arrayOfECB155);
    ECB[] arrayOfECB156 = new ECB[2];
    arrayOfECB156[0] = new ECB(10, 15);
    arrayOfECB156[1] = new ECB(67, 16);
    arrayOfECBlocks39[3] = new ECBlocks(30, arrayOfECB156);
    arrayOfVersion[38] = new Version(39, arrayOfInt39, arrayOfECBlocks39);
    int[] arrayOfInt40 = { 6, 30, 58, 86, 114, 142, 170 };
    ECBlocks[] arrayOfECBlocks40 = new ECBlocks[4];
    ECB[] arrayOfECB157 = new ECB[2];
    arrayOfECB157[0] = new ECB(19, 118);
    arrayOfECB157[1] = new ECB(6, 119);
    arrayOfECBlocks40[0] = new ECBlocks(30, arrayOfECB157);
    ECB[] arrayOfECB158 = new ECB[2];
    arrayOfECB158[0] = new ECB(18, 47);
    arrayOfECB158[1] = new ECB(31, 48);
    arrayOfECBlocks40[1] = new ECBlocks(28, arrayOfECB158);
    ECB[] arrayOfECB159 = new ECB[2];
    arrayOfECB159[0] = new ECB(34, 24);
    arrayOfECB159[1] = new ECB(34, 25);
    arrayOfECBlocks40[2] = new ECBlocks(30, arrayOfECB159);
    ECB[] arrayOfECB160 = new ECB[2];
    arrayOfECB160[0] = new ECB(20, 15);
    arrayOfECB160[1] = new ECB(61, 16);
    arrayOfECBlocks40[3] = new ECBlocks(30, arrayOfECB160);
    arrayOfVersion[39] = new Version(40, arrayOfInt40, arrayOfECBlocks40);
    return arrayOfVersion;
  }

  static Version decodeVersionInformation(int paramInt)
  {
    int i = 2147483647;
    int j = 0;
    for (int k = 0; k < VERSION_DECODE_INFO.length; k++)
    {
      int m = VERSION_DECODE_INFO[k];
      if (m == paramInt)
        return getVersionForNumber(k + 7);
      int n = FormatInformation.numBitsDiffering(paramInt, m);
      if (n < i)
      {
        j = k + 7;
        i = n;
      }
    }
    if (i <= 3)
      return getVersionForNumber(j);
    return null;
  }

  public static Version getProvisionalVersionForDimension(int paramInt)
    throws FormatException
  {
    if (paramInt % 4 != 1)
      throw FormatException.getFormatInstance();
    int i = paramInt - 17 >> 2;
    try
    {
      Version localVersion = getVersionForNumber(i);
      return localVersion;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    throw FormatException.getFormatInstance();
  }

  public static Version getVersionForNumber(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 40))
      throw new IllegalArgumentException();
    return VERSIONS[(paramInt - 1)];
  }

  BitMatrix buildFunctionPattern()
  {
    int i = getDimensionForVersion();
    BitMatrix localBitMatrix = new BitMatrix(i);
    localBitMatrix.setRegion(0, 0, 9, 9);
    localBitMatrix.setRegion(i - 8, 0, 8, 9);
    localBitMatrix.setRegion(0, i - 8, 9, 8);
    int j = this.alignmentPatternCenters.length;
    for (int k = 0; k < j; k++)
    {
      int m = -2 + this.alignmentPatternCenters[k];
      int n = 0;
      if (n < j)
      {
        if (((k == 0) && ((n == 0) || (n == j - 1))) || ((k == j - 1) && (n == 0)));
        while (true)
        {
          n++;
          break;
          localBitMatrix.setRegion(-2 + this.alignmentPatternCenters[n], m, 5, 5);
        }
      }
    }
    localBitMatrix.setRegion(6, 9, 1, i - 17);
    localBitMatrix.setRegion(9, 6, i - 17, 1);
    if (this.versionNumber > 6)
    {
      localBitMatrix.setRegion(i - 11, 0, 3, 6);
      localBitMatrix.setRegion(0, i - 11, 6, 3);
    }
    return localBitMatrix;
  }

  public int[] getAlignmentPatternCenters()
  {
    return this.alignmentPatternCenters;
  }

  public int getDimensionForVersion()
  {
    return 17 + 4 * this.versionNumber;
  }

  public ECBlocks getECBlocksForLevel(ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    return this.ecBlocks[paramErrorCorrectionLevel.ordinal()];
  }

  public int getTotalCodewords()
  {
    return this.totalCodewords;
  }

  public int getVersionNumber()
  {
    return this.versionNumber;
  }

  public String toString()
  {
    return String.valueOf(this.versionNumber);
  }

  public static final class ECB
  {
    private final int count;
    private final int dataCodewords;

    ECB(int paramInt1, int paramInt2)
    {
      this.count = paramInt1;
      this.dataCodewords = paramInt2;
    }

    public int getCount()
    {
      return this.count;
    }

    public int getDataCodewords()
    {
      return this.dataCodewords;
    }
  }

  public static final class ECBlocks
  {
    private final Version.ECB[] ecBlocks;
    private final int ecCodewordsPerBlock;

    ECBlocks(int paramInt, Version.ECB[] paramArrayOfECB)
    {
      this.ecCodewordsPerBlock = paramInt;
      this.ecBlocks = paramArrayOfECB;
    }

    public Version.ECB[] getECBlocks()
    {
      return this.ecBlocks;
    }

    public int getECCodewordsPerBlock()
    {
      return this.ecCodewordsPerBlock;
    }

    public int getNumBlocks()
    {
      int i = 0;
      Version.ECB[] arrayOfECB = this.ecBlocks;
      int j = arrayOfECB.length;
      for (int k = 0; k < j; k++)
        i += arrayOfECB[k].getCount();
      return i;
    }

    public int getTotalECCodewords()
    {
      return this.ecCodewordsPerBlock * getNumBlocks();
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Version
 * JD-Core Version:    0.6.2
 */