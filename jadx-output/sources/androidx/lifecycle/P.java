package androidx.lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import com.samsung.android.knox.ex.KnoxContract;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class P {
    public static final Class[] f = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f4019a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f4020b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f4021c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f4022d;

    /* renamed from: e, reason: collision with root package name */
    public final x0.c f4023e;

    public P(HashMap map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f4019a = linkedHashMap;
        this.f4020b = new LinkedHashMap();
        this.f4021c = new LinkedHashMap();
        this.f4022d = new LinkedHashMap();
        this.f4023e = new androidx.activity.e(1, this);
        linkedHashMap.putAll(map);
    }

    public static Bundle a(P p4) {
        d3.i.e("this$0", p4);
        LinkedHashMap linkedHashMap = p4.f4020b;
        d3.i.e("<this>", linkedHashMap);
        int size = linkedHashMap.size();
        Iterator it = (size != 0 ? size != 1 ? new LinkedHashMap(linkedHashMap) : R2.z.E1(linkedHashMap) : R2.v.f2326c).entrySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            LinkedHashMap linkedHashMap2 = p4.f4019a;
            int i5 = 0;
            if (!zHasNext) {
                Set<String> setKeySet = linkedHashMap2.keySet();
                ArrayList arrayList = new ArrayList(setKeySet.size());
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (String str : setKeySet) {
                    arrayList.add(str);
                    arrayList2.add(linkedHashMap2.get(str));
                }
                Q2.e[] eVarArr = {new Q2.e("keys", arrayList), new Q2.e("values", arrayList2)};
                Bundle bundle = new Bundle(2);
                while (i5 < 2) {
                    Q2.e eVar = eVarArr[i5];
                    String str2 = (String) eVar.f2212c;
                    Object obj = eVar.f2213d;
                    if (obj == null) {
                        bundle.putString(str2, null);
                    } else if (obj instanceof Boolean) {
                        bundle.putBoolean(str2, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof Byte) {
                        bundle.putByte(str2, ((Number) obj).byteValue());
                    } else if (obj instanceof Character) {
                        bundle.putChar(str2, ((Character) obj).charValue());
                    } else if (obj instanceof Double) {
                        bundle.putDouble(str2, ((Number) obj).doubleValue());
                    } else if (obj instanceof Float) {
                        bundle.putFloat(str2, ((Number) obj).floatValue());
                    } else if (obj instanceof Integer) {
                        bundle.putInt(str2, ((Number) obj).intValue());
                    } else if (obj instanceof Long) {
                        bundle.putLong(str2, ((Number) obj).longValue());
                    } else if (obj instanceof Short) {
                        bundle.putShort(str2, ((Number) obj).shortValue());
                    } else if (obj instanceof Bundle) {
                        bundle.putBundle(str2, (Bundle) obj);
                    } else if (obj instanceof CharSequence) {
                        bundle.putCharSequence(str2, (CharSequence) obj);
                    } else if (obj instanceof Parcelable) {
                        bundle.putParcelable(str2, (Parcelable) obj);
                    } else if (obj instanceof boolean[]) {
                        bundle.putBooleanArray(str2, (boolean[]) obj);
                    } else if (obj instanceof byte[]) {
                        bundle.putByteArray(str2, (byte[]) obj);
                    } else if (obj instanceof char[]) {
                        bundle.putCharArray(str2, (char[]) obj);
                    } else if (obj instanceof double[]) {
                        bundle.putDoubleArray(str2, (double[]) obj);
                    } else if (obj instanceof float[]) {
                        bundle.putFloatArray(str2, (float[]) obj);
                    } else if (obj instanceof int[]) {
                        bundle.putIntArray(str2, (int[]) obj);
                    } else if (obj instanceof long[]) {
                        bundle.putLongArray(str2, (long[]) obj);
                    } else if (obj instanceof short[]) {
                        bundle.putShortArray(str2, (short[]) obj);
                    } else if (obj instanceof Object[]) {
                        Class<?> componentType = obj.getClass().getComponentType();
                        d3.i.b(componentType);
                        if (Parcelable.class.isAssignableFrom(componentType)) {
                            bundle.putParcelableArray(str2, (Parcelable[]) obj);
                        } else if (String.class.isAssignableFrom(componentType)) {
                            bundle.putStringArray(str2, (String[]) obj);
                        } else if (CharSequence.class.isAssignableFrom(componentType)) {
                            bundle.putCharSequenceArray(str2, (CharSequence[]) obj);
                        } else {
                            if (!Serializable.class.isAssignableFrom(componentType)) {
                                throw new IllegalArgumentException("Illegal value array type " + componentType.getCanonicalName() + " for key \"" + str2 + '\"');
                            }
                            bundle.putSerializable(str2, (Serializable) obj);
                        }
                    } else if (obj instanceof Serializable) {
                        bundle.putSerializable(str2, (Serializable) obj);
                    } else if (obj instanceof IBinder) {
                        F.c.a(bundle, str2, (IBinder) obj);
                    } else if (obj instanceof Size) {
                        F.d.a(bundle, str2, (Size) obj);
                    } else {
                        if (!(obj instanceof SizeF)) {
                            throw new IllegalArgumentException("Illegal value type " + obj.getClass().getCanonicalName() + " for key \"" + str2 + '\"');
                        }
                        F.d.b(bundle, str2, (SizeF) obj);
                    }
                    i5++;
                }
                return bundle;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str3 = (String) entry.getKey();
            Bundle bundleA = ((x0.c) entry.getValue()).a();
            d3.i.e(KnoxContract.KEY, str3);
            if (bundleA != null) {
                Class[] clsArr = f;
                while (i5 < 29) {
                    Class cls = clsArr[i5];
                    d3.i.b(cls);
                    if (!cls.isInstance(bundleA)) {
                        i5++;
                    }
                }
                throw new IllegalArgumentException("Can't put value with type " + bundleA.getClass() + " into saved state");
            }
            Object obj2 = p4.f4021c.get(str3);
            F f5 = obj2 instanceof F ? (F) obj2 : null;
            if (f5 != null) {
                f5.k(bundleA);
            } else {
                linkedHashMap2.put(str3, bundleA);
            }
            B.f.F(p4.f4022d.get(str3));
        }
    }

    public P() {
        this.f4019a = new LinkedHashMap();
        this.f4020b = new LinkedHashMap();
        this.f4021c = new LinkedHashMap();
        this.f4022d = new LinkedHashMap();
        this.f4023e = new androidx.activity.e(1, this);
    }
}
