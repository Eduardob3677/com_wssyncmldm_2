package H;

import android.text.SpannableStringBuilder;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final String f814d;

    /* renamed from: e, reason: collision with root package name */
    public static final String f815e;
    public static final b f;

    /* renamed from: g, reason: collision with root package name */
    public static final b f816g;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f817a;

    /* renamed from: b, reason: collision with root package name */
    public final int f818b;

    /* renamed from: c, reason: collision with root package name */
    public final B1.c f819c;

    static {
        B1.c cVar = g.f827c;
        f814d = Character.toString((char) 8206);
        f815e = Character.toString((char) 8207);
        f = new b(false, 2, cVar);
        f816g = new b(true, 2, cVar);
    }

    public b(boolean z4, int i5, B1.c cVar) {
        this.f817a = z4;
        this.f818b = i5;
        this.f819c = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r1 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r2 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r0.f812c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0083, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        r3 = r3 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        if (r1 != r3) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008f, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:?, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(CharSequence charSequence) {
        byte directionality;
        a aVar = new a(charSequence);
        aVar.f812c = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = aVar.f812c;
            if (i8 < aVar.f811b && i5 == 0) {
                CharSequence charSequence2 = aVar.f810a;
                char cCharAt = charSequence2.charAt(i8);
                aVar.f813d = cCharAt;
                if (Character.isHighSurrogate(cCharAt)) {
                    int iCodePointAt = Character.codePointAt(charSequence2, aVar.f812c);
                    aVar.f812c = Character.charCount(iCodePointAt) + aVar.f812c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    aVar.f812c++;
                    char c2 = aVar.f813d;
                    directionality = c2 < 1792 ? a.f809e[c2] : Character.getDirectionality(c2);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i7 == 0) {
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i7++;
                                i6 = -1;
                                continue;
                            case 16:
                            case 17:
                                i7++;
                                i6 = 1;
                                continue;
                            case 18:
                                i7--;
                                i6 = 0;
                                continue;
                        }
                    }
                } else if (i7 == 0) {
                }
                i5 = i7;
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0041, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence);
        aVar.f812c = aVar.f811b;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            while (aVar.f812c > 0) {
                byte bA = aVar.a();
                if (bA != 0) {
                    if (bA == 1 || bA == 2) {
                        if (i5 != 0) {
                            if (i6 == 0) {
                                break;
                            }
                        }
                    } else if (bA != 9) {
                        switch (bA) {
                            case 14:
                            case 15:
                                if (i6 == i5) {
                                    break;
                                }
                                i5--;
                                break;
                            case 16:
                            case 17:
                                if (i6 == i5) {
                                    break;
                                }
                                i5--;
                                break;
                            case 18:
                                i5++;
                                break;
                            default:
                                if (i6 != 0) {
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else {
                        continue;
                    }
                } else if (i5 != 0) {
                    if (i6 == 0) {
                        break;
                    }
                }
            }
            return 0;
        }
        return -1;
    }

    public final SpannableStringBuilder c(CharSequence charSequence, B1.c cVar) {
        if (charSequence == null) {
            return null;
        }
        boolean zD = cVar.d(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i5 = this.f818b & 2;
        String str = "";
        String str2 = f815e;
        String str3 = f814d;
        boolean z4 = this.f817a;
        if (i5 != 0) {
            boolean zD2 = (zD ? g.f826b : g.f825a).d(charSequence, charSequence.length());
            spannableStringBuilder.append((CharSequence) ((z4 || !(zD2 || a(charSequence) == 1)) ? (!z4 || (zD2 && a(charSequence) != -1)) ? "" : str2 : str3));
        }
        if (zD != z4) {
            spannableStringBuilder.append(zD ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zD3 = (zD ? g.f826b : g.f825a).d(charSequence, charSequence.length());
        if (!z4 && (zD3 || b(charSequence) == 1)) {
            str = str3;
        } else if (z4 && (!zD3 || b(charSequence) == -1)) {
            str = str2;
        }
        spannableStringBuilder.append((CharSequence) str);
        return spannableStringBuilder;
    }
}
