package H;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f809e = new byte[1792];

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f810a;

    /* renamed from: b, reason: collision with root package name */
    public final int f811b;

    /* renamed from: c, reason: collision with root package name */
    public int f812c;

    /* renamed from: d, reason: collision with root package name */
    public char f813d;

    static {
        for (int i5 = 0; i5 < 1792; i5++) {
            f809e[i5] = Character.getDirectionality(i5);
        }
    }

    public a(CharSequence charSequence) {
        this.f810a = charSequence;
        this.f811b = charSequence.length();
    }

    public final byte a() {
        int i5 = this.f812c - 1;
        CharSequence charSequence = this.f810a;
        char cCharAt = charSequence.charAt(i5);
        this.f813d = cCharAt;
        if (Character.isLowSurrogate(cCharAt)) {
            int iCodePointBefore = Character.codePointBefore(charSequence, this.f812c);
            this.f812c -= Character.charCount(iCodePointBefore);
            return Character.getDirectionality(iCodePointBefore);
        }
        this.f812c--;
        char c2 = this.f813d;
        return c2 < 1792 ? f809e[c2] : Character.getDirectionality(c2);
    }
}
