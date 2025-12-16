package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e0 implements Parcelable {
    public static final Parcelable.Creator<e0> CREATOR = new E0.a(14);

    /* renamed from: c, reason: collision with root package name */
    public final String f3846c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3847d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3848e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3849g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3850h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3851i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f3852j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f3853k;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f3854l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3855m;
    public final String n;

    /* renamed from: o, reason: collision with root package name */
    public final int f3856o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f3857p;

    public e0(Fragment fragment) {
        this.f3846c = fragment.getClass().getName();
        this.f3847d = fragment.mWho;
        this.f3848e = fragment.mFromLayout;
        this.f = fragment.mFragmentId;
        this.f3849g = fragment.mContainerId;
        this.f3850h = fragment.mTag;
        this.f3851i = fragment.mRetainInstance;
        this.f3852j = fragment.mRemoving;
        this.f3853k = fragment.mDetached;
        this.f3854l = fragment.mHidden;
        this.f3855m = fragment.mMaxState.ordinal();
        this.n = fragment.mTargetWho;
        this.f3856o = fragment.mTargetRequestCode;
        this.f3857p = fragment.mUserVisibleHint;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f3846c);
        sb.append(" (");
        sb.append(this.f3847d);
        sb.append(")}:");
        if (this.f3848e) {
            sb.append(" fromLayout");
        }
        int i5 = this.f3849g;
        if (i5 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i5));
        }
        String str = this.f3850h;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f3851i) {
            sb.append(" retainInstance");
        }
        if (this.f3852j) {
            sb.append(" removing");
        }
        if (this.f3853k) {
            sb.append(" detached");
        }
        if (this.f3854l) {
            sb.append(" hidden");
        }
        String str2 = this.n;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.f3856o);
        }
        if (this.f3857p) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeString(this.f3846c);
        parcel.writeString(this.f3847d);
        parcel.writeInt(this.f3848e ? 1 : 0);
        parcel.writeInt(this.f);
        parcel.writeInt(this.f3849g);
        parcel.writeString(this.f3850h);
        parcel.writeInt(this.f3851i ? 1 : 0);
        parcel.writeInt(this.f3852j ? 1 : 0);
        parcel.writeInt(this.f3853k ? 1 : 0);
        parcel.writeInt(this.f3854l ? 1 : 0);
        parcel.writeInt(this.f3855m);
        parcel.writeString(this.n);
        parcel.writeInt(this.f3856o);
        parcel.writeInt(this.f3857p ? 1 : 0);
    }

    public e0(Parcel parcel) {
        this.f3846c = parcel.readString();
        this.f3847d = parcel.readString();
        this.f3848e = parcel.readInt() != 0;
        this.f = parcel.readInt();
        this.f3849g = parcel.readInt();
        this.f3850h = parcel.readString();
        this.f3851i = parcel.readInt() != 0;
        this.f3852j = parcel.readInt() != 0;
        this.f3853k = parcel.readInt() != 0;
        this.f3854l = parcel.readInt() != 0;
        this.f3855m = parcel.readInt();
        this.n = parcel.readString();
        this.f3856o = parcel.readInt();
        this.f3857p = parcel.readInt() != 0;
    }
}
