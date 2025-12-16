package com.google.android.gms.auth.api.signin;

import E0.a;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c1.AbstractC0213D;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractC0387a implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a(3);

    /* renamed from: c, reason: collision with root package name */
    public final int f5293c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5294d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5295e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5296g;

    /* renamed from: h, reason: collision with root package name */
    public final Uri f5297h;

    /* renamed from: i, reason: collision with root package name */
    public String f5298i;

    /* renamed from: j, reason: collision with root package name */
    public final long f5299j;

    /* renamed from: k, reason: collision with root package name */
    public final String f5300k;

    /* renamed from: l, reason: collision with root package name */
    public final List f5301l;

    /* renamed from: m, reason: collision with root package name */
    public final String f5302m;
    public final String n;

    /* renamed from: o, reason: collision with root package name */
    public final HashSet f5303o = new HashSet();

    public GoogleSignInAccount(int i5, String str, String str2, String str3, String str4, Uri uri, String str5, long j3, String str6, ArrayList arrayList, String str7, String str8) {
        this.f5293c = i5;
        this.f5294d = str;
        this.f5295e = str2;
        this.f = str3;
        this.f5296g = str4;
        this.f5297h = uri;
        this.f5298i = str5;
        this.f5299j = j3;
        this.f5300k = str6;
        this.f5301l = arrayList;
        this.f5302m = str7;
        this.n = str8;
    }

    public static GoogleSignInAccount d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString("photoUrl", null);
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j3 = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i5 = 0; i5 < length; i5++) {
            hashSet.add(new Scope(1, jSONArray.getString(i5)));
        }
        String strOptString2 = jSONObject.optString("id");
        String strOptString3 = jSONObject.optString("tokenId", null);
        String strOptString4 = jSONObject.optString("email", null);
        String strOptString5 = jSONObject.optString("displayName", null);
        String strOptString6 = jSONObject.optString("givenName", null);
        String strOptString7 = jSONObject.optString("familyName", null);
        String string = jSONObject.getString("obfuscatedIdentifier");
        AbstractC0213D.c(string);
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(3, strOptString2, strOptString3, strOptString4, strOptString5, uri, null, j3, string, new ArrayList(hashSet), strOptString6, strOptString7);
        googleSignInAccount.f5298i = jSONObject.optString("serverAuthCode", null);
        return googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        if (googleSignInAccount.f5300k.equals(this.f5300k)) {
            HashSet hashSet = new HashSet(googleSignInAccount.f5301l);
            hashSet.addAll(googleSignInAccount.f5303o);
            HashSet hashSet2 = new HashSet(this.f5301l);
            hashSet2.addAll(this.f5303o);
            if (hashSet.equals(hashSet2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f5300k.hashCode() + 527) * 31;
        HashSet hashSet = new HashSet(this.f5301l);
        hashSet.addAll(this.f5303o);
        return hashSet.hashCode() + iHashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5293c);
        x.p1(parcel, 2, this.f5294d);
        x.p1(parcel, 3, this.f5295e);
        x.p1(parcel, 4, this.f);
        x.p1(parcel, 5, this.f5296g);
        x.o1(parcel, 6, this.f5297h, i5);
        x.p1(parcel, 7, this.f5298i);
        x.w1(parcel, 8, 8);
        parcel.writeLong(this.f5299j);
        x.p1(parcel, 9, this.f5300k);
        x.s1(parcel, 10, this.f5301l);
        x.p1(parcel, 11, this.f5302m);
        x.p1(parcel, 12, this.n);
        x.v1(parcel, iT1);
    }
}
