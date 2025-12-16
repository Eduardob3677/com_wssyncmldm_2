package B;

import A.o;
import A3.D;
import G.i;
import G.l;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import o.C0717f;
import o.C0722k;
import s2.C0837c;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final P1.e f189a = new P1.e();

    /* renamed from: b, reason: collision with root package name */
    public static final C0717f f190b = new C0717f(16);

    public static Typeface a(Context context, i[] iVarArr, int i5) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        f189a.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily.Builder builder = null;
            for (i iVar : iVarArr) {
                try {
                    parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(iVar.f794a, "r", null);
                } catch (IOException unused) {
                }
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                    }
                } else {
                    try {
                        Font fontBuild = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(iVar.f796c).setSlant(iVar.f797d ? 1 : 0).setTtcIndex(iVar.f795b).build();
                        if (builder == null) {
                            builder = new FontFamily.Builder(fontBuild);
                        } else {
                            builder.addFont(fontBuild);
                        }
                    } catch (Throwable th) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                parcelFileDescriptorOpenFileDescriptor.close();
            }
            if (builder == null) {
                return null;
            }
            FontFamily fontFamilyBuild = builder.build();
            return new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(P1.e.e(fontFamilyBuild, i5).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface b(Context context, A.f fVar, Resources resources, int i5, String str, int i6, int i7, A.b bVar, boolean z4) throws InterruptedException, IOException {
        Typeface typefaceCreate;
        Typeface typeface;
        int i8 = 1;
        int i9 = 0;
        Typeface typefaceBuild = null;
        int i10 = -3;
        if (fVar instanceof A.i) {
            A.i iVar = (A.i) fVar;
            String str2 = iVar.f22d;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
                if (typefaceCreate == null) {
                    if (bVar != null) {
                        new Handler(Looper.getMainLooper()).post(new o(bVar, i9, typefaceCreate));
                    }
                    return typefaceCreate;
                }
                Object[] objArr = !z4 ? bVar != null : iVar.f21c != 0;
                int i11 = z4 ? iVar.f20b : -1;
                Handler handler = new Handler(Looper.getMainLooper());
                C0837c c0837c = new C0837c();
                c0837c.f9022c = bVar;
                D3.e eVar = iVar.f19a;
                D d2 = new D(c0837c, 2, handler);
                if (objArr == true) {
                    C0717f c0717f = G.h.f790a;
                    String str3 = ((String) eVar.f502h) + "-" + i7;
                    typeface = (Typeface) G.h.f790a.a(str3);
                    if (typeface != null) {
                        handler.post(new G.a(c0837c, i9, typeface));
                        typefaceBuild = typeface;
                    } else if (i11 == -1) {
                        G.g gVarA = G.h.a(str3, context, eVar, i7);
                        d2.I0(gVarA);
                        typefaceBuild = gVarA.f788a;
                    } else {
                        try {
                            try {
                                try {
                                    try {
                                        G.g gVar = (G.g) G.h.f791b.submit(new G.e(str3, context, eVar, i7, 0)).get(i11, TimeUnit.MILLISECONDS);
                                        d2.I0(gVar);
                                        typefaceBuild = gVar.f788a;
                                    } catch (TimeoutException unused) {
                                        throw new InterruptedException("timeout");
                                    }
                                } catch (InterruptedException e5) {
                                    throw e5;
                                }
                            } catch (ExecutionException e6) {
                                throw new RuntimeException(e6);
                            }
                        } catch (InterruptedException unused2) {
                            ((Handler) d2.f81e).post(new G.b(i10, (C0837c) d2.f80d, i9));
                        }
                    }
                } else {
                    C0717f c0717f2 = G.h.f790a;
                    String str4 = ((String) eVar.f502h) + "-" + i7;
                    typeface = (Typeface) G.h.f790a.a(str4);
                    if (typeface != null) {
                        handler.post(new G.a(c0837c, i9, typeface));
                        typefaceBuild = typeface;
                    } else {
                        G.f fVar2 = new G.f(i9, d2);
                        synchronized (G.h.f792c) {
                            try {
                                C0722k c0722k = G.h.f793d;
                                ArrayList arrayList = (ArrayList) c0722k.getOrDefault(str4, null);
                                if (arrayList != null) {
                                    arrayList.add(fVar2);
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(fVar2);
                                    c0722k.put(str4, arrayList2);
                                    G.e eVar2 = new G.e(str4, context, eVar, i7, 1);
                                    ThreadPoolExecutor threadPoolExecutor = G.h.f791b;
                                    G.f fVar3 = new G.f(i8, str4);
                                    Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                    l lVar = new l(i9);
                                    lVar.f803d = eVar2;
                                    lVar.f804e = fVar3;
                                    lVar.f = handler2;
                                    threadPoolExecutor.execute(lVar);
                                }
                            } finally {
                            }
                        }
                    }
                }
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                }
                if (typefaceCreate == null) {
                }
            }
        } else {
            A.g gVar2 = (A.g) fVar;
            f189a.getClass();
            try {
                FontFamily.Builder builder = null;
                for (A.h hVar : gVar2.f13a) {
                    try {
                        try {
                            try {
                                Font fontBuild = new Font.Builder(resources, hVar.f18e).setWeight(hVar.f14a).setSlant(hVar.f15b ? 1 : 0).setTtcIndex(hVar.f17d).setFontVariationSettings(hVar.f16c).build();
                                if (builder == null) {
                                    builder = new FontFamily.Builder(fontBuild);
                                } else {
                                    builder.addFont(fontBuild);
                                }
                            } catch (Exception unused3) {
                            }
                        } catch (IOException unused4) {
                        }
                    } catch (IOException unused5) {
                    }
                }
                if (builder != null) {
                    FontFamily fontFamilyBuild = builder.build();
                    typefaceBuild = new Typeface.CustomFallbackBuilder(fontFamilyBuild).setStyle(P1.e.e(fontFamilyBuild, i7).getStyle()).build();
                }
            } catch (Exception unused6) {
            }
            if (bVar != null) {
                if (typefaceBuild != null) {
                    new Handler(Looper.getMainLooper()).post(new o(bVar, i9, typefaceBuild));
                } else {
                    bVar.a(-3);
                }
            }
        }
        if (typefaceBuild != null) {
            f190b.b(d(resources, i5, str, i6, i7), typefaceBuild);
        }
        return typefaceBuild;
    }

    public static Typeface c(Resources resources, int i5, String str, int i6, int i7) throws IOException {
        Typeface typefaceBuild;
        f189a.getClass();
        try {
            Font fontBuild = new Font.Builder(resources, i5).build();
            typefaceBuild = new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception unused) {
            typefaceBuild = null;
        }
        if (typefaceBuild != null) {
            f190b.b(d(resources, i5, str, i6, i7), typefaceBuild);
        }
        return typefaceBuild;
    }

    public static String d(Resources resources, int i5, String str, int i6, int i7) {
        return resources.getResourcePackageName(i5) + '-' + str + '-' + i6 + '-' + i5 + '-' + i7;
    }
}
