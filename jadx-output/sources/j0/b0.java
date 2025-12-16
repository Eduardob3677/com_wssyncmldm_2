package j0;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.samsung.android.knox.container.KnoxContainerManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class b0 {

    /* renamed from: u, reason: collision with root package name */
    public static final List f7405u = Collections.emptyList();

    /* renamed from: a, reason: collision with root package name */
    public final View f7406a;

    /* renamed from: b, reason: collision with root package name */
    public WeakReference f7407b;

    /* renamed from: j, reason: collision with root package name */
    public int f7414j;

    /* renamed from: r, reason: collision with root package name */
    public RecyclerView f7421r;

    /* renamed from: s, reason: collision with root package name */
    public AbstractC0526A f7422s;

    /* renamed from: c, reason: collision with root package name */
    public int f7408c = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f7409d = -1;

    /* renamed from: e, reason: collision with root package name */
    public long f7410e = -1;
    public int f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f7411g = -1;

    /* renamed from: h, reason: collision with root package name */
    public b0 f7412h = null;

    /* renamed from: i, reason: collision with root package name */
    public b0 f7413i = null;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f7415k = null;

    /* renamed from: l, reason: collision with root package name */
    public List f7416l = null;

    /* renamed from: m, reason: collision with root package name */
    public int f7417m = 0;
    public P n = null;

    /* renamed from: o, reason: collision with root package name */
    public boolean f7418o = false;

    /* renamed from: p, reason: collision with root package name */
    public int f7419p = 0;

    /* renamed from: q, reason: collision with root package name */
    public int f7420q = -1;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7423t = true;

    public b0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f7406a = view;
    }

    public final void a(Object obj) {
        if (obj == null) {
            b(1024);
            return;
        }
        if ((1024 & this.f7414j) == 0) {
            if (this.f7415k == null) {
                ArrayList arrayList = new ArrayList();
                this.f7415k = arrayList;
                this.f7416l = Collections.unmodifiableList(arrayList);
            }
            this.f7415k.add(obj);
        }
    }

    public final void b(int i5) {
        this.f7414j = i5 | this.f7414j;
    }

    public final int c() {
        int i5 = this.f7411g;
        return i5 == -1 ? this.f7408c : i5;
    }

    public final List d() {
        ArrayList arrayList;
        return ((this.f7414j & 1024) != 0 || (arrayList = this.f7415k) == null || arrayList.size() == 0) ? f7405u : this.f7416l;
    }

    public final boolean e(int i5) {
        return (this.f7414j & i5) != 0;
    }

    public final boolean f() {
        View view = this.f7406a;
        return (view.getParent() == null || view.getParent() == this.f7421r) ? false : true;
    }

    public final boolean g() {
        return (this.f7414j & 1) != 0;
    }

    public final boolean h() {
        return (this.f7414j & 4) != 0;
    }

    public final boolean i() {
        if ((this.f7414j & 16) == 0) {
            WeakHashMap weakHashMap = J.Q.f940a;
            if (!this.f7406a.hasTransientState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean j() {
        return (this.f7414j & 8) != 0;
    }

    public final boolean k() {
        return this.n != null;
    }

    public final boolean l() {
        return (this.f7414j & 256) != 0;
    }

    public final boolean m() {
        return (this.f7414j & 2) != 0;
    }

    public final void n(int i5, boolean z4) {
        if (this.f7409d == -1) {
            this.f7409d = this.f7408c;
        }
        if (this.f7411g == -1) {
            this.f7411g = this.f7408c;
        }
        if (z4) {
            this.f7411g += i5;
        }
        this.f7408c += i5;
        View view = this.f7406a;
        if (view.getLayoutParams() != null) {
            ((K) view.getLayoutParams()).f7354c = true;
        }
    }

    public final void o() {
        if (RecyclerView.f4770l2 && l()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f7414j = 0;
        this.f7408c = -1;
        this.f7409d = -1;
        this.f7410e = -1L;
        this.f7411g = -1;
        this.f7417m = 0;
        this.f7412h = null;
        this.f7413i = null;
        ArrayList arrayList = this.f7415k;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f7414j &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
        this.f7419p = 0;
        this.f7420q = -1;
        RecyclerView.q(this);
    }

    public final void p(boolean z4) {
        int i5 = this.f7417m;
        int i6 = z4 ? i5 - 1 : i5 + 1;
        this.f7417m = i6;
        if (i6 < 0) {
            this.f7417m = 0;
            if (RecyclerView.f4770l2) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z4 && i6 == 1) {
            this.f7414j |= 16;
        } else if (z4 && i6 == 0) {
            this.f7414j &= -17;
        }
        if (RecyclerView.f4771m2) {
            Log.d("SeslRecyclerView", "setIsRecyclable val:" + z4 + ":" + this);
        }
    }

    public final boolean q() {
        return (this.f7414j & 128) != 0;
    }

    public final boolean r() {
        return (this.f7414j & 32) != 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f7408c + " id=" + this.f7410e + ", oldPos=" + this.f7409d + ", pLpos:" + this.f7411g);
        if (k()) {
            sb.append(" scrap ");
            sb.append(this.f7418o ? "[changeScrap]" : "[attachedScrap]");
        }
        if (h()) {
            sb.append(" invalid");
        }
        if (!g()) {
            sb.append(" unbound");
        }
        if ((this.f7414j & 2) != 0) {
            sb.append(" update");
        }
        if (j()) {
            sb.append(" removed");
        }
        if (q()) {
            sb.append(" ignored");
        }
        if (l()) {
            sb.append(" tmpDetached");
        }
        if (!i()) {
            sb.append(" not recyclable(" + this.f7417m + ")");
        }
        if ((this.f7414j & 512) != 0 || h()) {
            sb.append(" undefined adapter position");
        }
        if (this.f7406a.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
