package B;

import a1.InterfaceC0104a;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0237c;
import com.google.android.gms.internal.p000firebaseauthapi.Y3;
import com.google.android.gms.internal.p000firebaseauthapi.f5;
import com.idm.providers.mo.IDMMoInterface;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;
import d3.i;
import h0.AbstractC0432c;
import k.Q0;

/* loaded from: classes.dex */
public abstract /* synthetic */ class f {
    public static /* synthetic */ void A(InterfaceC0237c interfaceC0237c) {
        if (interfaceC0237c != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void B(Y3 y3) {
        if (y3 != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void C(Object obj) {
        throw new ClassCastException();
    }

    public static void D(String str, int i5) {
        Log.I(str + i5);
    }

    public static /* synthetic */ void E(int i5, String str) {
        if (i5 != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(AbstractC0432c.h(str, " must not be null"));
        i.f(nullPointerException, i.class.getName());
        throw nullPointerException;
    }

    public static /* synthetic */ void F(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ String G(int i5) {
        switch (i5) {
            case 1:
                return "UNKNOWN_KEYMATERIAL";
            case 2:
                return "SYMMETRIC";
            case 3:
                return "ASYMMETRIC_PRIVATE";
            case 4:
                return "ASYMMETRIC_PUBLIC";
            case 5:
                return "REMOTE";
            case 6:
                return "UNRECOGNIZED";
            default:
                throw null;
        }
    }

    public static /* synthetic */ String H(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "FLEXIBLE_LOWER_BOUND" : "FLEXIBLE_UPPER_BOUND" : "INFLEXIBLE";
    }

    public static /* synthetic */ String I(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "CUSTOM" : "DEFAULT" : "NONE";
    }

    public static /* synthetic */ String J(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "FATAL_ERROR" : "TRANSIENT_ERROR" : "OK";
    }

    public static /* synthetic */ String K(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? "null" : "REMOVING" : "ADDING" : "NONE";
    }

    public static /* synthetic */ String L(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? "null" : "INVISIBLE" : "GONE" : "VISIBLE" : "REMOVED";
    }

    public static /* synthetic */ String M(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? i5 != 5 ? "null" : "UNRECOGNIZED" : "DO_NOT_USE_CRUNCHY_UNCOMPRESSED" : "COMPRESSED" : "UNCOMPRESSED" : "UNKNOWN_FORMAT";
    }

    public static /* synthetic */ String N(int i5) {
        switch (i5) {
            case 1:
                return "UNKNOWN_CURVE";
            case 2:
                return "NIST_P256";
            case 3:
                return "NIST_P384";
            case 4:
                return "NIST_P521";
            case 5:
                return "CURVE25519";
            case 6:
                return "UNRECOGNIZED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String O(int i5) {
        switch (i5) {
            case 1:
                return "UNKNOWN_HASH";
            case 2:
                return "SHA1";
            case 3:
                return "SHA384";
            case 4:
                return "SHA256";
            case 5:
                return "SHA512";
            case 6:
                return "SHA224";
            case 7:
                return "UNRECOGNIZED";
            default:
                return "null";
        }
    }

    public static /* synthetic */ String P(int i5) {
        return i5 != 1 ? i5 != 2 ? i5 != 3 ? i5 != 4 ? "null" : "PROPERTY_SETTER" : "PROPERTY_GETTER" : "PROPERTY" : "FUNCTION";
    }

    public static final void a(int i5, View view) {
        int iF = Q0.f(i5);
        if (iF == 0) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                if (android.util.Log.isLoggable("FragmentManager", 2)) {
                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (iF == 1) {
            if (android.util.Log.isLoggable("FragmentManager", 2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (iF == 2) {
            if (android.util.Log.isLoggable("FragmentManager", 2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (iF != 3) {
            return;
        }
        if (android.util.Log.isLoggable("FragmentManager", 2)) {
            android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static final int b(int i5) {
        if (i5 != 6) {
            return p(i5);
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public static int c(int i5) {
        if (i5 == 0) {
            return 1;
        }
        if (i5 == 1) {
            return 2;
        }
        if (i5 == 2) {
            return 3;
        }
        if (i5 == 3) {
            return 4;
        }
        if (i5 != 4) {
            return i5 != 5 ? 0 : 6;
        }
        return 5;
    }

    public static int d(int i5) {
        if (i5 == 0) {
            return 1;
        }
        if (i5 == 1) {
            return 2;
        }
        if (i5 == 2) {
            return 3;
        }
        if (i5 != 3) {
            return i5 != 4 ? 0 : 5;
        }
        return 4;
    }

    public static /* synthetic */ int e(int i5) {
        if (i5 == 1) {
            return R.anim.sesl_fragment_open_enter;
        }
        if (i5 == 2) {
            return R.anim.sesl_fragment_open_enter_rtl;
        }
        throw null;
    }

    public static /* synthetic */ int f(int i5) {
        if (i5 == 1) {
            return R.anim.sesl_fragment_open_exit;
        }
        if (i5 == 2) {
            return R.anim.sesl_fragment_open_exit_rtl;
        }
        throw null;
    }

    public static /* synthetic */ boolean g(int i5) {
        if (i5 == 1) {
            return false;
        }
        if (i5 == 2) {
            return true;
        }
        if (i5 == 3) {
            return false;
        }
        if (i5 == 4) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ boolean h(int i5) {
        if (i5 == 1 || i5 == 2) {
            return false;
        }
        if (i5 == 3 || i5 == 4) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ int i(int i5) {
        if (i5 == 1) {
            return R.anim.sesl_fragment_close_enter;
        }
        if (i5 == 2) {
            return R.anim.sesl_fragment_close_enter_rtl;
        }
        throw null;
    }

    public static /* synthetic */ int j(int i5) {
        if (i5 == 1) {
            return R.anim.sesl_fragment_close_exit;
        }
        if (i5 == 2) {
            return R.anim.sesl_fragment_close_exit_rtl;
        }
        throw null;
    }

    public static /* synthetic */ float k(int i5) {
        switch (i5) {
            case 1:
                return 1.0f;
            case 2:
                return 1.15f;
            case 3:
                return 1.3f;
            case 4:
                return 1.5f;
            case 5:
                return 1.7f;
            case 6:
                return 2.0f;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int l(int i5) {
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        if (i5 == 3) {
            return 2;
        }
        if (i5 == 4) {
            return 3;
        }
        if (i5 == 5) {
            return -1;
        }
        throw null;
    }

    public static /* synthetic */ int m(int i5) {
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        if (i5 == 3) {
            return 2;
        }
        if (i5 == 4) {
            return 3;
        }
        if (i5 == 5) {
            return -1;
        }
        throw null;
    }

    public static /* synthetic */ int n(int i5) {
        switch (i5) {
            case 1:
                return 0;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int o(int i5) {
        switch (i5) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int p(int i5) {
        switch (i5) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return -1;
            default:
                throw null;
        }
    }

    public static /* synthetic */ int q(int i5) {
        switch (i5) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            case 7:
                return -1;
            default:
                throw null;
        }
    }

    public static int r(int i5, int i6, int i7) {
        return f5.a0(i5) + i6 + i7;
    }

    public static int s(int i5, int i6, int i7, int i8) {
        return f5.a0(i5) + i6 + i7 + i8;
    }

    public static String t(int i5, String str) {
        return str + i5;
    }

    public static String u(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String v(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String w(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static /* synthetic */ void x(int i5, String str) {
        if (i5 == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = i.class.getName();
            int i6 = 0;
            while (!stackTrace[i6].getClassName().equals(name)) {
                i6++;
            }
            while (stackTrace[i6].getClassName().equals(name)) {
                i6++;
            }
            StackTraceElement stackTraceElement = stackTrace[i6];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + IDMMoInterface.IDM_MO_ROOT_PATH + stackTraceElement.getMethodName() + ", parameter " + str);
            i.f(nullPointerException, i.class.getName());
            throw nullPointerException;
        }
    }

    public static /* synthetic */ void y(InterfaceC0104a interfaceC0104a) {
        if (interfaceC0104a != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ void z(Parcelable parcelable) {
        if (parcelable != null) {
            throw new ClassCastException();
        }
    }
}
