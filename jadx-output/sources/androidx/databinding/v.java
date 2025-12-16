package androidx.databinding;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0149p;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.H;
import androidx.lifecycle.InterfaceC0154v;
import androidx.lifecycle.InterfaceC0155w;
import com.wssyncmldm.R;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import o.C0716e;

/* loaded from: classes.dex */
public abstract class v extends a {
    private static final int BINDING_NUMBER_START = 8;
    public static final String BINDING_TAG_PREFIX = "binding_";
    private static final int HALTED = 2;
    private static final int REBIND = 1;
    private static final int REBOUND = 3;
    protected final f mBindingComponent;
    private Choreographer mChoreographer;
    private v mContainingBinding;
    private final Choreographer.FrameCallback mFrameCallback;
    private boolean mInLiveDataRegisterObserver;
    protected boolean mInStateFlowRegisterObserver;
    private boolean mIsExecutingPendingBindings;
    private InterfaceC0155w mLifecycleOwner;
    private w[] mLocalFieldObservers;
    private ViewDataBinding$OnStartListener mOnStartListener;
    private boolean mPendingRebind;
    private c mRebindCallbacks;
    private boolean mRebindHalted;
    private final Runnable mRebindRunnable;
    private final View mRoot;
    private Handler mUIThreadHandler;
    static int SDK_INT = Build.VERSION.SDK_INT;
    private static final boolean USE_CHOREOGRAPHER = true;
    private static final d CREATE_PROPERTY_LISTENER = new Z0.h(8);
    private static final d CREATE_LIST_LISTENER = new e4.d(8);
    private static final d CREATE_MAP_LISTENER = new P1.e(9);
    private static final d CREATE_LIVE_DATA_LISTENER = new Z0.h(9);
    private static final b REBIND_NOTIFIER = new o(1);
    private static final ReferenceQueue<v> sReferenceQueue = new ReferenceQueue<>();
    private static final View.OnAttachStateChangeListener ROOT_REATTACHED_LISTENER = new J1.n(1);

    public v(Object obj, View view, int i5) {
        if (obj != null) {
            throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
        }
        this.mRebindRunnable = new B1.h(9, this);
        this.mPendingRebind = false;
        this.mRebindHalted = false;
        this.mLocalFieldObservers = new w[i5];
        this.mRoot = view;
        if (Looper.myLooper() == null) {
            throw new IllegalStateException("DataBinding must be created in view's UI Thread");
        }
        if (USE_CHOREOGRAPHER) {
            this.mChoreographer = Choreographer.getInstance();
            this.mFrameCallback = new V.a(1, this);
        } else {
            this.mFrameCallback = null;
            this.mUIThreadHandler = new Handler(Looper.myLooper());
        }
    }

