package u;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import h0.AbstractC0432c;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import k.Q0;
import org.xmlpull.v1.XmlPullParserException;
import q.AbstractC0750a;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f9305d = {0, 4, 8};

    /* renamed from: e, reason: collision with root package name */
    public static final SparseIntArray f9306e;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f9307a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9308b = true;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f9309c = new HashMap();

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f9306e = sparseIntArray;
        sparseIntArray.append(77, 25);
        sparseIntArray.append(78, 26);
        sparseIntArray.append(80, 29);
        sparseIntArray.append(81, 30);
        sparseIntArray.append(87, 36);
        sparseIntArray.append(86, 35);
        sparseIntArray.append(59, 4);
        sparseIntArray.append(58, 3);
        sparseIntArray.append(56, 1);
        sparseIntArray.append(95, 6);
        sparseIntArray.append(96, 7);
        sparseIntArray.append(66, 17);
        sparseIntArray.append(67, 18);
        sparseIntArray.append(68, 19);
        sparseIntArray.append(0, 27);
        sparseIntArray.append(82, 32);
        sparseIntArray.append(83, 33);
        sparseIntArray.append(65, 10);
        sparseIntArray.append(64, 9);
        sparseIntArray.append(99, 13);
        sparseIntArray.append(102, 16);
        sparseIntArray.append(100, 14);
        sparseIntArray.append(97, 11);
        sparseIntArray.append(101, 15);
        sparseIntArray.append(98, 12);
        sparseIntArray.append(90, 40);
        sparseIntArray.append(75, 39);
        sparseIntArray.append(74, 41);
        sparseIntArray.append(89, 42);
        sparseIntArray.append(73, 20);
        sparseIntArray.append(88, 37);
        sparseIntArray.append(63, 5);
        sparseIntArray.append(76, 82);
        sparseIntArray.append(85, 82);
        sparseIntArray.append(79, 82);
        sparseIntArray.append(57, 82);
        sparseIntArray.append(55, 82);
        sparseIntArray.append(5, 24);
        sparseIntArray.append(7, 28);
        sparseIntArray.append(23, 31);
        sparseIntArray.append(24, 8);
        sparseIntArray.append(6, 34);
        sparseIntArray.append(8, 2);
        sparseIntArray.append(3, 23);
        sparseIntArray.append(4, 21);
        sparseIntArray.append(2, 22);
        sparseIntArray.append(13, 43);
        sparseIntArray.append(26, 44);
        sparseIntArray.append(21, 45);
        sparseIntArray.append(22, 46);
        sparseIntArray.append(20, 60);
        sparseIntArray.append(18, 47);
        sparseIntArray.append(19, 48);
        sparseIntArray.append(14, 49);
        sparseIntArray.append(15, 50);
        sparseIntArray.append(16, 51);
        sparseIntArray.append(17, 52);
        sparseIntArray.append(25, 53);
        sparseIntArray.append(91, 54);
        sparseIntArray.append(69, 55);
        sparseIntArray.append(92, 56);
        sparseIntArray.append(70, 57);
        sparseIntArray.append(93, 58);
        sparseIntArray.append(71, 59);
        sparseIntArray.append(60, 61);
        sparseIntArray.append(62, 62);
        sparseIntArray.append(61, 63);
        sparseIntArray.append(27, 64);
        sparseIntArray.append(107, 65);
        sparseIntArray.append(34, 66);
        sparseIntArray.append(108, 67);
        sparseIntArray.append(104, 79);
        sparseIntArray.append(1, 38);
        sparseIntArray.append(103, 68);
        sparseIntArray.append(94, 69);
        sparseIntArray.append(72, 70);
        sparseIntArray.append(31, 71);
        sparseIntArray.append(29, 72);
        sparseIntArray.append(30, 73);
        sparseIntArray.append(32, 74);
        sparseIntArray.append(28, 75);
        sparseIntArray.append(105, 76);
        sparseIntArray.append(84, 77);
        sparseIntArray.append(109, 78);
        sparseIntArray.append(54, 80);
        sparseIntArray.append(53, 81);
    }

    public static int[] c(C0862a c0862a, String str) throws IllegalAccessException, IllegalArgumentException {
        int iIntValue;
        HashMap map;
        String[] strArrSplit = str.split(",");
        Context context = c0862a.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i5 = 0;
        int i6 = 0;
        while (i5 < strArrSplit.length) {
            String strTrim = strArrSplit[i5].trim();
            Object obj = null;
            try {
                iIntValue = n.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
                iIntValue = 0;
            }
            if (iIntValue == 0) {
                iIntValue = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
            }
            if (iIntValue == 0 && c0862a.isInEditMode() && (c0862a.getParent() instanceof ConstraintLayout)) {
                ConstraintLayout constraintLayout = (ConstraintLayout) c0862a.getParent();
                constraintLayout.getClass();
                if ((strTrim instanceof String) && (map = constraintLayout.f3580o) != null && map.containsKey(strTrim)) {
                    obj = constraintLayout.f3580o.get(strTrim);
                }
                if (obj != null && (obj instanceof Integer)) {
                    iIntValue = ((Integer) obj).intValue();
                }
            }
            iArr[i6] = iIntValue;
            i5++;
            i6++;
        }
        return i6 != strArrSplit.length ? Arrays.copyOf(iArr, i6) : iArr;
    }

    public static g d(Context context, AttributeSet attributeSet) {
        g gVar = new g();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.f9310a);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i5 = 0; i5 < indexCount; i5++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i5);
            j jVar = gVar.f9222b;
            i iVar = gVar.f9223c;
            k kVar = gVar.f9225e;
            h hVar = gVar.f9224d;
            if (index != 1 && 23 != index && 24 != index) {
                iVar.getClass();
                hVar.getClass();
                jVar.getClass();
                kVar.getClass();
            }
            SparseIntArray sparseIntArray = f9306e;
            switch (sparseIntArray.get(index)) {
                case 1:
                    hVar.f9272o = f(typedArrayObtainStyledAttributes, index, hVar.f9272o);
                    break;
                case 2:
                    hVar.f9231F = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9231F);
                    break;
                case 3:
                    hVar.n = f(typedArrayObtainStyledAttributes, index, hVar.n);
                    break;
                case 4:
                    hVar.f9271m = f(typedArrayObtainStyledAttributes, index, hVar.f9271m);
                    break;
                case 5:
                    hVar.f9279v = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 6:
                    hVar.f9283z = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, hVar.f9283z);
                    break;
                case 7:
                    hVar.f9227A = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, hVar.f9227A);
                    break;
                case 8:
                    hVar.f9232G = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9232G);
                    break;
                case 9:
                    hVar.f9276s = f(typedArrayObtainStyledAttributes, index, hVar.f9276s);
                    break;
                case 10:
                    hVar.f9275r = f(typedArrayObtainStyledAttributes, index, hVar.f9275r);
                    break;
                case 11:
                    hVar.f9237L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9237L);
                    break;
                case 12:
                    hVar.f9238M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9238M);
                    break;
                case 13:
                    hVar.f9234I = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9234I);
                    break;
                case 14:
                    hVar.f9236K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9236K);
                    break;
                case 15:
                    hVar.f9239N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9239N);
                    break;
                case 16:
                    hVar.f9235J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9235J);
                    break;
                case 17:
                    hVar.f9258d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, hVar.f9258d);
                    break;
                case 18:
                    hVar.f9260e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, hVar.f9260e);
                    break;
                case 19:
                    hVar.f = typedArrayObtainStyledAttributes.getFloat(index, hVar.f);
                    break;
                case 20:
                    hVar.f9277t = typedArrayObtainStyledAttributes.getFloat(index, hVar.f9277t);
                    break;
                case 21:
                    hVar.f9256c = typedArrayObtainStyledAttributes.getLayoutDimension(index, hVar.f9256c);
                    break;
                case 22:
                    jVar.f9289a = f9305d[typedArrayObtainStyledAttributes.getInt(index, jVar.f9289a)];
                    break;
                case 23:
                    hVar.f9254b = typedArrayObtainStyledAttributes.getLayoutDimension(index, hVar.f9254b);
                    break;
                case 24:
                    hVar.f9229C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9229C);
                    break;
                case 25:
                    hVar.f9263g = f(typedArrayObtainStyledAttributes, index, hVar.f9263g);
                    break;
                case 26:
                    hVar.f9264h = f(typedArrayObtainStyledAttributes, index, hVar.f9264h);
                    break;
                case 27:
                    hVar.f9228B = typedArrayObtainStyledAttributes.getInt(index, hVar.f9228B);
                    break;
                case 28:
                    hVar.f9230D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9230D);
                    break;
                case 29:
                    hVar.f9266i = f(typedArrayObtainStyledAttributes, index, hVar.f9266i);
                    break;
                case 30:
                    hVar.f9268j = f(typedArrayObtainStyledAttributes, index, hVar.f9268j);
                    break;
                case 31:
                    hVar.f9233H = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9233H);
                    break;
                case 32:
                    hVar.f9273p = f(typedArrayObtainStyledAttributes, index, hVar.f9273p);
                    break;
                case 33:
                    hVar.f9274q = f(typedArrayObtainStyledAttributes, index, hVar.f9274q);
                    break;
                case 34:
                    hVar.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.E);
                    break;
                case 35:
                    hVar.f9270l = f(typedArrayObtainStyledAttributes, index, hVar.f9270l);
                    break;
                case 36:
                    hVar.f9269k = f(typedArrayObtainStyledAttributes, index, hVar.f9269k);
                    break;
                case 37:
                    hVar.f9278u = typedArrayObtainStyledAttributes.getFloat(index, hVar.f9278u);
                    break;
                case 38:
                    gVar.f9221a = typedArrayObtainStyledAttributes.getResourceId(index, gVar.f9221a);
                    break;
                case 39:
                    hVar.f9241P = typedArrayObtainStyledAttributes.getFloat(index, hVar.f9241P);
                    break;
                case 40:
                    hVar.f9240O = typedArrayObtainStyledAttributes.getFloat(index, hVar.f9240O);
                    break;
                case 41:
                    hVar.f9242Q = typedArrayObtainStyledAttributes.getInt(index, hVar.f9242Q);
                    break;
                case 42:
                    hVar.f9243R = typedArrayObtainStyledAttributes.getInt(index, hVar.f9243R);
                    break;
                case 43:
                    jVar.f9291c = typedArrayObtainStyledAttributes.getFloat(index, jVar.f9291c);
                    break;
                case 44:
                    kVar.f9303k = true;
                    kVar.f9304l = typedArrayObtainStyledAttributes.getDimension(index, kVar.f9304l);
                    break;
                case 45:
                    kVar.f9295b = typedArrayObtainStyledAttributes.getFloat(index, kVar.f9295b);
                    break;
                case 46:
                    kVar.f9296c = typedArrayObtainStyledAttributes.getFloat(index, kVar.f9296c);
                    break;
                case 47:
                    kVar.f9297d = typedArrayObtainStyledAttributes.getFloat(index, kVar.f9297d);
                    break;
                case 48:
                    kVar.f9298e = typedArrayObtainStyledAttributes.getFloat(index, kVar.f9298e);
                    break;
                case 49:
                    kVar.f = typedArrayObtainStyledAttributes.getDimension(index, kVar.f);
                    break;
                case 50:
                    kVar.f9299g = typedArrayObtainStyledAttributes.getDimension(index, kVar.f9299g);
                    break;
                case 51:
                    kVar.f9300h = typedArrayObtainStyledAttributes.getDimension(index, kVar.f9300h);
                    break;
                case 52:
                    kVar.f9301i = typedArrayObtainStyledAttributes.getDimension(index, kVar.f9301i);
                    break;
                case 53:
                    kVar.f9302j = typedArrayObtainStyledAttributes.getDimension(index, kVar.f9302j);
                    break;
                case 54:
                    hVar.f9244S = typedArrayObtainStyledAttributes.getInt(index, hVar.f9244S);
                    break;
                case 55:
                    hVar.f9245T = typedArrayObtainStyledAttributes.getInt(index, hVar.f9245T);
                    break;
                case 56:
                    hVar.f9246U = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9246U);
                    break;
                case 57:
                    hVar.f9247V = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9247V);
                    break;
                case 58:
                    hVar.f9248W = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9248W);
                    break;
                case 59:
                    hVar.f9249X = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9249X);
                    break;
                case 60:
                    kVar.f9294a = typedArrayObtainStyledAttributes.getFloat(index, kVar.f9294a);
                    break;
                case 61:
                    hVar.f9280w = f(typedArrayObtainStyledAttributes, index, hVar.f9280w);
                    break;
                case 62:
                    hVar.f9281x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9281x);
                    break;
                case 63:
                    hVar.f9282y = typedArrayObtainStyledAttributes.getFloat(index, hVar.f9282y);
                    break;
                case 64:
                    iVar.f9285a = f(typedArrayObtainStyledAttributes, index, iVar.f9285a);
                    break;
                case 65:
                    if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                        typedArrayObtainStyledAttributes.getString(index);
                        iVar.getClass();
                        break;
                    } else {
                        String str = AbstractC0750a.f8599a[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        iVar.getClass();
                        break;
                    }
                case 66:
                    typedArrayObtainStyledAttributes.getInt(index, 0);
                    iVar.getClass();
                    break;
                case 67:
                    iVar.f9288d = typedArrayObtainStyledAttributes.getFloat(index, iVar.f9288d);
                    break;
                case 68:
                    jVar.f9292d = typedArrayObtainStyledAttributes.getFloat(index, jVar.f9292d);
                    break;
                case 69:
                    hVar.f9250Y = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 70:
                    hVar.f9251Z = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    hVar.f9253a0 = typedArrayObtainStyledAttributes.getInt(index, hVar.f9253a0);
                    break;
                case 73:
                    hVar.f9255b0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, hVar.f9255b0);
                    break;
                case 74:
                    hVar.f9261e0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 75:
                    hVar.f9267i0 = typedArrayObtainStyledAttributes.getBoolean(index, hVar.f9267i0);
                    break;
                case 76:
                    iVar.f9286b = typedArrayObtainStyledAttributes.getInt(index, iVar.f9286b);
                    break;
                case 77:
                    hVar.f9262f0 = typedArrayObtainStyledAttributes.getString(index);
                    break;
                case 78:
                    jVar.f9290b = typedArrayObtainStyledAttributes.getInt(index, jVar.f9290b);
                    break;
                case 79:
                    iVar.f9287c = typedArrayObtainStyledAttributes.getFloat(index, iVar.f9287c);
                    break;
                case 80:
                    hVar.g0 = typedArrayObtainStyledAttributes.getBoolean(index, hVar.g0);
                    break;
                case 81:
                    hVar.f9265h0 = typedArrayObtainStyledAttributes.getBoolean(index, hVar.f9265h0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + sparseIntArray.get(index));
                    break;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return gVar;
    }

    public static int f(TypedArray typedArray, int i5, int i6) {
        int resourceId = typedArray.getResourceId(i5, i6);
        return resourceId == -1 ? typedArray.getInt(i5, -1) : resourceId;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(ConstraintLayout constraintLayout) {
        int i5;
        Iterator it;
        String resourceEntryName;
        l lVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = lVar.f9309c;
        HashSet hashSet = new HashSet(map.keySet());
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = constraintLayout.getChildAt(i6);
            int id = childAt.getId();
            if (!map.containsKey(Integer.valueOf(id))) {
                StringBuilder sb = new StringBuilder("id unknown ");
                try {
                    resourceEntryName = childAt.getContext().getResources().getResourceEntryName(childAt.getId());
                } catch (Exception unused) {
                    resourceEntryName = "UNKNOWN";
                }
                sb.append(resourceEntryName);
                Log.w("ConstraintSet", sb.toString());
            } else {
                if (lVar.f9308b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (id != -1) {
                    if (map.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        g gVar = (g) map.get(Integer.valueOf(id));
                        if (childAt instanceof C0862a) {
                            gVar.f9224d.f9257c0 = 1;
                        }
                        int i7 = gVar.f9224d.f9257c0;
                        if (i7 != -1 && i7 == 1) {
                            C0862a c0862a = (C0862a) childAt;
                            c0862a.setId(id);
                            h hVar = gVar.f9224d;
                            c0862a.setType(hVar.f9253a0);
                            c0862a.setMargin(hVar.f9255b0);
                            c0862a.setAllowsGoneWidget(hVar.f9267i0);
                            int[] iArr = hVar.f9259d0;
                            if (iArr != null) {
                                c0862a.setReferencedIds(iArr);
                            } else {
                                String str = hVar.f9261e0;
                                if (str != null) {
                                    int[] iArrC = c(c0862a, str);
                                    hVar.f9259d0 = iArrC;
                                    c0862a.setReferencedIds(iArrC);
                                }
                            }
                        }
                        e eVar = (e) childAt.getLayoutParams();
                        eVar.a();
                        gVar.a(eVar);
                        HashMap map2 = gVar.f;
                        Class<?> cls = childAt.getClass();
                        Iterator it2 = map2.keySet().iterator();
                        while (it2.hasNext()) {
                            String str2 = (String) it2.next();
                            b bVar = (b) map2.get(str2);
                            int i8 = childCount;
                            String strI = AbstractC0432c.i("set", str2);
                            HashMap map3 = map2;
                            try {
                                switch (Q0.f(bVar.f9146a)) {
                                    case 0:
                                        it = it2;
                                        cls.getMethod(strI, Integer.TYPE).invoke(childAt, Integer.valueOf(bVar.f9147b));
                                        break;
                                    case 1:
                                        it = it2;
                                        cls.getMethod(strI, Float.TYPE).invoke(childAt, Float.valueOf(bVar.f9148c));
                                        break;
                                    case 2:
                                        it = it2;
                                        cls.getMethod(strI, Integer.TYPE).invoke(childAt, Integer.valueOf(bVar.f));
                                        break;
                                    case 3:
                                        Method method = cls.getMethod(strI, Drawable.class);
                                        it = it2;
                                        try {
                                            ColorDrawable colorDrawable = new ColorDrawable();
                                            colorDrawable.setColor(bVar.f);
                                            method.invoke(childAt, colorDrawable);
                                        } catch (IllegalAccessException e5) {
                                            e = e5;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            childCount = i8;
                                            map2 = map3;
                                            it2 = it;
                                        } catch (NoSuchMethodException e6) {
                                            e = e6;
                                            Log.e("TransitionLayout", e.getMessage());
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
                                            Log.e("TransitionLayout", cls.getName() + " must have a method " + strI);
                                            childCount = i8;
                                            map2 = map3;
                                            it2 = it;
                                        } catch (InvocationTargetException e7) {
                                            e = e7;
                                            Log.e("TransitionLayout", " Custom Attribute \"" + str2 + "\" not found on " + cls.getName());
                                            e.printStackTrace();
                                            childCount = i8;
                                            map2 = map3;
                                            it2 = it;
                                        }
                                    case 4:
                                        cls.getMethod(strI, CharSequence.class).invoke(childAt, bVar.f9149d);
                                        it = it2;
                                        break;
                                    case 5:
                                        cls.getMethod(strI, Boolean.TYPE).invoke(childAt, Boolean.valueOf(bVar.f9150e));
                                        it = it2;
                                        break;
                                    case 6:
                                        cls.getMethod(strI, Float.TYPE).invoke(childAt, Float.valueOf(bVar.f9148c));
                                        it = it2;
                                        break;
                                    default:
                                        it = it2;
                                        break;
                                }
                            } catch (IllegalAccessException e8) {
                                e = e8;
                                it = it2;
                            } catch (NoSuchMethodException e9) {
                                e = e9;
                                it = it2;
                            } catch (InvocationTargetException e10) {
                                e = e10;
                                it = it2;
                            }
                            childCount = i8;
                            map2 = map3;
                            it2 = it;
                        }
                        i5 = childCount;
                        childAt.setLayoutParams(eVar);
                        j jVar = gVar.f9222b;
                        if (jVar.f9290b == 0) {
                            childAt.setVisibility(jVar.f9289a);
                        }
                        childAt.setAlpha(jVar.f9291c);
                        k kVar = gVar.f9225e;
                        childAt.setRotation(kVar.f9294a);
                        childAt.setRotationX(kVar.f9295b);
                        childAt.setRotationY(kVar.f9296c);
                        childAt.setScaleX(kVar.f9297d);
                        childAt.setScaleY(kVar.f9298e);
                        if (!Float.isNaN(kVar.f)) {
                            childAt.setPivotX(kVar.f);
                        }
                        if (!Float.isNaN(kVar.f9299g)) {
                            childAt.setPivotY(kVar.f9299g);
                        }
                        childAt.setTranslationX(kVar.f9300h);
                        childAt.setTranslationY(kVar.f9301i);
                        childAt.setTranslationZ(kVar.f9302j);
                        if (kVar.f9303k) {
                            childAt.setElevation(kVar.f9304l);
                        }
                    } else {
                        i5 = childCount;
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
                i6++;
                lVar = this;
                childCount = i5;
            }
            i5 = childCount;
            i6++;
            lVar = this;
            childCount = i5;
        }
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            Integer num = (Integer) it3.next();
            g gVar2 = (g) map.get(num);
            h hVar2 = gVar2.f9224d;
            int i9 = hVar2.f9257c0;
            if (i9 != -1 && i9 == 1) {
                Context context = constraintLayout.getContext();
                C0862a c0862a2 = new C0862a(context);
                c0862a2.f9151c = new int[32];
                c0862a2.f9156i = new HashMap();
                c0862a2.f9153e = context;
                c0862a2.f(null);
                c0862a2.setVisibility(8);
                c0862a2.setId(num.intValue());
                int[] iArr2 = hVar2.f9259d0;
                if (iArr2 != null) {
                    c0862a2.setReferencedIds(iArr2);
                } else {
                    String str3 = hVar2.f9261e0;
                    if (str3 != null) {
                        int[] iArrC2 = c(c0862a2, str3);
                        hVar2.f9259d0 = iArrC2;
                        c0862a2.setReferencedIds(iArrC2);
                    }
                }
                c0862a2.setType(hVar2.f9253a0);
                c0862a2.setMargin(hVar2.f9255b0);
                e eVarA = ConstraintLayout.a();
                c0862a2.h();
                gVar2.a(eVarA);
                constraintLayout.addView(c0862a2, eVarA);
            }
            if (hVar2.f9252a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                e eVarA2 = ConstraintLayout.a();
                gVar2.a(eVarA2);
                constraintLayout.addView(guideline, eVarA2);
            }
        }
    }

    public final void b(ConstraintLayout constraintLayout) {
        l lVar = this;
        int childCount = constraintLayout.getChildCount();
        HashMap map = lVar.f9309c;
        map.clear();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = constraintLayout.getChildAt(i5);
            e eVar = (e) childAt.getLayoutParams();
            int id = childAt.getId();
            if (lVar.f9308b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new g());
            }
            g gVar = (g) map.get(Integer.valueOf(id));
            HashMap map2 = lVar.f9307a;
            HashMap map3 = new HashMap();
            Class<?> cls = childAt.getClass();
            for (String str : map2.keySet()) {
                b bVar = (b) map2.get(str);
                try {
                    if (str.equals("BackgroundColor")) {
                        map3.put(str, new b(bVar, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                    } else {
                        map3.put(str, new b(bVar, cls.getMethod("getMap" + str, null).invoke(childAt, null)));
                    }
                } catch (IllegalAccessException e5) {
                    e5.printStackTrace();
                } catch (NoSuchMethodException e6) {
                    e6.printStackTrace();
                } catch (InvocationTargetException e7) {
                    e7.printStackTrace();
                }
            }
            gVar.f = map3;
            gVar.f9221a = id;
            int i6 = eVar.f9189d;
            h hVar = gVar.f9224d;
            hVar.f9263g = i6;
            hVar.f9264h = eVar.f9191e;
            hVar.f9266i = eVar.f;
            hVar.f9268j = eVar.f9194g;
            hVar.f9269k = eVar.f9195h;
            hVar.f9270l = eVar.f9197i;
            hVar.f9271m = eVar.f9199j;
            hVar.n = eVar.f9201k;
            hVar.f9272o = eVar.f9202l;
            hVar.f9273p = eVar.f9205p;
            hVar.f9274q = eVar.f9206q;
            hVar.f9275r = eVar.f9207r;
            hVar.f9276s = eVar.f9208s;
            hVar.f9277t = eVar.f9215z;
            hVar.f9278u = eVar.f9158A;
            hVar.f9279v = eVar.f9159B;
            hVar.f9280w = eVar.f9203m;
            hVar.f9281x = eVar.n;
            hVar.f9282y = eVar.f9204o;
            hVar.f9283z = eVar.f9172P;
            hVar.f9227A = eVar.f9173Q;
            hVar.f9228B = eVar.f9174R;
            hVar.f = eVar.f9187c;
            hVar.f9258d = eVar.f9183a;
            hVar.f9260e = eVar.f9185b;
            hVar.f9254b = ((ViewGroup.MarginLayoutParams) eVar).width;
            hVar.f9256c = ((ViewGroup.MarginLayoutParams) eVar).height;
            hVar.f9229C = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            hVar.f9230D = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            hVar.E = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            hVar.f9231F = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            hVar.f9240O = eVar.E;
            hVar.f9241P = eVar.f9161D;
            hVar.f9243R = eVar.f9163G;
            hVar.f9242Q = eVar.f9162F;
            hVar.g0 = eVar.f9175S;
            hVar.f9265h0 = eVar.f9176T;
            hVar.f9244S = eVar.f9164H;
            hVar.f9245T = eVar.f9165I;
            hVar.f9246U = eVar.f9168L;
            hVar.f9247V = eVar.f9169M;
            hVar.f9248W = eVar.f9166J;
            hVar.f9249X = eVar.f9167K;
            hVar.f9250Y = eVar.f9170N;
            hVar.f9251Z = eVar.f9171O;
            hVar.f9262f0 = eVar.f9177U;
            hVar.f9235J = eVar.f9210u;
            hVar.f9237L = eVar.f9212w;
            hVar.f9234I = eVar.f9209t;
            hVar.f9236K = eVar.f9211v;
            hVar.f9239N = eVar.f9213x;
            hVar.f9238M = eVar.f9214y;
            hVar.f9232G = eVar.getMarginEnd();
            hVar.f9233H = eVar.getMarginStart();
            int visibility = childAt.getVisibility();
            j jVar = gVar.f9222b;
            jVar.f9289a = visibility;
            jVar.f9291c = childAt.getAlpha();
            float rotation = childAt.getRotation();
            k kVar = gVar.f9225e;
            kVar.f9294a = rotation;
            kVar.f9295b = childAt.getRotationX();
            kVar.f9296c = childAt.getRotationY();
            kVar.f9297d = childAt.getScaleX();
            kVar.f9298e = childAt.getScaleY();
            float pivotX = childAt.getPivotX();
            float pivotY = childAt.getPivotY();
            if (pivotX != 0.0d || pivotY != 0.0d) {
                kVar.f = pivotX;
                kVar.f9299g = pivotY;
            }
            kVar.f9300h = childAt.getTranslationX();
            kVar.f9301i = childAt.getTranslationY();
            kVar.f9302j = childAt.getTranslationZ();
            if (kVar.f9303k) {
                kVar.f9304l = childAt.getElevation();
            }
            if (childAt instanceof C0862a) {
                C0862a c0862a = (C0862a) childAt;
                hVar.f9267i0 = c0862a.f9145l.n0;
                hVar.f9259d0 = c0862a.getReferencedIds();
                hVar.f9253a0 = c0862a.getType();
                hVar.f9255b0 = c0862a.getMargin();
            }
            i5++;
            lVar = this;
        }
    }

    public final void e(Context context, int i5) {
        XmlResourceParser xml = context.getResources().getXml(i5);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    g gVarD = d(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        gVarD.f9224d.f9252a = true;
                    }
                    this.f9309c.put(Integer.valueOf(gVarD.f9221a), gVarD);
                }
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        } catch (XmlPullParserException e6) {
            e6.printStackTrace();
        }
    }
}
