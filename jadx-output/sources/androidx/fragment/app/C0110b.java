package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0110b implements Parcelable {
    public static final Parcelable.Creator<C0110b> CREATOR = new E0.a(10);

    /* renamed from: c, reason: collision with root package name */
    public final int[] f3813c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3814d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f3815e;
    public final int[] f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3816g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3817h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3818i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3819j;

    /* renamed from: k, reason: collision with root package name */
    public final CharSequence f3820k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3821l;

    /* renamed from: m, reason: collision with root package name */
    public final CharSequence f3822m;
    public final ArrayList n;

    /* renamed from: o, reason: collision with root package name */
    public final ArrayList f3823o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f3824p;

    public C0110b(C0109a c0109a) {
        int size = c0109a.f3892a.size();
        this.f3813c = new int[size * 6];
        if (!c0109a.f3897g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f3814d = new ArrayList(size);
        this.f3815e = new int[size];
        this.f = new int[size];
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            i0 i0Var = (i0) c0109a.f3892a.get(i6);
            int i7 = i5 + 1;
            this.f3813c[i5] = i0Var.f3879a;
            ArrayList arrayList = this.f3814d;
            Fragment fragment = i0Var.f3880b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f3813c;
            iArr[i7] = i0Var.f3881c ? 1 : 0;
            iArr[i5 + 2] = i0Var.f3882d;
            iArr[i5 + 3] = i0Var.f3883e;
            int i8 = i5 + 5;
            iArr[i5 + 4] = i0Var.f;
            i5 += 6;
            iArr[i8] = i0Var.f3884g;
            this.f3815e[i6] = i0Var.f3885h.ordinal();
            this.f[i6] = i0Var.f3886i.ordinal();
        }
        this.f3816g = c0109a.f;
        this.f3817h = c0109a.f3899i;
        this.f3818i = c0109a.f3812s;
        this.f3819j = c0109a.f3900j;
        this.f3820k = c0109a.f3901k;
        this.f3821l = c0109a.f3902l;
        this.f3822m = c0109a.f3903m;
        this.n = c0109a.n;
        this.f3823o = c0109a.f3904o;
        this.f3824p = c0109a.f3905p;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeIntArray(this.f3813c);
        parcel.writeStringList(this.f3814d);
        parcel.writeIntArray(this.f3815e);
        parcel.writeIntArray(this.f);
        parcel.writeInt(this.f3816g);
        parcel.writeString(this.f3817h);
        parcel.writeInt(this.f3818i);
        parcel.writeInt(this.f3819j);
        TextUtils.writeToParcel(this.f3820k, parcel, 0);
        parcel.writeInt(this.f3821l);
        TextUtils.writeToParcel(this.f3822m, parcel, 0);
        parcel.writeStringList(this.n);
        parcel.writeStringList(this.f3823o);
        parcel.writeInt(this.f3824p ? 1 : 0);
    }

    public C0110b(Parcel parcel) {
        this.f3813c = parcel.createIntArray();
        this.f3814d = parcel.createStringArrayList();
        this.f3815e = parcel.createIntArray();
        this.f = parcel.createIntArray();
        this.f3816g = parcel.readInt();
        this.f3817h = parcel.readString();
        this.f3818i = parcel.readInt();
        this.f3819j = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f3820k = (CharSequence) creator.createFromParcel(parcel);
        this.f3821l = parcel.readInt();
        this.f3822m = (CharSequence) creator.createFromParcel(parcel);
        this.n = parcel.createStringArrayList();
        this.f3823o = parcel.createStringArrayList();
        this.f3824p = parcel.readInt() != 0;
    }
}
