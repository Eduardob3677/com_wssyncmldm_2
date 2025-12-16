package com.google.android.material.datepicker;

import android.os.Message;
import android.view.View;
import e.C0405i;

/* loaded from: classes.dex */
public final class k implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5977c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f5978d;

    public /* synthetic */ k(int i5, Object obj) {
        this.f5977c = i5;
        this.f5978d = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        switch (this.f5977c) {
            case 0:
                l lVar = (l) this.f5978d;
                int i5 = lVar.f5981g;
                if (i5 != 2) {
                    if (i5 == 1) {
                        lVar.g(2);
                        break;
                    }
                } else {
                    lVar.g(1);
                    break;
                }
                break;
            default:
                C0405i c0405i = (C0405i) this.f5978d;
                Message messageObtain = (view != c0405i.f6758k || (message3 = c0405i.f6760m) == null) ? (view != c0405i.f6761o || (message2 = c0405i.f6763q) == null) ? (view != c0405i.f6765s || (message = c0405i.f6767u) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
                if (messageObtain != null) {
                    messageObtain.sendToTarget();
                }
                c0405i.f6747N.obtainMessage(1, c0405i.f6750b).sendToTarget();
                break;
        }
    }
}
