package com.idm.fotaagent.enabler.ui.common;

import android.content.Context;
import androidx.databinding.v;
import com.idm.fotaagent.abupdate.abenabler.ui.downloadandinstallprogress.ProgressViewParams;
import com.idm.fotaagent.enabler.ui.common.BaseActivity;
import e.AbstractActivityC0410n;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6417c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6418d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6419e;

    public /* synthetic */ a(Object obj, int i5, Object obj2) {
        this.f6417c = i5;
        this.f6418d = obj;
        this.f6419e = obj2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6417c) {
            case 0:
                ((BaseActivity.Managed.WithButtons.WithTwoProgressBars) this.f6418d).lambda$setProgressView$0((ProgressViewParams) this.f6419e, (BaseActivity.Managed.WithButtons.WithTwoProgressBars.ProgressView) obj);
                break;
            case 1:
                ((BaseActivity.Managed.WithButtons.WithTwoProgressBars.ProgressView) this.f6418d).lambda$setProgressView$1((Context) this.f6419e, (Integer) obj);
                break;
            default:
                ((BaseActivity.Inflater.Container) this.f6418d).lambda$tryDataBinding$0((AbstractActivityC0410n) this.f6419e, (v) obj);
                break;
        }
    }
}
