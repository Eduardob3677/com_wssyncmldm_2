package H;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final f f824a = new f();

    /* JADX WARN: Removed duplicated region for block: B:11:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(CharSequence charSequence, int i5) {
        int i6 = 2;
        for (int i7 = 0; i7 < i5 && i6 == 2; i7++) {
            byte directionality = Character.getDirectionality(charSequence.charAt(i7));
            B1.c cVar = g.f825a;
            if (directionality == 0) {
                i6 = 1;
            } else if (directionality != 1 && directionality != 2) {
                switch (directionality) {
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                        break;
                    default:
                        i6 = 2;
                        break;
                }
            } else {
                i6 = 0;
            }
        }
        return i6;
    }
}
