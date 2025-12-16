package i3;

import A3.AbstractC0006e;
import A3.AbstractC0009h;
import A3.C0005d;
import A3.C0007f;
import A3.C0008g;
import A3.I;
import E3.G;
import L3.C0075y;
import L3.Q;
import R2.B;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import c1.AbstractC0213D;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.C0379z4;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import h0.AbstractC0432c;
import h3.C0446b;
import h3.C0447c;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C;
import h4.C0451d;
import h4.C0460m;
import h4.C0467u;
import h4.J;
import h4.L;
import h4.N;
import h4.O;
import h4.X;
import h4.Z;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.WeakHashMap;
import k.Q0;
import l3.l0;
import o3.AbstractC0732i;
import o3.C0727d;
import o3.EnumC0734k;
import r3.C0817t;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.InterfaceC0845h;
import u3.C0879k;
import u3.V;

/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7163a;

    public /* synthetic */ x(int i5) {
        this.f7163a = i5;
    }

    public static Object A(Object obj, Field field) {
        try {
            return field.get(obj);
        } catch (IllegalAccessException e5) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalAccessException", e5);
            return null;
        } catch (IllegalArgumentException e6) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalArgumentException", e6);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void A0(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            boolean z4 = ((AbstractC0468v) dVar) instanceof C0460m;
            return;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static V B(Q3.f fVar, InterfaceC0802e interfaceC0802e) {
        if (fVar == null) {
            a(19);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(20);
            throw null;
        }
        Collection collectionK = interfaceC0802e.k();
        if (collectionK.size() != 1) {
            return null;
        }
        for (V v4 : ((C0879k) collectionK.iterator().next()).w0()) {
            if (v4.getName().equals(fVar)) {
                return v4;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void B0(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            boolean z4 = ((AbstractC0468v) dVar) instanceof C0460m;
            return;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static N C(k4.c cVar, int i5) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return (N) ((AbstractC0468v) cVar).u0().get(i5);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static boolean C0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            return interfaceC0804gI != null && AbstractC0732i.H(interfaceC0804gI);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static List D(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return ((AbstractC0468v) cVar).u0();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static AbstractC0472z D0(AbstractC0464q abstractC0464q) {
        if (abstractC0464q instanceof AbstractC0464q) {
            return abstractC0464q.f7069d;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(abstractC0464q);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, abstractC0464q.getClass(), sb).toString());
    }

    public static Class E(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            Log.w("SeslBaseReflector", "Fail to get class = ".concat(str));
            return null;
        }
    }

    public static Z E0(k4.b bVar) {
        if (bVar instanceof i4.h) {
            return ((i4.h) bVar).f;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(bVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
    }

    public static Q3.e F(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0804gI);
            return X3.f.h((InterfaceC0802e) interfaceC0804gI);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static Z F0(k4.c cVar) {
        if (cVar instanceof Z) {
            return AbstractC0450c.l((Z) cVar, false);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static Constructor G(String str, Class... clsArr) {
        try {
            return Class.forName(str).getDeclaredConstructor(clsArr);
        } catch (ClassNotFoundException | NoSuchMethodException e5) {
            Log.e("SeslBaseReflector", "failed to get reflection - " + e5);
            return null;
        }
    }

    public static String G0(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i5 = 0; i5 < str.length(); i5++) {
            sb.append(str.charAt(i5));
            if (str2.length() > i5) {
                sb.append(str2.charAt(i5));
            }
        }
        return sb.toString();
    }

    public static /* synthetic */ Collection H(a4.q qVar, a4.f fVar, int i5) {
        if ((i5 & 1) != 0) {
            fVar = a4.f.f3106m;
        }
        a4.o.f3129a.getClass();
        return qVar.f(fVar, a4.l.f3123e);
    }

    public static AbstractC0472z H0(C0460m c0460m) {
        if (c0460m instanceof C0460m) {
            return c0460m.f7064d;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(c0460m);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, c0460m.getClass(), sb).toString());
    }

    public static Field I(Class cls, String str) throws NoSuchFieldException, SecurityException {
        Field declaredField;
        try {
            declaredField = cls.getDeclaredField(str);
            if (declaredField != null) {
                try {
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                    Log.w("SeslBaseReflector", "Reflector did not find field = ".concat(str));
                    return declaredField;
                }
            }
        } catch (NoSuchFieldException unused2) {
            declaredField = null;
        }
        return declaredField;
    }

    public static final Q I0(Q q2, C0837c c0837c) {
        d3.i.e("<this>", q2);
        d3.i.e("typeTable", c0837c);
        int i5 = q2.f1479e;
        if ((i5 & 256) == 256) {
            return q2.f1487o;
        }
        if ((i5 & 512) == 512) {
            return c0837c.l(q2.f1488p);
        }
        return null;
    }

    public static Method J(Class cls, String str, Class... clsArr) {
        Method declaredMethod;
        try {
            declaredMethod = cls.getDeclaredMethod(str, clsArr);
            if (declaredMethod != null) {
                try {
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                    Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str));
                    return declaredMethod;
                }
            }
        } catch (NoSuchMethodException unused2) {
            declaredMethod = null;
        }
        return declaredMethod;
    }

    public static int J0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return ((J) fVar).k().size();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static Method K(String str, String str2, Class... clsArr) {
        Class clsE = E(str);
        Method declaredMethod = null;
        if (clsE != null) {
            try {
                declaredMethod = clsE.getDeclaredMethod(str2, clsArr);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                }
            } catch (NoSuchMethodException unused) {
                Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str2));
            }
        }
        return declaredMethod;
    }

    public static Set K0(i4.b bVar, k4.d dVar) {
        d3.i.e("$receiver", dVar);
        J jA0 = bVar.A0(dVar);
        if (jA0 instanceof V3.m) {
            return ((V3.m) jA0).f2805c;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static Field L(String str) {
        try {
            return AudioManager.class.getField(str);
        } catch (NoSuchFieldException unused) {
            Log.w("SeslBaseReflector", "Reflector did not find field = ".concat(str));
            return null;
        }
    }

    public static N L0(U3.b bVar) {
        d3.i.e("$receiver", bVar);
        if (bVar instanceof i4.i) {
            return ((i4.i) bVar).f7179a;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(bVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
    }

    public static final Type M(C0497r c0497r) {
        int i5 = c0497r.f7154a;
        if (i5 == 0) {
            return y.f7164c;
        }
        d3.j jVar = c0497r.f7155b;
        d3.i.b(jVar);
        int iF = Q0.f(i5);
        if (iF == 0) {
            return r(jVar, true);
        }
        if (iF == 1) {
            return new y(null, r(jVar, true));
        }
        if (iF == 2) {
            return new y(r(jVar, true), null);
        }
        throw new A0.c();
    }

    public static W.b M0(MappedByteBuffer mappedByteBuffer) throws IOException {
        long j3;
        ByteBuffer byteBufferDuplicate = mappedByteBuffer.duplicate();
        byteBufferDuplicate.order(ByteOrder.BIG_ENDIAN);
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
        int i5 = byteBufferDuplicate.getShort() & 65535;
        if (i5 > 100) {
            throw new IOException("Cannot read metadata.");
        }
        byteBufferDuplicate.position(byteBufferDuplicate.position() + 6);
        int i6 = 0;
        while (true) {
            if (i6 >= i5) {
                j3 = -1;
                break;
            }
            int i7 = byteBufferDuplicate.getInt();
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            j3 = byteBufferDuplicate.getInt() & 4294967295L;
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 4);
            if (1835365473 == i7) {
                break;
            }
            i6++;
        }
        if (j3 != -1) {
            byteBufferDuplicate.position(byteBufferDuplicate.position() + ((int) (j3 - byteBufferDuplicate.position())));
            byteBufferDuplicate.position(byteBufferDuplicate.position() + 12);
            long j5 = byteBufferDuplicate.getInt() & 4294967295L;
            for (int i8 = 0; i8 < j5; i8++) {
                int i9 = byteBufferDuplicate.getInt();
                long j6 = byteBufferDuplicate.getInt() & 4294967295L;
                byteBufferDuplicate.getInt();
                if (1164798569 == i9 || 1701669481 == i9) {
                    byteBufferDuplicate.position((int) (j6 + j3));
                    W.b bVar = new W.b();
                    byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
                    int iPosition = byteBufferDuplicate.position() + byteBufferDuplicate.getInt(byteBufferDuplicate.position());
                    bVar.f938d = byteBufferDuplicate;
                    bVar.f935a = iPosition;
                    int i10 = iPosition - byteBufferDuplicate.getInt(iPosition);
                    bVar.f936b = i10;
                    bVar.f937c = ((ByteBuffer) bVar.f938d).getShort(i10);
                    return bVar;
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    public static final String N(InterfaceC0800c interfaceC0800c) {
        Q3.f fVar;
        InterfaceC0800c interfaceC0800cR = AbstractC0732i.z(interfaceC0800c) ? R(interfaceC0800c) : null;
        if (interfaceC0800cR == null) {
            return null;
        }
        InterfaceC0800c interfaceC0800cK = X3.f.k(interfaceC0800cR);
        if (interfaceC0800cK instanceof InterfaceC0783K) {
            AbstractC0732i.z(interfaceC0800cK);
            InterfaceC0800c interfaceC0800cB = X3.f.b(X3.f.k(interfaceC0800cK), C0007f.f122g);
            if (interfaceC0800cB == null || (fVar = (Q3.f) AbstractC0009h.f129a.get(X3.f.g(interfaceC0800cB))) == null) {
                return null;
            }
            return fVar.b();
        }
        if (!(interfaceC0800cK instanceof u3.N)) {
            return null;
        }
        int i5 = AbstractC0006e.f120m;
        LinkedHashMap linkedHashMap = I.f100j;
        String strO = W1.a.o((u3.N) interfaceC0800cK);
        Q3.f fVar2 = strO == null ? null : (Q3.f) linkedHashMap.get(strO);
        if (fVar2 != null) {
            return fVar2.b();
        }
        return null;
    }

    public static M3.a N0(InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        C0447c c0447c = new C0447c(1, dataInputStream.readInt(), 1);
        ArrayList arrayList = new ArrayList(R2.o.C0(c0447c));
        Iterator it = c0447c.iterator();
        while (((C0446b) it).f7007e) {
            ((C0446b) it).a();
            arrayList.add(Integer.valueOf(dataInputStream.readInt()));
        }
        int size = arrayList.size();
        int[] iArr = new int[size];
        Iterator it2 = arrayList.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            iArr[i5] = ((Number) it2.next()).intValue();
            i5++;
        }
        return new M3.a(Arrays.copyOf(iArr, size));
    }

    public static float O(String[] strArr, int i5) throws NumberFormatException {
        float f = Float.parseFloat(strArr[i5]);
        if (f >= 0.0f && f <= 1.0f) {
            return f;
        }
        throw new IllegalArgumentException("Motion easing control point value must be between 0 and 1; instead got: " + f);
    }

    public static final Q O0(C0075y c0075y, C0837c c0837c) {
        d3.i.e("<this>", c0075y);
        d3.i.e("typeTable", c0837c);
        if (c0075y.q()) {
            return c0075y.f1798l;
        }
        if ((c0075y.f1792e & 64) == 64) {
            return c0837c.l(c0075y.f1799m);
        }
        return null;
    }

    public static Method P(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException unused) {
            Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str));
            return null;
        }
    }

    public static void P0(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor());
        Drawable drawableMutate = drawable.mutate();
        C.a.h(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    public static Method Q(String str, String str2, Class... clsArr) {
        Class clsE = E(str);
        if (clsE == null) {
            return null;
        }
        try {
            return clsE.getMethod(str2, clsArr);
        } catch (NoSuchMethodException unused) {
            Log.w("SeslBaseReflector", "Reflector did not find method = ".concat(str2));
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final AbstractC0468v Q0(AbstractC0468v abstractC0468v, ArrayList arrayList) {
        O o2;
        abstractC0468v.u0().size();
        arrayList.size();
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m4.d dVar = (m4.d) it.next();
            dVar.getClass();
            i4.l lVar = i4.d.f7169a;
            AbstractC0468v abstractC0468v2 = dVar.f8313b;
            AbstractC0468v abstractC0468v3 = dVar.f8314c;
            lVar.b(abstractC0468v2, abstractC0468v3);
            if (!d3.i.a(abstractC0468v2, abstractC0468v3)) {
                InterfaceC0789Q interfaceC0789Q = dVar.f8312a;
                if (interfaceC0789Q.A() == 2) {
                    o2 = new O(abstractC0468v2);
                } else {
                    if (AbstractC0732i.E(abstractC0468v2) && interfaceC0789Q.A() != 2) {
                        o2 = new O(3 != interfaceC0789Q.A() ? 3 : 1, abstractC0468v3);
                    } else {
                        if (abstractC0468v3 == null) {
                            AbstractC0732i.a(140);
                            throw null;
                        }
                        if (AbstractC0732i.x(abstractC0468v3) && abstractC0468v3.K0()) {
                            o2 = new O(2 == interfaceC0789Q.A() ? 1 : 2, abstractC0468v2);
                        } else {
                            o2 = new O(3 != interfaceC0789Q.A() ? 3 : 1, abstractC0468v3);
                        }
                    }
                }
            }
            arrayList2.add(o2);
        }
        return AbstractC0450c.o(abstractC0468v, arrayList2, null, 6);
    }

    public static final InterfaceC0800c R(InterfaceC0800c interfaceC0800c) {
        d3.i.e("<this>", interfaceC0800c);
        if (!I.f101k.contains(interfaceC0800c.getName()) && !AbstractC0009h.f132d.contains(X3.f.k(interfaceC0800c).getName())) {
            return null;
        }
        if (interfaceC0800c instanceof InterfaceC0783K ? true : interfaceC0800c instanceof InterfaceC0782J) {
            return X3.f.b(interfaceC0800c, C0007f.f124i);
        }
        if (interfaceC0800c instanceof u3.N) {
            return X3.f.b(interfaceC0800c, C0007f.f125j);
        }
        return null;
    }

    public static LinkedHashSet R0(Q3.f fVar, Collection collection, Collection collection2, InterfaceC0802e interfaceC0802e, d4.k kVar, T3.n nVar, boolean z4) {
        if (fVar == null) {
            a(12);
            throw null;
        }
        if (collection == null) {
            a(13);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(15);
            throw null;
        }
        if (kVar == null) {
            a(16);
            throw null;
        }
        if (nVar == null) {
            a(17);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        nVar.h(fVar, collection, collection2, interfaceC0802e, new B3.b(kVar, linkedHashSet, z4));
        return linkedHashSet;
    }

    public static final InterfaceC0800c S(InterfaceC0800c interfaceC0800c) {
        d3.i.e("<this>", interfaceC0800c);
        InterfaceC0800c interfaceC0800cR = R(interfaceC0800c);
        if (interfaceC0800cR != null) {
            return interfaceC0800cR;
        }
        int i5 = C0008g.f128m;
        Q3.f name = interfaceC0800c.getName();
        d3.i.d("name", name);
        if (C0008g.b(name)) {
            return X3.f.b(interfaceC0800c, C0007f.f126k);
        }
        return null;
    }

    public static LinkedHashSet S0(Q3.f fVar, AbstractCollection abstractCollection, Collection collection, InterfaceC0802e interfaceC0802e, d4.k kVar, T3.n nVar) {
        if (fVar == null) {
            a(0);
            throw null;
        }
        if (interfaceC0802e == null) {
            a(3);
            throw null;
        }
        if (kVar == null) {
            a(4);
            throw null;
        }
        if (nVar != null) {
            return R0(fVar, abstractCollection, collection, interfaceC0802e, kVar, nVar, false);
        }
        a(5);
        throw null;
    }

    public static InterfaceC0789Q T(k4.f fVar, int i5) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            Object obj = ((J) fVar).k().get(i5);
            d3.i.d("this.parameters[index]", obj);
            return (InterfaceC0789Q) obj;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static LinkedHashSet T0(Q3.f fVar, Collection collection, AbstractCollection abstractCollection, C3.c cVar, d4.k kVar, T3.n nVar) {
        if (fVar == null) {
            a(6);
            throw null;
        }
        if (collection == null) {
            a(7);
            throw null;
        }
        if (cVar == null) {
            a(9);
            throw null;
        }
        if (kVar == null) {
            a(10);
            throw null;
        }
        if (nVar != null) {
            return R0(fVar, collection, abstractCollection, cVar, kVar, nVar, true);
        }
        a(11);
        throw null;
    }

    public static List U(J j3) {
        List listK = j3.k();
        d3.i.d("this.parameters", listK);
        return listK;
    }

    public static int U0(Context context, int i5, int i6) {
        TypedValue typedValueE = L2.b.E(context, i5);
        return (typedValueE == null || typedValueE.type != 16) ? i6 : typedValueE.data;
    }

    public static final G V(InterfaceC0802e interfaceC0802e) {
        InterfaceC0802e interfaceC0802e2;
        InterfaceC0804g interfaceC0804gI;
        d3.i.e("<this>", interfaceC0802e);
        int i5 = X3.f.f2874a;
        Iterator it = interfaceC0802e.q().J0().j().iterator();
        while (true) {
            if (!it.hasNext()) {
                interfaceC0802e2 = null;
                break;
            }
            AbstractC0468v abstractC0468v = (AbstractC0468v) it.next();
            if (!AbstractC0732i.x(abstractC0468v)) {
                interfaceC0804gI = abstractC0468v.J0().i();
                if (T3.e.o(interfaceC0804gI, 1) || T3.e.o(interfaceC0804gI, 3)) {
                    break;
                }
            }
        }
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0804gI);
        interfaceC0802e2 = (InterfaceC0802e) interfaceC0804gI;
        if (interfaceC0802e2 == null) {
            return null;
        }
        a4.o oVarX = interfaceC0802e2.X();
        G g5 = oVarX instanceof G ? (G) oVarX : null;
        return g5 == null ? V(interfaceC0802e2) : g5;
    }

    public static TimeInterpolator V0(Context context, int i5, Interpolator interpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i5, typedValue, true)) {
            return interpolator;
        }
        if (typedValue.type != 3) {
            throw new IllegalArgumentException("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!s0(strValueOf, "cubic-bezier") && !s0(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (!s0(strValueOf, "cubic-bezier")) {
            if (s0(strValueOf, "path")) {
                return L.a.c(W1.a.s(strValueOf.substring(5, strValueOf.length() - 1)));
            }
            throw new IllegalArgumentException("Invalid motion easing type: ".concat(strValueOf));
        }
        String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
        if (strArrSplit.length == 4) {
            return L.a.b(O(strArrSplit, 0), O(strArrSplit, 1), O(strArrSplit, 2), O(strArrSplit, 3));
        }
        throw new IllegalArgumentException("Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: " + strArrSplit.length);
    }

    public static EnumC0734k W(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0804gI);
            return AbstractC0732i.r((InterfaceC0802e) interfaceC0804gI);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static final Q W0(C0075y c0075y, C0837c c0837c) {
        d3.i.e("<this>", c0075y);
        d3.i.e("typeTable", c0837c);
        int i5 = c0075y.f1792e;
        if ((i5 & 8) == 8) {
            Q q2 = c0075y.f1795i;
            d3.i.d("returnType", q2);
            return q2;
        }
        if ((i5 & 16) == 16) {
            return c0837c.l(c0075y.f1796j);
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Function".toString());
    }

    public static EnumC0734k X(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0804gI);
            return AbstractC0732i.t((InterfaceC0802e) interfaceC0804gI);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static final Q X0(L3.G g5, C0837c c0837c) {
        d3.i.e("<this>", g5);
        d3.i.e("typeTable", c0837c);
        int i5 = g5.f1406e;
        if ((i5 & 8) == 8) {
            Q q2 = g5.f1409i;
            d3.i.d("returnType", q2);
            return q2;
        }
        if ((i5 & 16) == 16) {
            return c0837c.l(g5.f1410j);
        }
        throw new IllegalStateException("No returnType in ProtoBuf.Property".toString());
    }

    public static final int Y(int i5, int i6, int i7) {
        if (i7 > 0) {
            if (i5 >= i6) {
                return i6;
            }
            int i8 = i6 % i7;
            if (i8 < 0) {
                i8 += i7;
            }
            int i9 = i5 % i7;
            if (i9 < 0) {
                i9 += i7;
            }
            int i10 = (i8 - i9) % i7;
            if (i10 < 0) {
                i10 += i7;
            }
            return i6 - i10;
        }
        if (i7 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        }
        if (i5 <= i6) {
            return i6;
        }
        int i11 = -i7;
        int i12 = i5 % i11;
        if (i12 < 0) {
            i12 += i11;
        }
        int i13 = i6 % i11;
        if (i13 < 0) {
            i13 += i11;
        }
        int i14 = (i12 - i13) % i11;
        if (i14 < 0) {
            i14 += i11;
        }
        return i6 + i14;
    }

    public static final Object Y0(Set set, Enum r22, Enum r32, Object obj, boolean z4) {
        if (!z4) {
            if (obj != null) {
                set = R2.m.j1(B.R(set, obj));
            }
            return R2.m.c1(set);
        }
        Enum r12 = set.contains(r22) ? r22 : set.contains(r32) ? r32 : null;
        if (d3.i.a(r12, r22) && d3.i.a(obj, r32)) {
            return null;
        }
        return obj == null ? r12 : obj;
    }

    public static String Z() {
        Method methodK = K("com.samsung.sesl.feature.SemCscFeature", "hidden_getString", String.class, String.class);
        Object objJ0 = methodK != null ? j0(null, methodK, "CscFeature_Calendar_SetColorOfDays", "XXXXXXR") : null;
        return objJ0 instanceof String ? (String) objJ0 : "XXXXXXR";
    }

    public static final Collection Z0(Collection collection, InterfaceC0222b interfaceC0222b) {
        d3.i.e("<this>", collection);
        if (collection.size() <= 1) {
            return collection;
        }
        LinkedList linkedList = new LinkedList(collection);
        q4.h hVar = new q4.h();
        while (!linkedList.isEmpty()) {
            Object objM0 = R2.m.M0(linkedList);
            q4.h hVar2 = new q4.h();
            ArrayList arrayListG = T3.n.g(objM0, linkedList, interfaceC0222b, new C0005d(11, hVar2));
            if (arrayListG.size() == 1 && hVar2.isEmpty()) {
                Object objA1 = R2.m.a1(arrayListG);
                d3.i.d("overridableGroup.single()", objA1);
                hVar.add(objA1);
            } else {
                Object objS = T3.n.s(arrayListG, interfaceC0222b);
                InterfaceC0799b interfaceC0799b = (InterfaceC0799b) interfaceC0222b.e(objS);
                Iterator it = arrayListG.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    d3.i.d("it", next);
                    if (!T3.n.k(interfaceC0799b, (InterfaceC0799b) interfaceC0222b.e(next))) {
                        hVar2.add(next);
                    }
                }
                if (!hVar2.isEmpty()) {
                    hVar.addAll(hVar2);
                }
                hVar.add(objS);
            }
        }
        return hVar;
    }

    public static /* synthetic */ void a(int i5) {
        String str = i5 != 18 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 18 ? 3 : 2];
        switch (i5) {
            case 1:
            case 7:
            case 13:
                objArr[0] = "membersFromSupertypes";
                break;
            case 2:
            case 8:
            case 14:
                objArr[0] = "membersFromCurrent";
                break;
            case 3:
            case 9:
            case 15:
                objArr[0] = "classDescriptor";
                break;
            case 4:
            case 10:
            case 16:
                objArr[0] = "errorReporter";
                break;
            case 5:
            case 11:
            case 17:
                objArr[0] = "overridingUtil";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "name";
                break;
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
                break;
            case 20:
                objArr[0] = "annotationClass";
                break;
        }
        if (i5 != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils";
        } else {
            objArr[1] = "resolveOverrides";
        }
        switch (i5) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "resolveOverridesForStaticMembers";
                break;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
                objArr[2] = "resolveOverrides";
                break;
            case 18:
                break;
            case 19:
            case 20:
                objArr[2] = "getAnnotationParameterByName";
                break;
            default:
                objArr[2] = "resolveOverridesForNonStaticMembers";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i5 == 18) {
            throw new IllegalStateException(str2);
        }
    }

    public static String a0(EditText editText) {
        return editText.getText().toString();
    }

    public static void a1(Object obj, Field field, Integer num) throws IllegalAccessException, IllegalArgumentException {
        try {
            field.set(obj, num);
        } catch (IllegalAccessException e5) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalAccessException", e5);
        } catch (IllegalArgumentException e6) {
            Log.e("SeslBaseReflector", field.getName() + " IllegalArgumentException", e6);
        }
    }

    public static final String b(Type type) {
        String name;
        String string;
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            r4.k kVarK = r4.m.k(type, w.f7162l);
            StringBuilder sb = new StringBuilder();
            Iterator it = kVarK.iterator();
            if (!it.hasNext()) {
                throw new NoSuchElementException("Sequence is empty.");
            }
            Object next = it.next();
            while (it.hasNext()) {
                next = it.next();
            }
            sb.append(((Class) next).getName());
            int iH = r4.m.h(kVarK);
            if (iH < 0) {
                throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + iH + '.').toString());
            }
            if (iH != 0) {
                if (iH != 1) {
                    StringBuilder sb2 = new StringBuilder(2 * iH);
                    C0447c c0447c = new C0447c(1, iH, 1);
                    int i5 = c0447c.f7003d;
                    int i6 = c0447c.f7004e;
                    boolean z4 = i6 <= 0 ? 1 >= i5 : 1 <= i5;
                    int i7 = z4 ? 1 : i5;
                    while (z4) {
                        if (i7 != i5) {
                            i7 += i6;
                        } else {
                            if (!z4) {
                                throw new NoSuchElementException();
                            }
                            z4 = false;
                        }
                        sb2.append((CharSequence) "[]");
                    }
                    string = sb2.toString();
                    d3.i.d("{\n                    va…tring()\n                }", string);
                } else {
                    string = "[]".toString();
                }
            } else {
                string = "";
            }
            sb.append(string);
            name = sb.toString();
        } else {
            name = cls.getName();
        }
        d3.i.d("{\n        if (type.isArr…   } else type.name\n    }", name);
        return name;
    }

    public static Z b0(N n) {
        d3.i.e("$receiver", n);
        if (n instanceof N) {
            return n.b().M0();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(n);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, n.getClass(), sb).toString());
    }

    public static void b1(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        WeakHashMap weakHashMap = J.Q.f940a;
        boolean zHasOnClickListeners = checkableImageButton.hasOnClickListeners();
        boolean z4 = onLongClickListener != null;
        boolean z5 = zHasOnClickListeners || z4;
        checkableImageButton.setFocusable(z5);
        checkableImageButton.setClickable(zHasOnClickListeners);
        checkableImageButton.setPressable(zHasOnClickListeners);
        checkableImageButton.setLongClickable(z4);
        checkableImageButton.setImportantForAccessibility(z5 ? 1 : 2);
    }

    public static void c(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = drawable.mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                C.a.h(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
                C.a.h(drawable, ColorStateList.valueOf(colorStateList.getColorForState(iArrCopyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                C.a.i(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static InterfaceC0789Q c0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            if (interfaceC0804gI instanceof InterfaceC0789Q) {
                return (InterfaceC0789Q) interfaceC0804gI;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void c1(TextView textView, String str) {
        CharSequence text = textView.getText();
        if (str != text) {
            if (str == null && text.length() == 0) {
                return;
            }
            if (!(str instanceof Spanned)) {
                if ((str == null) == (text == null)) {
                    if (str == null) {
                        return;
                    }
                    int length = str.length();
                    if (length == text.length()) {
                        for (int i5 = 0; i5 < length; i5++) {
                            if (str.charAt(i5) == text.charAt(i5)) {
                            }
                        }
                        return;
                    }
                }
            } else if (str.equals(text)) {
                return;
            }
            textView.setText(str);
        }
    }

    public static final m4.a d(AbstractC0468v abstractC0468v) {
        Object objQ0;
        m4.d dVar;
        d3.i.e("type", abstractC0468v);
        if (AbstractC0450c.j(abstractC0468v)) {
            m4.a aVarD = d(AbstractC0450c.k(abstractC0468v));
            m4.a aVarD2 = d(AbstractC0450c.y(abstractC0468v));
            return new m4.a(AbstractC0450c.g(C0451d.j(AbstractC0450c.k((AbstractC0468v) aVarD.f8309a), AbstractC0450c.y((AbstractC0468v) aVarD2.f8309a)), abstractC0468v), AbstractC0450c.g(C0451d.j(AbstractC0450c.k((AbstractC0468v) aVarD.f8310b), AbstractC0450c.y((AbstractC0468v) aVarD2.f8310b)), abstractC0468v));
        }
        J jJ0 = abstractC0468v.J0();
        boolean z4 = true;
        if (abstractC0468v.J0() instanceof U3.b) {
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor", jJ0);
            N nA = ((U3.b) jJ0).a();
            AbstractC0468v abstractC0468vB = nA.b();
            d3.i.d("typeProjection.type", abstractC0468vB);
            AbstractC0468v abstractC0468vI = X.i(abstractC0468vB, abstractC0468v.K0());
            int iF = Q0.f(nA.a());
            if (iF == 1) {
                AbstractC0472z abstractC0472zO = AbstractC0420a.y(abstractC0468v).o();
                d3.i.d("type.builtIns.nullableAnyType", abstractC0472zO);
                return new m4.a(abstractC0468vI, abstractC0472zO);
            }
            if (iF == 2) {
                AbstractC0472z abstractC0472zN = AbstractC0420a.y(abstractC0468v).n();
                d3.i.d("type.builtIns.nothingType", abstractC0472zN);
                return new m4.a(X.i(abstractC0472zN, abstractC0468v.K0()), abstractC0468vI);
            }
            throw new AssertionError("Only nontrivial projections should have been captured, not: " + nA);
        }
        if (abstractC0468v.u0().isEmpty() || abstractC0468v.u0().size() != jJ0.k().size()) {
            return new m4.a(abstractC0468v, abstractC0468v);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listU0 = abstractC0468v.u0();
        List listK = jJ0.k();
        d3.i.d("typeConstructor.parameters", listK);
        Iterator it = R2.m.l1(listU0, listK).iterator();
        while (it.hasNext()) {
            Q2.e eVar = (Q2.e) it.next();
            N n = (N) eVar.f2212c;
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) eVar.f2213d;
            d3.i.d("typeParameter", interfaceC0789Q);
            int iA = interfaceC0789Q.A();
            if (iA == 0) {
                h4.V.a(35);
                throw null;
            }
            if (n == null) {
                h4.V.a(36);
                throw null;
            }
            h4.V v4 = h4.V.f7041b;
            int iF2 = Q0.f(n.c() ? 3 : h4.V.b(iA, n.a()));
            if (iF2 == 0) {
                AbstractC0468v abstractC0468vB2 = n.b();
                d3.i.d("type", abstractC0468vB2);
                AbstractC0468v abstractC0468vB3 = n.b();
                d3.i.d("type", abstractC0468vB3);
                dVar = new m4.d(interfaceC0789Q, abstractC0468vB2, abstractC0468vB3);
            } else if (iF2 == 1) {
                AbstractC0468v abstractC0468vB4 = n.b();
                d3.i.d("type", abstractC0468vB4);
                AbstractC0472z abstractC0472zO2 = X3.f.e(interfaceC0789Q).o();
                d3.i.d("typeParameter.builtIns.nullableAnyType", abstractC0472zO2);
                dVar = new m4.d(interfaceC0789Q, abstractC0468vB4, abstractC0472zO2);
            } else {
                if (iF2 != 2) {
                    throw new A0.c();
                }
                AbstractC0472z abstractC0472zN2 = X3.f.e(interfaceC0789Q).n();
                d3.i.d("typeParameter.builtIns.nothingType", abstractC0472zN2);
                AbstractC0468v abstractC0468vB5 = n.b();
                d3.i.d("type", abstractC0468vB5);
                dVar = new m4.d(interfaceC0789Q, abstractC0472zN2, abstractC0468vB5);
            }
            if (n.c()) {
                arrayList.add(dVar);
                arrayList2.add(dVar);
            } else {
                m4.a aVarD3 = d(dVar.f8313b);
                AbstractC0468v abstractC0468v2 = (AbstractC0468v) aVarD3.f8309a;
                AbstractC0468v abstractC0468v3 = (AbstractC0468v) aVarD3.f8310b;
                m4.a aVarD4 = d(dVar.f8314c);
                AbstractC0468v abstractC0468v4 = (AbstractC0468v) aVarD4.f8309a;
                AbstractC0468v abstractC0468v5 = (AbstractC0468v) aVarD4.f8310b;
                InterfaceC0789Q interfaceC0789Q2 = dVar.f8312a;
                m4.d dVar2 = new m4.d(interfaceC0789Q2, abstractC0468v3, abstractC0468v4);
                m4.d dVar3 = new m4.d(interfaceC0789Q2, abstractC0468v2, abstractC0468v5);
                arrayList.add(dVar2);
                arrayList2.add(dVar3);
            }
        }
        if (arrayList.isEmpty()) {
            z4 = false;
        } else {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((m4.d) it2.next()).getClass();
                if (!i4.d.f7169a.b(r4.f8313b, r4.f8314c)) {
                    break;
                }
            }
            z4 = false;
        }
        if (z4) {
            objQ0 = AbstractC0420a.y(abstractC0468v).n();
            d3.i.d("type.builtIns.nothingType", objQ0);
        } else {
            objQ0 = Q0(abstractC0468v, arrayList);
        }
        return new m4.a(objQ0, Q0(abstractC0468v, arrayList2));
    }

    public static AbstractC0472z d0(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return T3.i.f((AbstractC0468v) cVar);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static void d1(EditText editText, androidx.databinding.h hVar) {
        TextWatcher xVar = hVar == null ? null : new S1.x(1, hVar);
        int i5 = T.c.f2707a;
        Object tag = editText.getTag(R.id.textWatcher);
        editText.setTag(R.id.textWatcher, xVar);
        TextWatcher textWatcher = (TextWatcher) tag;
        if (textWatcher != null) {
            editText.removeTextChangedListener(textWatcher);
        }
        if (xVar != null) {
            editText.addTextChangedListener(xVar);
        }
    }

    public static boolean e(k4.f fVar, k4.f fVar2) {
        d3.i.e("c1", fVar);
        d3.i.e("c2", fVar2);
        if (!(fVar instanceof J)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(fVar);
            sb.append(", ");
            throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
        }
        if (fVar2 instanceof J) {
            return d3.i.a(fVar, fVar2);
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(fVar2);
        sb2.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar2.getClass(), sb2).toString());
    }

    public static int e0(N n) {
        d3.i.e("$receiver", n);
        if (n instanceof N) {
            int iA = n.a();
            B.f.E(iA, "this.projectionKind");
            return u(iA);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(n);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, n.getClass(), sb).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static i4.a e1(i4.b bVar, k4.d dVar) {
        if (dVar instanceof AbstractC0472z) {
            AbstractC0468v abstractC0468v = (AbstractC0468v) dVar;
            return new i4.a(bVar, h4.V.e(L.f7034b.f(abstractC0468v.J0(), abstractC0468v.u0())));
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static int f(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return ((AbstractC0468v) cVar).u0().size();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static boolean f0(k4.c cVar, Q3.c cVar2) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return ((AbstractC0468v) cVar).t().b(cVar2);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static Collection f1(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            Collection collectionJ = ((J) fVar).j();
            d3.i.d("this.supertypes", collectionJ);
            return collectionJ;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static k4.e g(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            return (k4.e) dVar;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0144, code lost:
    
        if (r6 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x014b, code lost:
    
        return !o3.AbstractC0732i.z(r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean g0(InterfaceC0802e interfaceC0802e, InterfaceC0800c interfaceC0800c) {
        d3.i.e("<this>", interfaceC0802e);
        d3.i.e("specialCallableDescriptor", interfaceC0800c);
        InterfaceC0807j interfaceC0807jL = interfaceC0800c.l();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
        AbstractC0472z abstractC0472zQ = ((InterfaceC0802e) interfaceC0807jL).q();
        d3.i.d("specialCallableDescripto…ssDescriptor).defaultType", abstractC0472zQ);
        InterfaceC0802e interfaceC0802eK = T3.e.k(interfaceC0802e);
        while (interfaceC0802eK != null) {
            if (!(interfaceC0802eK instanceof C3.c)) {
                AbstractC0472z abstractC0472zQ2 = interfaceC0802eK.q();
                if (abstractC0472zQ2 == null) {
                    throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "subtype", "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure", "findCorrespondingSupertype"));
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                Z zH = null;
                arrayDeque.add(new i4.m(abstractC0472zQ2, null));
                J jJ0 = abstractC0472zQ.J0();
                while (true) {
                    if (arrayDeque.isEmpty()) {
                        break;
                    }
                    i4.m mVar = (i4.m) arrayDeque.poll();
                    AbstractC0468v abstractC0468vH = mVar.f7189a;
                    J jJ02 = abstractC0468vH.J0();
                    if (jJ02 == null) {
                        L2.b.b(3);
                        throw null;
                    }
                    if (jJ0 == null) {
                        L2.b.b(4);
                        throw null;
                    }
                    if (jJ02.equals(jJ0)) {
                        boolean zK0 = abstractC0468vH.K0();
                        for (i4.m mVar2 = mVar.f7190b; mVar2 != null; mVar2 = mVar2.f7190b) {
                            AbstractC0468v abstractC0468v = mVar2.f7189a;
                            List listU0 = abstractC0468v.u0();
                            boolean z4 = listU0 instanceof Collection;
                            C0451d c0451d = L.f7034b;
                            if (z4 && listU0.isEmpty()) {
                                abstractC0468vH = h4.V.e(c0451d.f(abstractC0468v.J0(), abstractC0468v.u0())).h(1, abstractC0468vH);
                            } else {
                                Iterator it = listU0.iterator();
                                while (it.hasNext()) {
                                    if (((N) it.next()).a() != 1) {
                                        abstractC0468vH = (AbstractC0468v) d(h4.V.e(L2.b.P(c0451d.f(abstractC0468v.J0(), abstractC0468v.u0()))).h(1, abstractC0468vH)).f8310b;
                                        break;
                                    }
                                }
                                abstractC0468vH = h4.V.e(c0451d.f(abstractC0468v.J0(), abstractC0468v.u0())).h(1, abstractC0468vH);
                            }
                            zK0 = zK0 || abstractC0468v.K0();
                        }
                        J jJ03 = abstractC0468vH.J0();
                        if (jJ03 == null) {
                            L2.b.b(3);
                            throw null;
                        }
                        if (!jJ03.equals(jJ0)) {
                            throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + W1.a.u(jJ03) + ", \n\nsupertype: " + W1.a.u(jJ0) + " \n" + jJ03.equals(jJ0));
                        }
                        zH = X.h(abstractC0468vH, zK0);
                    } else {
                        for (AbstractC0468v abstractC0468v2 : jJ02.j()) {
                            d3.i.d("immediateSupertype", abstractC0468v2);
                            arrayDeque.add(new i4.m(abstractC0468v2, mVar));
                        }
                    }
                }
            }
            interfaceC0802eK = T3.e.k(interfaceC0802eK);
        }
        return false;
    }

    public static final void g1(Object obj) throws Throwable {
        if (obj instanceof Q2.f) {
            throw ((Q2.f) obj).f2214c;
        }
    }

    public static k4.b h(i4.b bVar, k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            if (dVar instanceof C) {
                return bVar.v0(((C) dVar).f7013d);
            }
            if (dVar instanceof i4.h) {
                return (i4.h) dVar;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static boolean h0(InterfaceC0789Q interfaceC0789Q, k4.f fVar) {
        if (fVar == null ? true : fVar instanceof J) {
            return AbstractC0420a.L(interfaceC0789Q, (J) fVar, null);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(interfaceC0789Q);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, interfaceC0789Q.getClass(), sb).toString());
    }

    public static final Q h1(L3.Z z4, C0837c c0837c) {
        d3.i.e("typeTable", c0837c);
        int i5 = z4.f1551e;
        if ((i5 & 4) == 4) {
            Q q2 = z4.f1553h;
            d3.i.d("type", q2);
            return q2;
        }
        if ((i5 & 8) == 8) {
            return c0837c.l(z4.f1554i);
        }
        throw new IllegalStateException("No type in ProtoBuf.ValueParameter".toString());
    }

    public static C0460m i(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            if (dVar instanceof C0460m) {
                return (C0460m) dVar;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static boolean i0(k4.d dVar, k4.d dVar2) {
        d3.i.e("a", dVar);
        d3.i.e("b", dVar2);
        if (!(dVar instanceof AbstractC0472z)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(dVar);
            sb.append(", ");
            throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
        }
        if (dVar2 instanceof AbstractC0472z) {
            return ((AbstractC0472z) dVar).u0() == ((AbstractC0472z) dVar2).u0();
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(dVar2);
        sb2.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar2.getClass(), sb2).toString());
    }

    public static J i1(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            return ((AbstractC0472z) dVar).J0();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static AbstractC0464q j(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            Z zM0 = ((AbstractC0468v) cVar).M0();
            if (zM0 instanceof AbstractC0464q) {
                return (AbstractC0464q) zM0;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static Object j0(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e5) {
            Log.e("SeslBaseReflector", method.getName() + " IllegalAccessException", e5);
            return null;
        } catch (IllegalArgumentException e6) {
            Log.e("SeslBaseReflector", method.getName() + " IllegalArgumentException", e6);
            return null;
        } catch (InvocationTargetException e7) {
            Log.e("SeslBaseReflector", method.getName() + " InvocationTargetException", e7);
            return null;
        }
    }

    public static i4.i j1(k4.b bVar) {
        d3.i.e("$receiver", bVar);
        if (bVar instanceof i4.h) {
            return ((i4.h) bVar).f7175e;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(bVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
    }

    public static F3.f k(AbstractC0464q abstractC0464q) {
        if (abstractC0464q instanceof F3.f) {
            return (F3.f) abstractC0464q;
        }
        return null;
    }

    public static boolean k0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return AbstractC0732i.G((J) fVar, o3.m.f8503a);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static AbstractC0472z k1(AbstractC0464q abstractC0464q) {
        if (abstractC0464q instanceof AbstractC0464q) {
            return abstractC0464q.f7070e;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(abstractC0464q);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, abstractC0464q.getClass(), sb).toString());
    }

    public static AbstractC0472z l(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            Z zM0 = ((AbstractC0468v) cVar).M0();
            if (zM0 instanceof AbstractC0472z) {
                return (AbstractC0472z) zM0;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static boolean l0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return ((J) fVar).i() instanceof InterfaceC0802e;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static AbstractC0472z l1(k4.d dVar, boolean z4) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            return ((AbstractC0472z) dVar).N0(z4);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static boolean m0(k4.f fVar) {
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
            return (interfaceC0802e == null || interfaceC0802e.i() != 1 || interfaceC0802e.L() == 3 || interfaceC0802e.L() == 4 || interfaceC0802e.L() == 5) ? false : true;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static k4.c m1(i4.b bVar, k4.c cVar) {
        if (cVar instanceof k4.d) {
            return bVar.f0((k4.d) cVar, true);
        }
        if (!(cVar instanceof AbstractC0464q)) {
            throw new IllegalStateException("sealed".toString());
        }
        AbstractC0464q abstractC0464q = (AbstractC0464q) cVar;
        return bVar.m(bVar.f0(bVar.b0(abstractC0464q), true), bVar.f0(bVar.h0(abstractC0464q), true));
    }

    public static O n(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return AbstractC0420a.b((AbstractC0468v) cVar);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static boolean n0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return ((J) fVar).h();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void n1(Parcel parcel, int i5, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        parcel.writeBundle(bundle);
        v1(parcel, iT1);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC0472z o(k4.d dVar) {
        ArrayList arrayList;
        i4.e eVar;
        B.f.x(1, IDMDatabaseInterface.IDM_DB_NOTIINFO_STATUS);
        if (!(dVar instanceof AbstractC0472z)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(dVar);
            sb.append(", ");
            throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
        }
        AbstractC0472z abstractC0472z = (AbstractC0472z) dVar;
        if (abstractC0472z.u0().size() != abstractC0472z.J0().k().size()) {
            arrayList = null;
        } else {
            List listU0 = abstractC0472z.u0();
            if (!(listU0 instanceof Collection) || !listU0.isEmpty()) {
                Iterator it = listU0.iterator();
                while (it.hasNext()) {
                    if (((N) it.next()).a() != 1) {
                        List listK = abstractC0472z.J0().k();
                        d3.i.d("type.constructor.parameters", listK);
                        ArrayList arrayListL1 = R2.m.l1(listU0, listK);
                        arrayList = new ArrayList(R2.o.C0(arrayListL1));
                        Iterator it2 = arrayListL1.iterator();
                        while (it2.hasNext()) {
                            Q2.e eVar2 = (Q2.e) it2.next();
                            N nB = (N) eVar2.f2212c;
                            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) eVar2.f2213d;
                            if (nB.a() != 1) {
                                Z zM0 = (nB.c() || nB.a() != 2) ? null : nB.b().M0();
                                d3.i.d("parameter", interfaceC0789Q);
                                nB = AbstractC0420a.b(new i4.h(1, new i4.i(nB, null, null, interfaceC0789Q, 6), zM0, (h4.G) null, false, 56));
                            }
                            arrayList.add(nB);
                        }
                        h4.V vE = h4.V.e(L.f7034b.f(abstractC0472z.J0(), arrayList));
                        int size = listU0.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            N n = (N) listU0.get(i5);
                            N n5 = (N) arrayList.get(i5);
                            if (n.a() != 1) {
                                List upperBounds = ((InterfaceC0789Q) abstractC0472z.J0().k().get(i5)).getUpperBounds();
                                d3.i.d("type.constructor.parameters[index].upperBounds", upperBounds);
                                ArrayList arrayList2 = new ArrayList();
                                Iterator it3 = upperBounds.iterator();
                                while (true) {
                                    boolean zHasNext = it3.hasNext();
                                    eVar = i4.e.f7170c;
                                    if (!zHasNext) {
                                        break;
                                    }
                                    arrayList2.add(eVar.u(vE.h(1, (AbstractC0468v) it3.next()).M0()));
                                }
                                if (!n.c() && n.a() == 3) {
                                    arrayList2.add(eVar.u(n.b().M0()));
                                }
                                AbstractC0468v abstractC0468vB = n5.b();
                                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedType", abstractC0468vB);
                                i4.i iVar = ((i4.h) abstractC0468vB).f7175e;
                                iVar.getClass();
                                iVar.f7180b = new f4.d(arrayList2, 2);
                            }
                        }
                    }
                }
                arrayList = null;
            }
        }
        if (arrayList != null) {
            return C0451d.r(abstractC0472z.I0(), abstractC0472z.J0(), arrayList, abstractC0472z.K0());
        }
        return null;
    }

    public static boolean o0(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return AbstractC0450c.i((AbstractC0468v) cVar);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static void o1(Parcel parcel, int i5, Parcelable parcelable, int i6) {
        if (parcelable == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        parcelable.writeToParcel(parcel, i6);
        v1(parcel, iT1);
    }

    public static int p(k4.b bVar) {
        d3.i.e("$receiver", bVar);
        if (bVar instanceof i4.h) {
            return ((i4.h) bVar).f7174d;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(bVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
    }

    public static boolean p0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            InterfaceC0804g interfaceC0804gI = ((J) fVar).i();
            InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
            return (interfaceC0802e != null ? interfaceC0802e.S() : null) instanceof C0817t;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void p1(Parcel parcel, int i5, String str) {
        if (str == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        parcel.writeString(str);
        v1(parcel, iT1);
    }

    public static void q(String str, Object obj) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static boolean q0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return fVar instanceof V3.m;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void q1(Parcel parcel, int i5, List list) {
        if (list == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        parcel.writeStringList(list);
        v1(parcel, iT1);
    }

    public static final Type r(d3.j jVar, boolean z4) {
        l0 l0Var = (l0) jVar;
        InterfaceC0483d interfaceC0483dC = l0Var.c();
        if (interfaceC0483dC instanceof InterfaceC0495p) {
            return new u((InterfaceC0495p) interfaceC0483dC);
        }
        if (!(interfaceC0483dC instanceof InterfaceC0482c)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + l0Var);
        }
        InterfaceC0482c interfaceC0482c = (InterfaceC0482c) interfaceC0483dC;
        Class clsR = z4 ? L2.b.r(interfaceC0482c) : L2.b.q(interfaceC0482c);
        List listB = l0Var.b();
        if (listB.isEmpty()) {
            return clsR;
        }
        if (!clsR.isArray()) {
            return y(clsR, listB);
        }
        if (clsR.getComponentType().isPrimitive()) {
            return clsR;
        }
        C0497r c0497r = (C0497r) R2.m.d1(listB);
        if (c0497r == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + l0Var);
        }
        int i5 = c0497r.f7154a;
        int i6 = i5 == 0 ? -1 : v.f7161a[Q0.f(i5)];
        if (i6 == -1 || i6 == 1) {
            return clsR;
        }
        if (i6 != 2 && i6 != 3) {
            throw new A0.c();
        }
        d3.j jVar2 = c0497r.f7155b;
        d3.i.b(jVar2);
        Type typeR = r(jVar2, false);
        return typeR instanceof Class ? clsR : new C0480a(typeR);
    }

    public static boolean r0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return fVar instanceof C0467u;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void r1(Parcel parcel, int i5, Parcelable[] parcelableArr, int i6) {
        if (parcelableArr == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, i6);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        v1(parcel, iT1);
    }

    public static ImageView.ScaleType s(int i5) {
        return i5 != 0 ? i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 5 ? i5 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static boolean s0(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static void s1(Parcel parcel, int i5, List list) {
        if (list == null) {
            return;
        }
        int iT1 = t1(parcel, i5);
        int size = list.size();
        parcel.writeInt(size);
        for (int i6 = 0; i6 < size; i6++) {
            Parcelable parcelable = (Parcelable) list.get(i6);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                int iDataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int iDataPosition2 = parcel.dataPosition();
                parcelable.writeToParcel(parcel, 0);
                int iDataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(iDataPosition);
                parcel.writeInt(iDataPosition3 - iDataPosition2);
                parcel.setDataPosition(iDataPosition3);
            }
        }
        v1(parcel, iT1);
    }

    public static float t(float f) {
        return (((((((int) (f / 2.5f)) * 2.5f) - 270.0f) + 360.0f) % 360.0f) * 1440.0f) / 360.0f;
    }

    public static final boolean t0(InterfaceC0802e interfaceC0802e) {
        LinkedHashSet linkedHashSet = C0727d.f8448a;
        if (T3.e.m(interfaceC0802e)) {
            LinkedHashSet linkedHashSet2 = C0727d.f8448a;
            Q3.b bVarF = X3.f.f(interfaceC0802e);
            if (R2.m.H0(linkedHashSet2, bVarF != null ? bVarF.g() : null)) {
                return true;
            }
        }
        return false;
    }

    public static int t1(Parcel parcel, int i5) {
        parcel.writeInt(i5 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static final int u(int i5) {
        B.f.x(i5, "<this>");
        int iF = Q0.f(i5);
        if (iF == 0) {
            return 3;
        }
        if (iF == 1) {
            return 1;
        }
        if (iF == 2) {
            return 2;
        }
        throw new A0.c();
    }

    public static boolean u0(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0472z) {
            return ((AbstractC0472z) dVar).K0();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static ArrayList u1(List list) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0379z4 c0379z4 = (C0379z4) it.next();
            Y1.k kVar = null;
            if (c0379z4 != null && !TextUtils.isEmpty(c0379z4.f5800c)) {
                String str = c0379z4.f5800c;
                AbstractC0213D.c(str);
                kVar = new Y1.k(c0379z4.f, c0379z4.f5801d, c0379z4.f5802e, str);
            }
            if (kVar != null) {
                arrayList.add(kVar);
            }
        }
        return arrayList;
    }

    public static final ArrayList v(ArrayList arrayList, List list, InterfaceC0799b interfaceC0799b) {
        d3.i.e("oldValueParameters", list);
        d3.i.e("newOwner", interfaceC0799b);
        arrayList.size();
        list.size();
        ArrayList arrayListL1 = R2.m.l1(arrayList, list);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayListL1));
        Iterator it = arrayListL1.iterator();
        while (it.hasNext()) {
            Q2.e eVar = (Q2.e) it.next();
            AbstractC0468v abstractC0468v = (AbstractC0468v) eVar.f2212c;
            V v4 = (V) eVar.f2213d;
            int i5 = v4.f9408h;
            InterfaceC0845h interfaceC0845hT = v4.t();
            Q3.f name = v4.getName();
            d3.i.d("oldParameter.name", name);
            boolean zR0 = v4.R0();
            AbstractC0468v abstractC0468vF = v4.f9412l != null ? X3.f.j(interfaceC0799b).g().f(abstractC0468v) : null;
            InterfaceC0786N interfaceC0786NM = v4.m();
            d3.i.d("oldParameter.source", interfaceC0786NM);
            arrayList2.add(new V(interfaceC0799b, null, i5, interfaceC0845hT, name, abstractC0468v, zR0, v4.f9410j, v4.f9411k, abstractC0468vF, interfaceC0786NM));
        }
        return arrayList2;
    }

    public static boolean v0(k4.f fVar) {
        d3.i.e("$receiver", fVar);
        if (fVar instanceof J) {
            return AbstractC0732i.G((J) fVar, o3.m.f8505b);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(fVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, fVar.getClass(), sb).toString());
    }

    public static void v1(Parcel parcel, int i5) {
        int iDataPosition = parcel.dataPosition();
        parcel.setDataPosition(i5 - 4);
        parcel.writeInt(iDataPosition - i5);
        parcel.setDataPosition(iDataPosition);
    }

    public static final Q2.f w(Throwable th) {
        d3.i.e("exception", th);
        return new Q2.f(th);
    }

    public static boolean w0(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        if (cVar instanceof AbstractC0468v) {
            return X.f((AbstractC0468v) cVar);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(cVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, cVar.getClass(), sb).toString());
    }

    public static void w1(Parcel parcel, int i5, int i6) {
        if (i6 < 65535) {
            parcel.writeInt(i5 | (i6 << 16));
        } else {
            parcel.writeInt(i5 | (-65536));
            parcel.writeInt(i6);
        }
    }

    public static Z x(i4.b bVar, k4.d dVar, k4.d dVar2) {
        d3.i.e("lowerBound", dVar);
        d3.i.e("upperBound", dVar2);
        if (!(dVar instanceof AbstractC0472z)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(bVar);
            sb.append(", ");
            throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
        }
        if (dVar2 instanceof AbstractC0472z) {
            return C0451d.j((AbstractC0472z) dVar, (AbstractC0472z) dVar2);
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(bVar);
        sb2.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb2).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean x0(k4.d dVar) {
        d3.i.e("$receiver", dVar);
        if (dVar instanceof AbstractC0468v) {
            return AbstractC0732i.F((AbstractC0468v) dVar);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(dVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, dVar.getClass(), sb).toString());
    }

    public static final t y(Class cls, List list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            ArrayList arrayList = new ArrayList(R2.o.C0(list));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(M((C0497r) it.next()));
            }
            return new t(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            ArrayList arrayList2 = new ArrayList(R2.o.C0(list));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(M((C0497r) it2.next()));
            }
            return new t(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        t tVarY = y(declaringClass, list.subList(length, list.size()));
        List listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(R2.o.C0(listSubList));
        Iterator it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(M((C0497r) it3.next()));
        }
        return new t(cls, tVarY, arrayList3);
    }

    public static boolean y0(k4.b bVar) {
        if (bVar instanceof i4.h) {
            return ((i4.h) bVar).f7178i;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(bVar);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, bVar.getClass(), sb).toString());
    }

    public static J3.r z(x xVar) {
        if (xVar instanceof P3.e) {
            P3.e eVar = (P3.e) xVar;
            String str = eVar.f2159b;
            d3.i.e("name", str);
            String str2 = eVar.f2160c;
            d3.i.e("desc", str2);
            return new J3.r(str.concat(str2));
        }
        if (!(xVar instanceof P3.d)) {
            throw new A0.c();
        }
        P3.d dVar = (P3.d) xVar;
        String str3 = dVar.f2157b;
        d3.i.e("name", str3);
        String str4 = dVar.f2158c;
        d3.i.e("desc", str4);
        return new J3.r(str3 + '#' + str4);
    }

    public static boolean z0(N n) {
        d3.i.e("$receiver", n);
        if (n instanceof N) {
            return n.c();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(n);
        sb.append(", ");
        throw new IllegalArgumentException(AbstractC0432c.g(d3.q.f6516a, n.getClass(), sb).toString());
    }

    public abstract String m();

    public String toString() {
        switch (this.f7163a) {
            case 11:
                return m();
            default:
                return super.toString();
        }
    }
}
