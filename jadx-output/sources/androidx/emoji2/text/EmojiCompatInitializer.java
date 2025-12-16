package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import androidx.lifecycle.InterfaceC0141h;
import androidx.lifecycle.InterfaceC0155w;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements A0.b {
    @Override // A0.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // A0.b
    public final /* bridge */ /* synthetic */ Object b(Context context) {
        c(context);
        return Boolean.TRUE;
    }

    public final void c(Context context) {
        Object objB;
        p pVar = new p(new L0.c(context, 1));
        pVar.f3691a = 1;
        if (j.f3695j == null) {
            synchronized (j.f3694i) {
                try {
                    if (j.f3695j == null) {
                        j.f3695j = new j(pVar);
                    }
                } finally {
                }
            }
        }
        A0.a aVarC = A0.a.c(context);
        aVarC.getClass();
        synchronized (A0.a.f50e) {
            try {
                objB = aVarC.f51a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        final androidx.lifecycle.r lifecycle = ((InterfaceC0155w) objB).getLifecycle();
        lifecycle.a(new InterfaceC0141h() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.InterfaceC0141h
            public final void onResume() {
                EmojiCompatInitializer.this.getClass();
                b.a(Looper.getMainLooper()).postDelayed(new l(), 500L);
                lifecycle.b(this);
            }
        });
    }
}
