package B1;

import android.content.Intent;
import android.content.IntentSender;
import android.graphics.Typeface;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f191c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f192d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f193e;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(androidx.activity.g gVar, int i5, Object obj, int i6) {
        this.f191c = i6;
        this.f = gVar;
        this.f192d = i5;
        this.f193e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        androidx.activity.result.b bVar;
        switch (this.f191c) {
            case 0:
                ((BottomSheetBehavior) this.f).F((View) this.f193e, this.f192d, false);
                break;
            case 1:
                Object obj = ((K.j) this.f193e).f1206c;
                androidx.activity.g gVar = (androidx.activity.g) this.f;
                String str = (String) gVar.f3194a.get(Integer.valueOf(this.f192d));
                if (str != null) {
                    androidx.activity.result.f fVar = (androidx.activity.result.f) gVar.f3198e.get(str);
                    if (fVar != null && (bVar = fVar.f3190a) != null) {
                        if (gVar.f3197d.remove(str)) {
                            bVar.a(obj);
                            break;
                        }
                    } else {
                        gVar.f3199g.remove(str);
                        gVar.f.put(str, obj);
                        break;
                    }
                }
                break;
            case 2:
                ((androidx.activity.g) this.f).a(this.f192d, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", (IntentSender.SendIntentException) this.f193e));
                break;
            default:
                ((TextView) this.f193e).setTypeface((Typeface) this.f, this.f192d);
                break;
        }
    }

    public a(TextView textView, Typeface typeface, int i5) {
        this.f191c = 3;
        this.f193e = textView;
        this.f = typeface;
        this.f192d = i5;
    }

    public a(BottomSheetBehavior bottomSheetBehavior, View view, int i5) {
        this.f191c = 0;
        this.f = bottomSheetBehavior;
        this.f193e = view;
        this.f192d = i5;
    }
}
