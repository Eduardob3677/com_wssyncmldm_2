package F1;

import android.os.CountDownTimer;

/* loaded from: classes.dex */
public final class w extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f750a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(x xVar, long j3, long j5) {
        super(j3, j5);
        this.f750a = xVar;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        x xVar = this.f750a;
        if (xVar.f753e && xVar.getVisibility() == 0) {
            xVar.setVisibility(4);
        }
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j3) {
    }
}
