package androidx.versionedparcelable;

import B.f;
import E0.a;
import E0.b;
import E0.c;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import h0.AbstractC0432c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import o.C0713b;

/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new a(0);

    /* renamed from: c, reason: collision with root package name */
    public final c f4976c;

    public ParcelImpl(Parcel parcel) throws NoSuchMethodException, SecurityException {
        parcel.dataPosition();
        int iDataSize = parcel.dataSize();
        C0713b c0713b = new C0713b();
        C0713b c0713b2 = new C0713b();
        C0713b c0713b3 = new C0713b();
        new SparseIntArray();
        String string = parcel.readString();
        c cVar = null;
        if (string != null) {
            b bVar = new b(parcel, parcel.dataPosition(), iDataSize, AbstractC0432c.h("", "  "), c0713b, c0713b2, c0713b3);
            try {
                Method declaredMethod = (Method) c0713b.getOrDefault(string, null);
                if (declaredMethod == null) {
                    System.currentTimeMillis();
                    declaredMethod = Class.forName(string, true, b.class.getClassLoader()).getDeclaredMethod("read", b.class);
                    c0713b.put(string, declaredMethod);
                }
                cVar = (c) declaredMethod.invoke(null, bVar);
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e6);
            } catch (NoSuchMethodException e7) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e7);
            } catch (InvocationTargetException e8) {
                if (!(e8.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e8);
                }
                throw ((RuntimeException) e8.getCause());
            }
        }
        this.f4976c = cVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        b bVar = new b(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C0713b(), new C0713b(), new C0713b());
        Parcel parcel2 = bVar.f513e;
        c cVar = this.f4976c;
        if (cVar == null) {
            parcel2.writeString(null);
            return;
        }
        try {
            parcel2.writeString(bVar.a(cVar.getClass()).getName());
            int iDataPosition = parcel2.dataPosition();
            int i6 = bVar.f517j;
            if (i6 == bVar.f) {
                i6 = bVar.f514g;
            }
            b bVar2 = new b(parcel2, iDataPosition, i6, f.w(new StringBuilder(), bVar.f515h, "  "), bVar.f509a, bVar.f510b, bVar.f511c);
            try {
                bVar.b(cVar.getClass()).invoke(null, cVar, bVar2);
                int i7 = bVar2.f516i;
                if (i7 >= 0) {
                    int i8 = bVar2.f512d.get(i7);
                    Parcel parcel3 = bVar2.f513e;
                    int iDataPosition2 = parcel3.dataPosition();
                    parcel3.setDataPosition(i8);
                    parcel3.writeInt(iDataPosition2 - i8);
                    parcel3.setDataPosition(iDataPosition2);
                }
            } catch (ClassNotFoundException e5) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e5);
            } catch (IllegalAccessException e6) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e6);
            } catch (NoSuchMethodException e7) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e7);
            } catch (InvocationTargetException e8) {
                if (!(e8.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e8);
                }
                throw ((RuntimeException) e8.getCause());
            }
        } catch (ClassNotFoundException e9) {
            throw new RuntimeException(cVar.getClass().getSimpleName().concat(" does not have a Parcelizer"), e9);
        }
    }
}
