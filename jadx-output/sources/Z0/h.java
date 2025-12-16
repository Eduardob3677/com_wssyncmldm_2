package Z0;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.graphics.Path;
import android.text.TextUtils;
import android.util.Log;
import androidx.databinding.r;
import androidx.databinding.u;
import androidx.databinding.v;
import androidx.databinding.w;
import androidx.lifecycle.Y;
import androidx.lifecycle.b0;
import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import androidx.preference.q;
import c0.C0208b;
import com.google.firebase.messaging.p;
import com.wssyncmldm.R;
import h0.AbstractC0432c;
import h4.AbstractC0468v;
import h4.N;
import h4.O;
import h4.X;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import k.Q0;
import p3.C0746d;
import p3.EnumC0747e;
import r3.InterfaceC0789Q;

/* loaded from: classes.dex */
public final class h implements N0.b, androidx.databinding.d, q, b0 {

    /* renamed from: d, reason: collision with root package name */
    public static h f3010d;

    /* renamed from: e, reason: collision with root package name */
    public static h f3011e;
    public static h f;

    /* renamed from: g, reason: collision with root package name */
    public static h f3012g;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f3013c;

    public /* synthetic */ h(int i5) {
        this.f3013c = i5;
    }

    public static N c(InterfaceC0789Q interfaceC0789Q, F3.a aVar, p pVar, AbstractC0468v abstractC0468v) {
        d3.i.e("typeAttr", aVar);
        d3.i.e("typeParameterUpperBoundEraser", pVar);
        d3.i.e("erasedUpperBound", abstractC0468v);
        if (!aVar.f760c) {
            aVar = aVar.b(1);
        }
        int iF = Q0.f(aVar.f759b);
        if (iF != 0 && iF != 1) {
            if (iF == 2) {
                return new O(1, abstractC0468v);
            }
            throw new A0.c();
        }
        if (!AbstractC0432c.b(interfaceC0789Q.A())) {
            return new O(1, X3.f.e(interfaceC0789Q).n());
        }
        List listK = abstractC0468v.J0().k();
        d3.i.d("erasedUpperBound.constructor.parameters", listK);
        return listK.isEmpty() ^ true ? new O(3, abstractC0468v) : X.l(interfaceC0789Q, aVar);
    }

    public static Path d(float f5, float f6, float f7, float f8) {
        Path path = new Path();
        path.moveTo(f5, f6);
        path.lineTo(f7, f8);
        return path;
    }

    public static C0746d g(String str, Q3.c cVar) {
        EnumC0747e enumC0747e;
        Integer numValueOf;
        d3.i.e("packageFqName", cVar);
        EnumC0747e[] enumC0747eArrValues = EnumC0747e.values();
        int length = enumC0747eArrValues.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                enumC0747e = null;
                break;
            }
            enumC0747e = enumC0747eArrValues[i5];
            if (d3.i.a(enumC0747e.f8597c, cVar) && s4.h.s(str, enumC0747e.f8598d)) {
                break;
            }
            i5++;
        }
        if (enumC0747e == null) {
            return null;
        }
        String strSubstring = str.substring(enumC0747e.f8598d.length());
        d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring);
        if (strSubstring.length() == 0) {
            numValueOf = null;
            break;
        }
        int length2 = strSubstring.length();
        int i6 = 0;
        for (int i7 = 0; i7 < length2; i7++) {
            int iCharAt = strSubstring.charAt(i7) - '0';
            if (iCharAt < 0 || iCharAt >= 10) {
                numValueOf = null;
                break;
            }
            i6 = (i6 * 10) + iCharAt;
        }
        numValueOf = Integer.valueOf(i6);
        if (numValueOf != null) {
            return new C0746d(enumC0747e, numValueOf.intValue());
        }
        return null;
    }

    public static k h(PackageInfo packageInfo, k... kVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        l lVar = new l(packageInfo.signatures[0].toByteArray());
        for (int i5 = 0; i5 < kVarArr.length; i5++) {
            if (kVarArr[i5].equals(lVar)) {
                return kVarArr[i5];
            }
        }
        return null;
    }

    public static boolean i(PackageInfo packageInfo) {
        return (packageInfo == null || packageInfo.signatures == null || h(packageInfo, n.f3022a) == null) ? false : true;
    }

    @Override // androidx.lifecycle.b0
    public Y a(Class cls) {
        return new C0208b();
    }

    @Override // androidx.preference.q
    public CharSequence b(Preference preference) {
        EditTextPreference editTextPreference = (EditTextPreference) preference;
        return TextUtils.isEmpty(editTextPreference.f4581d0) ? editTextPreference.f4648c.getString(R.string.not_set) : editTextPreference.f4581d0;
    }

    @Override // androidx.databinding.d
    public w f(v vVar, int i5, ReferenceQueue referenceQueue) {
        switch (this.f3013c) {
            case 8:
                return new u(vVar, i5, referenceQueue).f3679a;
            default:
                return new r(vVar, i5, referenceQueue).f3675a;
        }
    }

    @Override // P2.a
    public /* bridge */ /* synthetic */ Object get() {
        return "com.google.android.datatransport.events";
    }
}
