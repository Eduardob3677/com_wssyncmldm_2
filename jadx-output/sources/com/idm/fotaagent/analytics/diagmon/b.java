package com.idm.fotaagent.analytics.diagmon;

import F.i;
import F.j;
import android.content.ComponentName;
import android.content.Context;
import android.util.Log;
import android.util.Xml;
import e.AbstractC0412p;
import e.AbstractC0413q;
import e.C;
import e.r;
import h0.AbstractC0435f;
import h0.ExecutorC0433d;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import o.C0718g;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6345c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Context f6346d;

    public /* synthetic */ b(Context context, int i5) {
        this.f6345c = i5;
        this.f6346d = context;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Object systemService;
        Context context;
        int i5 = 3;
        Context context2 = this.f6346d;
        switch (this.f6345c) {
            case 0:
                DiagMon.lambda$setup$0(context2);
                return;
            case 1:
                ComponentName componentName = new ComponentName(context2, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                if (context2.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                    int i6 = F.b.f653a;
                    Iterator it = r.f6783g.iterator();
                    while (true) {
                        C0718g c0718g = (C0718g) it;
                        if (c0718g.hasNext()) {
                            r rVar = (r) ((WeakReference) c0718g.next()).get();
                            if (rVar != null && (context = ((C) rVar).f6633k) != null) {
                                systemService = context.getSystemService("locale");
                            }
                        } else {
                            systemService = null;
                        }
                    }
                    if ((systemService != null ? new i(new j(AbstractC0413q.a(systemService))) : i.f658b).f659a.f660a.isEmpty()) {
                        String attributeValue = "";
                        try {
                            FileInputStream fileInputStreamOpenFileInput = context2.openFileInput("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                            try {
                                try {
                                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                                    xmlPullParserNewPullParser.setInput(fileInputStreamOpenFileInput, "UTF-8");
                                    int depth = xmlPullParserNewPullParser.getDepth();
                                    while (true) {
                                        int next = xmlPullParserNewPullParser.next();
                                        if (next != 1 && (next != 3 || xmlPullParserNewPullParser.getDepth() > depth)) {
                                            if (next != 3 && next != 4 && xmlPullParserNewPullParser.getName().equals("locales")) {
                                                attributeValue = xmlPullParserNewPullParser.getAttributeValue(null, "application_locales");
                                            }
                                        }
                                    }
                                } catch (Throwable th) {
                                    if (fileInputStreamOpenFileInput != null) {
                                        try {
                                            fileInputStreamOpenFileInput.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    throw th;
                                }
                            } catch (IOException | XmlPullParserException unused2) {
                                Log.w("AppLocalesStorageHelper", "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                                if (fileInputStreamOpenFileInput != null) {
                                }
                            }
                            if (fileInputStreamOpenFileInput != null) {
                                try {
                                    fileInputStreamOpenFileInput.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (attributeValue.isEmpty()) {
                                context2.deleteFile("androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                            } else {
                                Log.d("AppLocalesStorageHelper", "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: ".concat(attributeValue));
                            }
                        } catch (FileNotFoundException unused4) {
                            Log.w("AppLocalesStorageHelper", "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file");
                        }
                        Object systemService2 = context2.getSystemService("locale");
                        if (systemService2 != null) {
                            AbstractC0413q.b(systemService2, AbstractC0412p.a(attributeValue));
                        }
                    }
                    context2.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                }
                r.f = true;
                return;
            case 2:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new b(context2, i5));
                return;
            default:
                AbstractC0435f.t(context2, new ExecutorC0433d(0), AbstractC0435f.f6969a, false);
                return;
        }
    }
}