    public static void access$300() {
        while (true) {
            Reference<? extends v> referencePoll = sReferenceQueue.poll();
            if (referencePoll == null) {
                return;
            }
            if (referencePoll instanceof w) {
                ((w) referencePoll).a();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(View view, Object[] objArr, SparseIntArray sparseIntArray, boolean z4) {
        int id;
        int i5;
        int i6;
        int length;
        if (getBinding(view) != null) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        if (z4 && str != null && str.startsWith("layout")) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf > 0 && (length = str.length()) != (i6 = iLastIndexOf + 1)) {
                for (int i7 = i6; i7 < length; i7++) {
                    if (!Character.isDigit(str.charAt(i7))) {
                        id = view.getId();
                        if (id > 0) {
                            objArr[i5] = view;
                        }
                    }
                }
                int iCharAt = 0;
                while (i6 < str.length()) {
                    iCharAt = (iCharAt * 10) + (str.charAt(i6) - '0');
                    i6++;
                }
                if (objArr[iCharAt] == null) {
                    objArr[iCharAt] = view;
                }
            }
        } else if (str == null || !str.startsWith(BINDING_TAG_PREFIX)) {
            id = view.getId();
            if (id > 0 && sparseIntArray != null && (i5 = sparseIntArray.get(id, -1)) >= 0 && objArr[i5] == null) {
                objArr[i5] = view;
            }
        } else {
            int iCharAt2 = 0;
            for (int i8 = BINDING_NUMBER_START; i8 < str.length(); i8++) {
                iCharAt2 = (iCharAt2 * 10) + (str.charAt(i8) - '0');
            }
            if (objArr[iCharAt2] == null) {
                objArr[iCharAt2] = view;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                b(viewGroup.getChildAt(i9), objArr, sparseIntArray, false);
            }
        }
    }

    public static v bind(Object obj, View view, int i5) {
        if (obj == null) {
            return g.f3671a.getDataBinder((f) null, view, i5);
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    public static void executeBindingsOn(v vVar) {
        vVar.a();
    }

    public static v getBinding(View view) {
        if (view != null) {
            return (v) view.getTag(R.id.dataBinding);
        }
        return null;
    }

    public static int getBuildSdkInt() {
        return SDK_INT;
    }

    public static int getColorFromResource(View view, int i5) {
        return view.getContext().getColor(i5);
    }

    public static ColorStateList getColorStateListFromResource(View view, int i5) {
        return view.getContext().getColorStateList(i5);
    }

    public static Drawable getDrawableFromResource(View view, int i5) {
        return view.getContext().getDrawable(i5);
    }

    public static <K, T> T getFrom(Map<K, T> map, K k5) {
        if (map == null) {
            return null;
        }
        return map.get(k5);
    }

    public static <T> T getFromArray(T[] tArr, int i5) {
        if (tArr == null || i5 < 0 || i5 >= tArr.length) {
            return null;
        }
        return tArr[i5];
    }

    public static <T> T getFromList(C0716e c0716e, int i5) {
        if (c0716e == null || i5 < 0) {
            return null;
        }
        return (T) c0716e.d(i5, null);
    }

    public static <T extends v> T inflateInternal(LayoutInflater layoutInflater, int i5, ViewGroup viewGroup, boolean z4, Object obj) {
        if (obj == null) {
            return (T) g.c(layoutInflater, i5, viewGroup, z4);
        }
        throw new IllegalArgumentException("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
    }

    public static Object[] mapBindings(f fVar, View view, int i5, q qVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i5];
        b(view, objArr, sparseIntArray, true);
        return objArr;
    }

    public static boolean parse(String str, boolean z4) {
        return str == null ? z4 : Boolean.parseBoolean(str);
    }

    public static int safeUnbox(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static void setBindingInverseListener(v vVar, h hVar, s sVar) {
        if (hVar == sVar || hVar == null) {
            return;
        }
        B.f.F(hVar);
        vVar.removeOnPropertyChangedCallback(null);
    }

    public static <T> void setTo(T[] tArr, int i5, T t2) {
        if (tArr == null || i5 < 0 || i5 >= tArr.length) {
            return;
        }
        tArr[i5] = t2;
    }

    public final void a() {
        if (this.mIsExecutingPendingBindings) {
            requestRebind();
            return;
        }
        if (hasPendingBindings()) {
            this.mIsExecutingPendingBindings = true;
            this.mRebindHalted = false;
            c cVar = this.mRebindCallbacks;
            if (cVar != null) {
                cVar.c(1, this);
                if (this.mRebindHalted) {
                    this.mRebindCallbacks.c(2, this);
                }
            }
            if (!this.mRebindHalted) {
                executeBindings();
                c cVar2 = this.mRebindCallbacks;
                if (cVar2 != null) {
                    cVar2.c(3, this);
                }
            }
            this.mIsExecutingPendingBindings = false;
        }
    }

    public void addOnRebindCallback(n nVar) {
        if (this.mRebindCallbacks == null) {
            this.mRebindCallbacks = new c(REBIND_NOTIFIER);
        }
        this.mRebindCallbacks.a(nVar);
    }

    public void ensureBindingComponentIsNotNull(Class<?> cls) {
        throw new IllegalStateException("Required DataBindingComponent is null in class " + getClass().getSimpleName() + ". A BindingAdapter in " + cls.getCanonicalName() + " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don't use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static.");
    }

    public abstract void executeBindings();

    public void executePendingBindings() {
        v vVar = this.mContainingBinding;
        if (vVar == null) {
            a();
        } else {
            vVar.executePendingBindings();
        }
    }

    public void forceExecuteBindings() {
        executeBindings();
    }

    public InterfaceC0155w getLifecycleOwner() {
        return this.mLifecycleOwner;
    }

    public Object getObservedField(int i5) {
        w wVar = this.mLocalFieldObservers[i5];
        if (wVar == null) {
            return null;
        }
        return wVar.f3682c;
    }

    public View getRoot() {
        return this.mRoot;
    }

    public void handleFieldChange(int i5, Object obj, int i6) {
        if (this.mInLiveDataRegisterObserver || this.mInStateFlowRegisterObserver || !onFieldChange(i5, obj, i6)) {
            return;
        }
        requestRebind();
    }

    public abstract boolean hasPendingBindings();

    public abstract void invalidateAll();

    public abstract boolean onFieldChange(int i5, Object obj, int i6);

    public void registerTo(int i5, Object obj, d dVar) {
        if (obj == null) {
            return;
        }
        w wVarF = this.mLocalFieldObservers[i5];
        if (wVarF == null) {
            wVarF = dVar.f(this, i5, sReferenceQueue);
            this.mLocalFieldObservers[i5] = wVarF;
            InterfaceC0155w interfaceC0155w = this.mLifecycleOwner;
            if (interfaceC0155w != null) {
                wVarF.f3680a.b(interfaceC0155w);
            }
        }
        wVarF.a();
        wVarF.f3682c = obj;
        wVarF.f3680a.a(obj);
    }

    public void removeOnRebindCallback(n nVar) {
        c cVar = this.mRebindCallbacks;
        if (cVar != null) {
            cVar.f(nVar);
        }
    }

    public void requestRebind() {
        v vVar = this.mContainingBinding;
        if (vVar != null) {
            vVar.requestRebind();
            return;
        }
        InterfaceC0155w interfaceC0155w = this.mLifecycleOwner;
        if (interfaceC0155w == null || ((C0157y) interfaceC0155w.getLifecycle()).f4073c.a(EnumC0150q.f)) {
            synchronized (this) {
                try {
                    if (this.mPendingRebind) {
                        return;
                    }
                    this.mPendingRebind = true;
                    if (USE_CHOREOGRAPHER) {
                        this.mChoreographer.postFrameCallback(this.mFrameCallback);
                    } else {
                        this.mUIThreadHandler.post(this.mRebindRunnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void setContainedBinding(v vVar) {
        if (vVar != null) {
            vVar.mContainingBinding = this;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.databinding.ViewDataBinding$OnStartListener] */
    public void setLifecycleOwner(InterfaceC0155w interfaceC0155w) {
        if (interfaceC0155w instanceof Fragment) {
            Log.w("DataBinding", "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment's view lifecycle");
        }
        InterfaceC0155w interfaceC0155w2 = this.mLifecycleOwner;
        if (interfaceC0155w2 == interfaceC0155w) {
            return;
        }
        if (interfaceC0155w2 != null) {
            interfaceC0155w2.getLifecycle().b(this.mOnStartListener);
        }
        this.mLifecycleOwner = interfaceC0155w;
        if (interfaceC0155w != null) {
            if (this.mOnStartListener == null) {
                this.mOnStartListener = new InterfaceC0154v(this) { // from class: androidx.databinding.ViewDataBinding$OnStartListener

                    /* renamed from: a, reason: collision with root package name */
                    public final WeakReference f3666a;

                    {
                        this.f3666a = new WeakReference(this);
                    }

                    @H(EnumC0149p.ON_START)
                    public void onStart() {
                        v vVar = (v) this.f3666a.get();
                        if (vVar != null) {
                            vVar.executePendingBindings();
                        }
                    }
                };
            }
            interfaceC0155w.getLifecycle().a(this.mOnStartListener);
        }
        for (w wVar : this.mLocalFieldObservers) {
            if (wVar != null) {
                wVar.f3680a.b(interfaceC0155w);
            }
        }
    }

    public void setRootTag(View view) {
        view.setTag(R.id.dataBinding, this);
    }

    public abstract boolean setVariable(int i5, Object obj);

    public void unbind() {
        for (w wVar : this.mLocalFieldObservers) {
            if (wVar != null) {
                wVar.a();
            }
        }
    }

    public boolean unregisterFrom(int i5) {
        w wVar = this.mLocalFieldObservers[i5];
        if (wVar != null) {
            return wVar.a();
        }
        return false;
    }

    public boolean updateLiveDataRegistration(int i5, C c2) {
        this.mInLiveDataRegisterObserver = true;
        try {
            return updateRegistration(i5, c2, CREATE_LIVE_DATA_LISTENER);
        } finally {
            this.mInLiveDataRegisterObserver = false;
        }
    }

    public boolean updateRegistration(int i5, Object obj, d dVar) {
        if (obj == null) {
            return unregisterFrom(i5);
        }
        w wVar = this.mLocalFieldObservers[i5];
        if (wVar == null) {
            registerTo(i5, obj, dVar);
            return true;
        }
        if (wVar.f3682c == obj) {
            return false;
        }
        unregisterFrom(i5);
        registerTo(i5, obj, dVar);
        return true;
    }

    public static <T> T getFromList(List<T> list, int i5) {
        if (list == null || i5 < 0 || i5 >= list.size()) {
            return null;
        }
        return list.get(i5);
    }

    public static byte parse(String str, byte b3) {
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b3;
        }
    }

    public static long safeUnbox(Long l5) {
        if (l5 == null) {
            return 0L;
        }
        return l5.longValue();
    }

    public void setRootTag(View[] viewArr) {
        for (View view : viewArr) {
            view.setTag(R.id.dataBinding, this);
        }
    }

    public static boolean getFromArray(boolean[] zArr, int i5) {
        if (zArr == null || i5 < 0 || i5 >= zArr.length) {
            return false;
        }
        return zArr[i5];
    }

    public static Object[] mapBindings(f fVar, View[] viewArr, int i5, q qVar, SparseIntArray sparseIntArray) {
        Object[] objArr = new Object[i5];
        for (View view : viewArr) {
            b(view, objArr, sparseIntArray, true);
        }
        return objArr;
    }

    public static short parse(String str, short s5) {
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s5;
        }
    }

    public static short safeUnbox(Short sh) {
        if (sh == null) {
            return (short) 0;
        }
        return sh.shortValue();
    }

    public static void setTo(boolean[] zArr, int i5, boolean z4) {
        if (zArr == null || i5 < 0 || i5 >= zArr.length) {
            return;
        }
        zArr[i5] = z4;
    }

    public static <T> T getFromList(SparseArray<T> sparseArray, int i5) {
        if (sparseArray == null || i5 < 0) {
            return null;
        }
        return sparseArray.get(i5);
    }

    public static int parse(String str, int i5) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i5;
        }
    }

    public static byte safeUnbox(Byte b3) {
        if (b3 == null) {
            return (byte) 0;
        }
        return b3.byteValue();
    }

    public static byte getFromArray(byte[] bArr, int i5) {
        if (bArr == null || i5 < 0 || i5 >= bArr.length) {
            return (byte) 0;
        }
        return bArr[i5];
    }

    public static <T> T getFromList(LongSparseArray<T> longSparseArray, int i5) {
        if (longSparseArray == null || i5 < 0) {
            return null;
        }
        return longSparseArray.get(i5);
    }

    public static long parse(String str, long j3) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j3;
        }
    }

    public static char safeUnbox(Character ch) {
        if (ch == null) {
            return (char) 0;
        }
        return ch.charValue();
    }

    public static void setTo(byte[] bArr, int i5, byte b3) {
        if (bArr == null || i5 < 0 || i5 >= bArr.length) {
            return;
        }
        bArr[i5] = b3;
    }

    public static boolean getFromList(SparseBooleanArray sparseBooleanArray, int i5) {
        if (sparseBooleanArray == null || i5 < 0) {
            return false;
        }
        return sparseBooleanArray.get(i5);
    }

    public static float parse(String str, float f) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f;
        }
    }

    public static double safeUnbox(Double d2) {
        if (d2 == null) {
            return 0.0d;
        }
        return d2.doubleValue();
    }

    public static short getFromArray(short[] sArr, int i5) {
        if (sArr == null || i5 < 0 || i5 >= sArr.length) {
            return (short) 0;
        }
        return sArr[i5];
    }

    public static int getFromList(SparseIntArray sparseIntArray, int i5) {
        if (sparseIntArray == null || i5 < 0) {
            return 0;
        }
        return sparseIntArray.get(i5);
    }

    public static double parse(String str, double d2) {
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d2;
        }
    }

    public static float safeUnbox(Float f) {
        if (f == null) {
            return 0.0f;
        }
        return f.floatValue();
    }

    public static void setTo(short[] sArr, int i5, short s5) {
        if (sArr == null || i5 < 0 || i5 >= sArr.length) {
            return;
        }
        sArr[i5] = s5;
    }

    public boolean updateRegistration(int i5, j jVar) {
        return updateRegistration(i5, jVar, CREATE_PROPERTY_LISTENER);
    }

    public static long getFromList(SparseLongArray sparseLongArray, int i5) {
        if (sparseLongArray == null || i5 < 0) {
            return 0L;
        }
        return sparseLongArray.get(i5);
    }

    public static char parse(String str, char c2) {
        return (str == null || str.isEmpty()) ? c2 : str.charAt(0);
    }

    public static boolean safeUnbox(Boolean bool) {
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public boolean updateRegistration(int i5, k kVar) {
        return updateRegistration(i5, kVar, CREATE_LIST_LISTENER);
    }

    public static char getFromArray(char[] cArr, int i5) {
        if (cArr == null || i5 < 0 || i5 >= cArr.length) {
            return (char) 0;
        }
        return cArr[i5];
    }

    public static void setTo(char[] cArr, int i5, char c2) {
        if (cArr == null || i5 < 0 || i5 >= cArr.length) {
            return;
        }
        cArr[i5] = c2;
    }

    public boolean updateRegistration(int i5, l lVar) {
        return updateRegistration(i5, lVar, CREATE_MAP_LISTENER);
    }

    public static int getFromArray(int[] iArr, int i5) {
        if (iArr == null || i5 < 0 || i5 >= iArr.length) {
            return 0;
        }
        return iArr[i5];
    }

    public static void setTo(int[] iArr, int i5, int i6) {
        if (iArr == null || i5 < 0 || i5 >= iArr.length) {
            return;
        }
        iArr[i5] = i6;
    }

    public static long getFromArray(long[] jArr, int i5) {
        if (jArr == null || i5 < 0 || i5 >= jArr.length) {
            return 0L;
        }
        return jArr[i5];
    }

    public static void setTo(long[] jArr, int i5, long j3) {
        if (jArr == null || i5 < 0 || i5 >= jArr.length) {
            return;
        }
        jArr[i5] = j3;
    }

    public static float getFromArray(float[] fArr, int i5) {
        if (fArr == null || i5 < 0 || i5 >= fArr.length) {
            return 0.0f;
        }
        return fArr[i5];
    }

    public static void setTo(float[] fArr, int i5, float f) {
        if (fArr == null || i5 < 0 || i5 >= fArr.length) {
            return;
        }
        fArr[i5] = f;
    }

    public static double getFromArray(double[] dArr, int i5) {
        if (dArr == null || i5 < 0 || i5 >= dArr.length) {
            return 0.0d;
        }
        return dArr[i5];
    }

    public static void setTo(double[] dArr, int i5, double d2) {
        if (dArr == null || i5 < 0 || i5 >= dArr.length) {
            return;
        }
        dArr[i5] = d2;
    }

    public static <T> void setTo(List<T> list, int i5, T t2) {
        if (list == null || i5 < 0 || i5 >= list.size()) {
            return;
        }
        list.set(i5, t2);
    }

    public static <T> void setTo(SparseArray<T> sparseArray, int i5, T t2) {
        if (sparseArray == null || i5 < 0 || i5 >= sparseArray.size()) {
            return;
        }
        sparseArray.put(i5, t2);
    }

    public static <T> void setTo(LongSparseArray<T> longSparseArray, int i5, T t2) {
        if (longSparseArray == null || i5 < 0 || i5 >= longSparseArray.size()) {
            return;
        }
        longSparseArray.put(i5, t2);
    }

    public static <T> void setTo(C0716e c0716e, int i5, T t2) {
        if (c0716e == null || i5 < 0 || i5 >= c0716e.f()) {
            return;
        }
        c0716e.e(i5, t2);
    }

    public static void setTo(SparseBooleanArray sparseBooleanArray, int i5, boolean z4) {
        if (sparseBooleanArray == null || i5 < 0 || i5 >= sparseBooleanArray.size()) {
            return;
        }
        sparseBooleanArray.put(i5, z4);
    }

    public static void setTo(SparseIntArray sparseIntArray, int i5, int i6) {
        if (sparseIntArray == null || i5 < 0 || i5 >= sparseIntArray.size()) {
            return;
        }
        sparseIntArray.put(i5, i6);
    }

    public static void setTo(SparseLongArray sparseLongArray, int i5, long j3) {
        if (sparseLongArray == null || i5 < 0 || i5 >= sparseLongArray.size()) {
            return;
        }
        sparseLongArray.put(i5, j3);
    }

    public static <K, T> void setTo(Map<K, T> map, K k5, T t2) {
        if (map == null) {
            return;
        }
        map.put(k5, t2);
    }
}
