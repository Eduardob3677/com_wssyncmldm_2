package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0109a extends j0 implements X {

    /* renamed from: q, reason: collision with root package name */
    public final Z f3810q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f3811r;

    /* renamed from: s, reason: collision with root package name */
    public int f3812s;

    public C0109a(Z z4) {
        z4.D();
        L l5 = z4.f3803t;
        if (l5 != null) {
            l5.f3751d.getClassLoader();
        }
        this.f3892a = new ArrayList();
        this.f3898h = true;
        this.f3905p = false;
        this.f3812s = -1;
        this.f3810q = z4;
    }

    @Override // androidx.fragment.app.X
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f3897g) {
            return true;
        }
        Z z4 = this.f3810q;
        if (z4.f3789d == null) {
            z4.f3789d = new ArrayList();
        }
        z4.f3789d.add(this);
        return true;
    }

    @Override // androidx.fragment.app.j0
    public final void c(int i5, Fragment fragment, String str, int i6) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            Z.d.c(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i5 != 0) {
            if (i5 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i7 = fragment.mFragmentId;
            if (i7 != 0 && i7 != i5) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i5);
            }
            fragment.mFragmentId = i5;
            fragment.mContainerId = i5;
        }
        b(new i0(fragment, i6));
        fragment.mFragmentManager = this.f3810q;
    }

    public final void d(int i5) {
        if (this.f3897g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i5);
            }
            ArrayList arrayList = this.f3892a;
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                i0 i0Var = (i0) arrayList.get(i6);
                Fragment fragment = i0Var.f3880b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i5;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "Bump nesting of " + i0Var.f3880b + " to " + i0Var.f3880b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final int e(boolean z4) {
        if (this.f3811r) {
            throw new IllegalStateException("commit already called");
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new I.b(0));
            f("  ", printWriter, true);
            printWriter.close();
        }
        this.f3811r = true;
        boolean z5 = this.f3897g;
        Z z6 = this.f3810q;
        if (z5) {
            this.f3812s = z6.f3793i.getAndIncrement();
        } else {
            this.f3812s = -1;
        }
        z6.v(this, z4);
        return this.f3812s;
    }

    public final void f(String str, PrintWriter printWriter, boolean z4) {
        String str2;
        if (z4) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f3899i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f3812s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f3811r);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.f3893b != 0 || this.f3894c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3893b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3894c));
            }
            if (this.f3895d != 0 || this.f3896e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f3895d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f3896e));
            }
            if (this.f3900j != 0 || this.f3901k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3900j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f3901k);
            }
            if (this.f3902l != 0 || this.f3903m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f3902l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f3903m);
            }
        }
        ArrayList arrayList = this.f3892a;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            i0 i0Var = (i0) arrayList.get(i5);
            switch (i0Var.f3879a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + i0Var.f3879a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i5);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(i0Var.f3880b);
            if (z4) {
                if (i0Var.f3882d != 0 || i0Var.f3883e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(i0Var.f3882d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(i0Var.f3883e));
                }
                if (i0Var.f != 0 || i0Var.f3884g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(i0Var.f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(i0Var.f3884g));
                }
            }
        }
    }

    public final C0109a g(Fragment fragment) {
        Z z4 = fragment.mFragmentManager;
        if (z4 == null || z4 == this.f3810q) {
            b(new i0(fragment, 3));
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f3812s >= 0) {
            sb.append(" #");
            sb.append(this.f3812s);
        }
        if (this.f3899i != null) {
            sb.append(" ");
            sb.append(this.f3899i);
        }
        sb.append("}");
        return sb.toString();
    }
}
