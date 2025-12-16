package C;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import androidx.core.graphics.drawable.IconCompat;

/* loaded from: classes.dex */
public abstract class c {
    public static Uri a(Object obj) {
        return e.d(obj);
    }

    public static Drawable b(Icon icon, Context context) {
        return icon.loadDrawable(context);
    }

    public static Icon c(IconCompat iconCompat, Context context) {
        Icon iconCreateWithBitmap;
        String strB;
        Uri uriA;
        int i5 = iconCompat.f3608a;
        switch (i5) {
            case -1:
                return (Icon) iconCompat.f3609b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f3609b);
                break;
            case 2:
                if (i5 == -1) {
                    strB = e.b(iconCompat.f3609b);
                } else {
                    if (i5 != 2) {
                        throw new IllegalStateException("called getResPackage() on " + iconCompat);
                    }
                    iconCompat.getClass();
                    strB = ((String) iconCompat.f3609b).split(":", -1)[0];
                }
                iconCreateWithBitmap = Icon.createWithResource(strB, iconCompat.f3610c);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f3609b, iconCompat.f3610c, 0);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f3609b);
                break;
            case 5:
                iconCreateWithBitmap = d.b((Bitmap) iconCompat.f3609b);
                break;
            case 6:
                if (i5 == -1) {
                    uriA = a(iconCompat.f3609b);
                } else {
                    if (i5 != 4 && i5 != 6) {
                        throw new IllegalStateException("called getUri() on " + iconCompat);
                    }
                    uriA = Uri.parse((String) iconCompat.f3609b);
                }
                iconCreateWithBitmap = f.a(uriA);
                break;
        }
        PorterDuff.Mode mode = IconCompat.f3607e;
        PorterDuff.Mode mode2 = iconCompat.f3611d;
        if (mode2 != mode) {
            iconCreateWithBitmap.setTintMode(mode2);
        }
        return iconCreateWithBitmap;
    }
}
