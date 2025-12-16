package com.google.firebase;

import android.content.Context;
import android.os.Build;
import b2.b;
import b2.c;
import b2.g;
import b2.l;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import com.idm.fotaagent.enabler.ui.whatsnew.a;
import java.util.ArrayList;
import java.util.List;
import o3.AbstractC0729f;
import s2.C0835a;
import s2.C0836b;

/* loaded from: classes.dex */
public class FirebaseCommonRegistrar implements g {
    public static String a(String str) {
        return str.replace(' ', '_').replace(IDMTndsXmlWbxmlDefine.XML_SLASH, '_');
    }

    @Override // b2.g
    public final List getComponents() {
        String string;
        ArrayList arrayList = new ArrayList();
        b bVarA = c.a(C0836b.class);
        bVarA.a(new l(2, 0, C0835a.class));
        bVarA.f = new a(6);
        arrayList.add(bVarA.b());
        b bVarA2 = c.a(i2.b.class);
        bVarA2.a(new l(1, 0, Context.class));
        bVarA2.a(new l(2, 0, i2.c.class));
        bVarA2.f = new a(4);
        arrayList.add(bVarA2.b());
        arrayList.add(AbstractC0729f.c("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(AbstractC0729f.c("fire-core", "20.0.0"));
        arrayList.add(AbstractC0729f.c("device-name", a(Build.PRODUCT)));
        arrayList.add(AbstractC0729f.c("device-model", a(Build.DEVICE)));
        arrayList.add(AbstractC0729f.c("device-brand", a(Build.BRAND)));
        arrayList.add(AbstractC0729f.g("android-target-sdk", new E2.a(8)));
        arrayList.add(AbstractC0729f.g("android-min-sdk", new E2.a(9)));
        arrayList.add(AbstractC0729f.g("android-platform", new E2.a(10)));
        arrayList.add(AbstractC0729f.g("android-installer", new E2.a(11)));
        try {
            string = Q2.b.f.toString();
        } catch (NoClassDefFoundError unused) {
            string = null;
        }
        if (string != null) {
            arrayList.add(AbstractC0729f.c("kotlin", string));
        }
        return arrayList;
    }
}
