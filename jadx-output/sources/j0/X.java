package j0;

/* loaded from: classes.dex */
public final class X {

    /* renamed from: a, reason: collision with root package name */
    public int f7378a;

    /* renamed from: b, reason: collision with root package name */
    public int f7379b;

    /* renamed from: c, reason: collision with root package name */
    public int f7380c;

    /* renamed from: d, reason: collision with root package name */
    public int f7381d;

    /* renamed from: e, reason: collision with root package name */
    public int f7382e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7383g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7384h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f7385i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7386j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7387k;

    /* renamed from: l, reason: collision with root package name */
    public int f7388l;

    /* renamed from: m, reason: collision with root package name */
    public long f7389m;
    public int n;

    public final void a(int i5) {
        if ((this.f7381d & i5) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i5) + " but it is " + Integer.toBinaryString(this.f7381d));
    }

    public final int b() {
        return this.f7383g ? this.f7379b - this.f7380c : this.f7382e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f7378a + ", mData=null, mItemCount=" + this.f7382e + ", mIsMeasuring=" + this.f7385i + ", mPreviousLayoutItemCount=" + this.f7379b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f7380c + ", mStructureChanged=" + this.f + ", mInPreLayout=" + this.f7383g + ", mRunSimpleAnimations=" + this.f7386j + ", mRunPredictiveAnimations=" + this.f7387k + '}';
    }
}
