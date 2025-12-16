package K;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public final class a extends ClickableSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f1185a;

    /* renamed from: b, reason: collision with root package name */
    public final h f1186b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1187c;

    public a(int i5, h hVar, int i6) {
        this.f1185a = i5;
        this.f1186b = hVar;
        this.f1187c = i6;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1185a);
        this.f1186b.f1201a.performAction(this.f1187c, bundle);
    }
}
