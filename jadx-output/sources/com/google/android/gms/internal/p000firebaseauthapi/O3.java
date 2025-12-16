package com.google.android.gms.internal.p000firebaseauthapi;

import D.a;
import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import com.google.firebase.messaging.s;
import e.C;
import j.MenuItemC0515p;
import o.C0722k;

/* loaded from: classes.dex */
public abstract class O3 {

    /* renamed from: a, reason: collision with root package name */
    public Object f5454a;

    /* renamed from: b, reason: collision with root package name */
    public Object f5455b;

    public O3(String str, C0230a4 c0230a4) {
        this.f5454a = str;
        this.f5455b = c0230a4;
    }

    public void d() {
        s sVar = (s) this.f5454a;
        if (sVar != null) {
            try {
                ((C) this.f5455b).f6633k.unregisterReceiver(sVar);
            } catch (IllegalArgumentException unused) {
            }
            this.f5454a = null;
        }
    }

    public abstract IntentFilter e();

    public abstract int f();

    public MenuItem g(MenuItem menuItem) {
        if (!(menuItem instanceof a)) {
            return menuItem;
        }
        a aVar = (a) menuItem;
        if (((C0722k) this.f5455b) == null) {
            this.f5455b = new C0722k();
        }
        MenuItem menuItem2 = (MenuItem) ((C0722k) this.f5455b).getOrDefault(aVar, null);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemC0515p menuItemC0515p = new MenuItemC0515p((Context) this.f5454a, aVar);
        ((C0722k) this.f5455b).put(aVar, menuItemC0515p);
        return menuItemC0515p;
    }

    public abstract void h();

    public void i() {
        d();
        IntentFilter intentFilterE = e();
        if (intentFilterE.countActions() == 0) {
            return;
        }
        if (((s) this.f5454a) == null) {
            this.f5454a = new s(this);
        }
        ((C) this.f5455b).f6633k.registerReceiver((s) this.f5454a, intentFilterE);
    }

    public String j(String str, String str2) {
        String str3 = (String) this.f5454a;
        int length = String.valueOf(str3).length();
        StringBuilder sb = new StringBuilder(length + 5 + str.length() + String.valueOf(str2).length());
        sb.append(str3);
        sb.append(str);
        sb.append("?key=");
        sb.append(str2);
        return sb.toString();
    }

    public O3(Context context) {
        this.f5454a = context;
    }

    public O3(C c2) {
        this.f5455b = c2;
    }
}
