package androidx.core.graphics.drawable;

import C.e;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import androidx.versionedparcelable.CustomVersionedParcelable;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: e, reason: collision with root package name */
    public static final PorterDuff.Mode f3607e = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public final int f3608a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3609b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3610c;

    /* renamed from: d, reason: collision with root package name */
    public final PorterDuff.Mode f3611d;

    public IconCompat() {
        this.f3608a = -1;
        this.f3610c = 0;
        this.f3611d = f3607e;
    }

    public final int a() {
        int i5 = this.f3608a;
        if (i5 == -1) {
            return e.a(this.f3609b);
        }
        if (i5 == 2) {
            return this.f3610c;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public final String toString() {
        String str;
        int i5 = this.f3608a;
        if (i5 == -1) {
            return String.valueOf(this.f3609b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (i5) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (i5) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f3609b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f3609b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append((String) null);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(a())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f3610c);
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f3609b);
                break;
        }
        PorterDuff.Mode mode = f3607e;
        PorterDuff.Mode mode2 = this.f3611d;
        if (mode2 != mode) {
            sb.append(" mode=");
            sb.append(mode2);
        }
        sb.append(")");
        return sb.toString();
    }

    public IconCompat(int i5) {
        this.f3610c = 0;
        this.f3611d = f3607e;
        this.f3608a = i5;
    }
}
