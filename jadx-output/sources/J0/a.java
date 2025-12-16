package J0;

import L0.e;
import i3.x;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class a implements e {

    /* renamed from: c, reason: collision with root package name */
    public static final String f1028c = x.G0("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");

    /* renamed from: d, reason: collision with root package name */
    public static final Set f1029d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f1030e;

    /* renamed from: a, reason: collision with root package name */
    public final String f1031a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1032b;

    static {
        String strG0 = x.G0("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strG02 = x.G0("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f1029d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new I0.b("proto"), new I0.b("json"))));
        f1030e = new a(strG0, strG02);
    }

    public a(String str, String str2) {
        this.f1031a = str;
        this.f1032b = str2;
    }

    public static a a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }
}
