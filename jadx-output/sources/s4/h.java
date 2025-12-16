package s4;

import d3.i;
import h3.C0445a;
import h3.C0447c;
import java.util.NoSuchElementException;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public abstract class h extends g {
    public static boolean h(String str, String str2) {
        i.e("<this>", str);
        return l(2, str, str2, false) >= 0;
    }

    public static int i(CharSequence charSequence) {
        i.e("<this>", charSequence);
        return charSequence.length() - 1;
    }

    public static final int j(int i5, CharSequence charSequence, String str, boolean z4) {
        i.e("<this>", charSequence);
        i.e("string", str);
        return (z4 || !(charSequence instanceof String)) ? k(charSequence, str, i5, charSequence.length(), z4, false) : ((String) charSequence).indexOf(str, i5);
    }

    public static final int k(CharSequence charSequence, CharSequence charSequence2, int i5, int i6, boolean z4, boolean z5) {
        C0445a c0445a;
        if (z5) {
            int i7 = i(charSequence);
            if (i5 > i7) {
                i5 = i7;
            }
            if (i6 < 0) {
                i6 = 0;
            }
            c0445a = new C0445a(i5, i6, -1);
        } else {
            if (i5 < 0) {
                i5 = 0;
            }
            int length = charSequence.length();
            if (i6 > length) {
                i6 = length;
            }
            c0445a = new C0447c(i5, i6, 1);
        }
        boolean z6 = charSequence instanceof String;
        int i8 = c0445a.f7004e;
        int i9 = c0445a.f7003d;
        int i10 = c0445a.f7002c;
        if (z6 && (charSequence2 instanceof String)) {
            if ((i8 > 0 && i10 <= i9) || (i8 < 0 && i9 <= i10)) {
                while (true) {
                    String str = (String) charSequence2;
                    String str2 = (String) charSequence;
                    int length2 = ((String) charSequence2).length();
                    i.e("<this>", str);
                    i.e("other", str2);
                    if (!(!z4 ? str.regionMatches(0, str2, i10, length2) : str.regionMatches(z4, 0, str2, i10, length2))) {
                        if (i10 == i9) {
                            break;
                        }
                        i10 += i8;
                    } else {
                        return i10;
                    }
                }
            }
        } else if ((i8 > 0 && i10 <= i9) || (i8 < 0 && i9 <= i10)) {
            while (!o(charSequence2, charSequence, i10, charSequence2.length(), z4)) {
                if (i10 != i9) {
                    i10 += i8;
                }
            }
            return i10;
        }
        return -1;
    }

    public static /* synthetic */ int l(int i5, CharSequence charSequence, String str, boolean z4) {
        if ((i5 & 4) != 0) {
            z4 = false;
        }
        return j(0, charSequence, str, z4);
    }

    public static int m(CharSequence charSequence, char c2, int i5, boolean z4, int i6) {
        int i7;
        boolean z5 = true;
        if ((i6 & 2) != 0) {
            i5 = 0;
        }
        if ((i6 & 4) != 0) {
            z4 = false;
        }
        i.e("<this>", charSequence);
        if (!z4 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c2, i5);
        }
        char[] cArr = {c2};
        if (!z4 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(cArr[0], i5);
        }
        if (i5 < 0) {
            i5 = 0;
        }
        C0447c c0447c = new C0447c(i5, i(charSequence), 1);
        int i8 = c0447c.f7003d;
        int i9 = c0447c.f7004e;
        if (i9 <= 0 ? i5 < i8 : i5 > i8) {
            z5 = false;
        }
        if (!z5) {
            i5 = i8;
        }
        while (z5) {
            if (i5 != i8) {
                i7 = i5 + i9;
            } else {
                if (!z5) {
                    throw new NoSuchElementException();
                }
                i7 = i5;
                z5 = false;
            }
            if (AbstractC0739a.h(cArr[0], charSequence.charAt(i5), z4)) {
                return i5;
            }
            i5 = i7;
        }
        return -1;
    }

    public static int n(String str, String str2) {
        int i5 = i(str);
        i.e("<this>", str);
        return str.lastIndexOf(str2, i5);
    }

    public static final boolean o(CharSequence charSequence, CharSequence charSequence2, int i5, int i6, boolean z4) {
        i.e("<this>", charSequence);
        i.e("other", charSequence2);
        if (i5 < 0 || charSequence.length() - i6 < 0 || i5 > charSequence2.length() - i6) {
            return false;
        }
        for (int i7 = 0; i7 < i6; i7++) {
            if (!AbstractC0739a.h(charSequence.charAt(i7), charSequence2.charAt(i5 + i7), z4)) {
                return false;
            }
        }
        return true;
    }

    public static String p(String str, CharSequence charSequence) {
        i.e("<this>", str);
        if (!(charSequence instanceof String ? s(str, (String) charSequence) : o(str, charSequence, 0, charSequence.length(), false))) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        i.d("this as java.lang.String).substring(startIndex)", strSubstring);
        return strSubstring;
    }

    public static String q(String str, char c2, char c5) {
        i.e("<this>", str);
        String strReplace = str.replace(c2, c5);
        i.d("this as java.lang.String…replace(oldChar, newChar)", strReplace);
        return strReplace;
    }

    public static String r(String str, String str2, String str3) {
        i.e("<this>", str);
        int iJ = j(0, str, str2, false);
        if (iJ < 0) {
            return str;
        }
        int length = str2.length();
        int i5 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i6 = 0;
        do {
            sb.append((CharSequence) str, i6, iJ);
            sb.append(str3);
            i6 = iJ + length;
            if (iJ >= str.length()) {
                break;
            }
            iJ = j(iJ + i5, str, str2, false);
        } while (iJ > 0);
        sb.append((CharSequence) str, i6, str.length());
        String string = sb.toString();
        i.d("stringBuilder.append(this, i, length).toString()", string);
        return string;
    }

    public static boolean s(String str, String str2) {
        i.e("<this>", str);
        i.e("prefix", str2);
        return str.startsWith(str2);
    }

    public static String t(String str, String str2, String str3) {
        i.e("delimiter", str2);
        i.e("missingDelimiterValue", str3);
        int iL = l(6, str, str2, false);
        if (iL == -1) {
            return str3;
        }
        String strSubstring = str.substring(str2.length() + iL, str.length());
        i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public static String u(String str, char c2) {
        i.e("<this>", str);
        i.e("missingDelimiterValue", str);
        int iLastIndexOf = str.lastIndexOf(c2, i(str));
        if (iLastIndexOf == -1) {
            return str;
        }
        String strSubstring = str.substring(iLastIndexOf + 1, str.length());
        i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public static String v(String str, char c2) {
        i.e("<this>", str);
        i.e("missingDelimiterValue", str);
        int iM = m(str, c2, 0, false, 6);
        if (iM == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iM);
        i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }

    public static String w(String str, String str2) {
        i.e("<this>", str);
        i.e("missingDelimiterValue", str);
        int iL = l(6, str, str2, false);
        if (iL == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iL);
        i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring);
        return strSubstring;
    }
}
