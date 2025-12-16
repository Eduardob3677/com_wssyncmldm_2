package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import k.Q0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public int f9146a;

    /* renamed from: b, reason: collision with root package name */
    public int f9147b;

    /* renamed from: c, reason: collision with root package name */
    public float f9148c;

    /* renamed from: d, reason: collision with root package name */
    public String f9149d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9150e;
    public int f;

    public b(b bVar, Object obj) {
        bVar.getClass();
        this.f9146a = bVar.f9146a;
        b(obj);
    }

    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap map) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), o.f9312c);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string = null;
        int i5 = 0;
        Object string2 = null;
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i6);
            if (index == 0) {
                string = typedArrayObtainStyledAttributes.getString(index);
                if (string != null && string.length() > 0) {
                    string = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                }
            } else if (index == 1) {
                string2 = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                i5 = 6;
            } else {
                int i7 = 3;
                if (index == 3) {
                    string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                } else {
                    i7 = 4;
                    if (index == 2) {
                        string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                    } else {
                        if (index == 7) {
                            string2 = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                        } else if (index == 4) {
                            string2 = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                        } else {
                            i7 = 5;
                            if (index == 5) {
                                string2 = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                                i5 = 2;
                            } else if (index == 6) {
                                string2 = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                                i5 = 1;
                            } else if (index == 8) {
                                string2 = typedArrayObtainStyledAttributes.getString(index);
                            }
                        }
                        i5 = 7;
                    }
                }
                i5 = i7;
            }
        }
        if (string != null && string2 != null) {
            b bVar = new b();
            bVar.f9146a = i5;
            bVar.b(string2);
            map.put(string, bVar);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (Q0.f(this.f9146a)) {
            case 0:
                this.f9147b = ((Integer) obj).intValue();
                break;
            case 1:
                this.f9148c = ((Float) obj).floatValue();
                break;
            case 2:
            case 3:
                this.f = ((Integer) obj).intValue();
                break;
            case 4:
                this.f9149d = (String) obj;
                break;
            case 5:
                this.f9150e = ((Boolean) obj).booleanValue();
                break;
            case 6:
                this.f9148c = ((Float) obj).floatValue();
                break;
        }
    }
}
