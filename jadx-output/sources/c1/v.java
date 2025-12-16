package c1;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public final class v implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Intent f5262c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Activity f5263d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5264e = 2;

    public v(Intent intent, Activity activity) {
        this.f5262c = intent;
        this.f5263d = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) {
        try {
            Intent intent = this.f5262c;
            if (intent != null) {
                this.f5263d.startActivityForResult(intent, this.f5264e);
            }
        } catch (ActivityNotFoundException e5) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e5);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
