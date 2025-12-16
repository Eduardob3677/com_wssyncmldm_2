package com.idm.fotaagent.enabler.ui.admin.main.hidden.command;

import android.content.DialogInterface;
import com.idm.fotaagent.enabler.ui.admin.main.hidden.executor.CopyAndUpdateTrigger;
import com.idm.fotaagent.enabler.ui.admin.profile.AdminProfileActivity;
import com.idm.fotaagent.enabler.ui.admin.setting.AdminSettingModel;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6406c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6407d;

    public /* synthetic */ d(int i5, Object obj) {
        this.f6406c = i5;
        this.f6407d = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i5) throws IOException {
        int i6 = this.f6406c;
        Object obj = this.f6407d;
        switch (i6) {
            case 0:
                ((Localtest) obj).lambda$checkMemory$2(dialogInterface, i5);
                break;
            case 1:
                ((CopyAndUpdateTrigger) obj).lambda$copyAndUpdate$1(dialogInterface, i5);
                break;
            case 2:
                ((AdminProfileActivity) obj).lambda$onBackPressed$2(dialogInterface, i5);
                break;
            default:
                ((AdminSettingModel) obj).lambda$createProfilePreferenceUsing$0(dialogInterface, i5);
                break;
        }
    }
}
