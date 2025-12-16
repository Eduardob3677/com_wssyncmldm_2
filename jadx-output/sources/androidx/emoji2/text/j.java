package androidx.emoji2.text;

import J.r0;
import android.os.Handler;
import android.os.Looper;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import o.C0714c;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f3694i = new Object();

    /* renamed from: j, reason: collision with root package name */
    public static volatile j f3695j;

    /* renamed from: a, reason: collision with root package name */
    public final ReentrantReadWriteLock f3696a;

    /* renamed from: b, reason: collision with root package name */
    public final C0714c f3697b;

    /* renamed from: c, reason: collision with root package name */
    public volatile int f3698c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f3699d;

    /* renamed from: e, reason: collision with root package name */
    public final e f3700e;
    public final i f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3701g;

    /* renamed from: h, reason: collision with root package name */
    public final c f3702h;

    public j(p pVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f3696a = reentrantReadWriteLock;
        this.f3698c = 3;
        i iVar = (i) pVar.f3692b;
        this.f = iVar;
        int i5 = pVar.f3691a;
        this.f3701g = i5;
        this.f3702h = (c) pVar.f3693c;
        this.f3699d = new Handler(Looper.getMainLooper());
        this.f3697b = new C0714c(0);
        e eVar = new e(this);
        this.f3700e = eVar;
        reentrantReadWriteLock.writeLock().lock();
        if (i5 == 0) {
            try {
                this.f3698c = 0;
            } catch (Throwable th) {
                this.f3696a.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (b() == 0) {
            try {
                iVar.a(new d(eVar));
            } catch (Throwable th2) {
                d(th2);
            }
        }
    }

    public static j a() {
        j jVar;
        synchronized (f3694i) {
            try {
                jVar = f3695j;
                if (!(jVar != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return jVar;
    }

    public final int b() {
        this.f3696a.readLock().lock();
        try {
            return this.f3698c;
        } finally {
            this.f3696a.readLock().unlock();
        }
    }

    public final void c() {
        if (!(this.f3701g == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (b() == 1) {
            return;
        }
        this.f3696a.writeLock().lock();
        try {
            if (this.f3698c == 0) {
                return;
            }
            this.f3698c = 0;
            this.f3696a.writeLock().unlock();
            e eVar = this.f3700e;
            j jVar = eVar.f3688a;
            try {
                jVar.f.a(new d(eVar));
            } catch (Throwable th) {
                jVar.d(th);
            }
        } finally {
            this.f3696a.writeLock().unlock();
        }
    }

    public final void d(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f3696a.writeLock().lock();
        try {
            this.f3698c = 2;
            arrayList.addAll(this.f3697b);
            this.f3697b.clear();
            this.f3696a.writeLock().unlock();
            this.f3699d.post(new G.b(arrayList, this.f3698c, th));
        } catch (Throwable th2) {
            this.f3696a.writeLock().unlock();
            throw th2;
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        this.f3696a.writeLock().lock();
        try {
            this.f3698c = 1;
            arrayList.addAll(this.f3697b);
            this.f3697b.clear();
            this.f3696a.writeLock().unlock();
            this.f3699d.post(new G.b(arrayList, this.f3698c, (Throwable) null));
        } catch (Throwable th) {
            this.f3696a.writeLock().unlock();
            throw th;
        }
    }

    public final CharSequence f(CharSequence charSequence, int i5, int i6) {
        int iCharCount;
        t[] tVarArr;
        if (!(b() == 1)) {
            throw new IllegalStateException("Not initialized yet");
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("start cannot be negative");
        }
        if (i6 < 0) {
            throw new IllegalArgumentException("end cannot be negative");
        }
        Z0.j.k("start should be <= than end", i5 <= i6);
        u uVar = null;
        if (charSequence == null) {
            return null;
        }
        Z0.j.k("start should be < than charSequence length", i5 <= charSequence.length());
        Z0.j.k("end should be < than charSequence length", i6 <= charSequence.length());
        if (charSequence.length() == 0 || i5 == i6) {
            return charSequence;
        }
        r0 r0Var = this.f3700e.f3689b;
        r0Var.getClass();
        boolean z4 = charSequence instanceof s;
        if (z4) {
            ((s) charSequence).a();
        }
        if (z4) {
            uVar = new u((Spannable) charSequence);
        } else {
            try {
                if (charSequence instanceof Spannable) {
                    uVar = new u((Spannable) charSequence);
                } else if ((charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(i5 - 1, i6 + 1, t.class) <= i6) {
                    uVar = new u(charSequence);
                }
            } finally {
                if (z4) {
                    ((s) charSequence).b();
                }
            }
        }
        if (uVar != null && (tVarArr = (t[]) uVar.f3731d.getSpans(i5, i6, t.class)) != null && tVarArr.length > 0) {
            for (t tVar : tVarArr) {
                int spanStart = uVar.f3731d.getSpanStart(tVar);
                int spanEnd = uVar.f3731d.getSpanEnd(tVar);
                if (spanStart != i6) {
                    uVar.removeSpan(tVar);
                }
                i5 = Math.min(spanStart, i5);
                i6 = Math.max(spanEnd, i6);
            }
        }
        if (i5 != i6 && i5 < charSequence.length()) {
            n nVar = new n((q) ((com.google.firebase.messaging.p) r0Var.f1007d).f);
            int iCodePointAt = Character.codePointAt(charSequence, i5);
            int i7 = 0;
            u uVar2 = uVar;
            loop1: while (true) {
                iCharCount = i5;
                while (i5 < i6 && i7 < Integer.MAX_VALUE) {
                    int iA = nVar.a(iCodePointAt);
                    if (iA == 1) {
                        iCharCount += Character.charCount(Character.codePointAt(charSequence, iCharCount));
                        if (iCharCount < i6) {
                            iCodePointAt = Character.codePointAt(charSequence, iCharCount);
                        }
                        i5 = iCharCount;
                    } else if (iA == 2) {
                        i5 += Character.charCount(iCodePointAt);
                        if (i5 < i6) {
                            iCodePointAt = Character.codePointAt(charSequence, i5);
                        }
                    } else if (iA == 3) {
                        if (!r0Var.k(charSequence, iCharCount, i5, nVar.f3711d.f3722b)) {
                            if (uVar2 == null) {
                                uVar2 = new u((Spannable) new SpannableString(charSequence));
                            }
                            m mVar = nVar.f3711d.f3722b;
                            ((e4.d) r0Var.f1006c).getClass();
                            uVar2.setSpan(new t(mVar), iCharCount, i5, 33);
                            i7++;
                        }
                    }
                }
                break loop1;
            }
            if (nVar.f3708a == 2 && nVar.f3710c.f3722b != null && ((nVar.f > 1 || nVar.c()) && i7 < Integer.MAX_VALUE && !r0Var.k(charSequence, iCharCount, i5, nVar.f3710c.f3722b))) {
                if (uVar2 == null) {
                    uVar2 = new u(charSequence);
                }
                m mVar2 = nVar.f3710c.f3722b;
                ((e4.d) r0Var.f1006c).getClass();
                uVar2.setSpan(new t(mVar2), iCharCount, i5, 33);
            }
            if (uVar2 != null) {
                Spannable spannable = uVar2.f3731d;
                if (z4) {
                    ((s) charSequence).b();
                }
                return spannable;
            }
            if (!z4) {
                return charSequence;
            }
        } else if (!z4) {
            return charSequence;
        }
        return charSequence;
    }

    public final void g(h hVar) {
        Z0.j.m("initCallback cannot be null", hVar);
        this.f3696a.writeLock().lock();
        try {
            if (this.f3698c == 1 || this.f3698c == 2) {
                this.f3699d.post(new G.b(Arrays.asList(hVar), this.f3698c, (Throwable) null));
            } else {
                this.f3697b.add(hVar);
            }
            this.f3696a.writeLock().unlock();
        } catch (Throwable th) {
            this.f3696a.writeLock().unlock();
            throw th;
        }
    }
}
