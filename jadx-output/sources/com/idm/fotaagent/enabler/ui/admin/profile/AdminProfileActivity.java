package com.idm.fotaagent.enabler.ui.admin.profile;

import android.content.DialogInterface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.Spanned;
import androidx.databinding.g;
import androidx.lifecycle.G;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseProfile;
import com.idm.fotaagent.enabler.ui.admin.main.hidden.command.d;
import com.idm.fotaagent.utils.ToastHelper;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;
import com.wssyncmldm.databinding.ProfileEditBinding;
import e.AbstractActivityC0410n;
import e.C0403g;
import e.C0406j;
import e.DialogInterfaceC0407k;
import java.util.regex.Pattern;
import y2.C0931a;

/* loaded from: classes.dex */
public class AdminProfileActivity extends AbstractActivityC0410n {
    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onBackPressed$2(DialogInterface dialogInterface, int i5) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CharSequence lambda$onCreate$0(CharSequence charSequence, int i5, int i6, Spanned spanned, int i7, int i8) {
        if (Pattern.compile("^[a-zA-Z0-9]*$").matcher(charSequence).matches()) {
            return null;
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$1(Integer num) {
        if (num.intValue() <= 0) {
            return;
        }
        ToastHelper.showLongToast(this, getText(num.intValue()).toString());
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        C0406j c0406j = new C0406j(this);
        C0403g c0403g = c0406j.f6773a;
        c0403g.f6718d = "Profile Save";
        c0403g.f = "Do you want to exit screen?";
        d dVar = new d(2, this);
        c0403g.f6720g = "OK";
        c0403g.f6721h = dVar;
        c0403g.f6722i = "CANCEL";
        c0403g.f6723j = null;
        DialogInterfaceC0407k dialogInterfaceC0407kA = c0406j.a();
        dialogInterfaceC0407kA.setCanceledOnTouchOutside(false);
        dialogInterfaceC0407kA.show();
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.I("");
        IDMDatabaseProfile iDMDatabaseProfile = (IDMDatabaseProfile) getIntent().getBundleExtra("serverId").getParcelable("profile");
        if (iDMDatabaseProfile == null) {
            Log.W("profile is null");
            return;
        }
        AdminProfileViewModel adminProfileViewModel = new AdminProfileViewModel(iDMDatabaseProfile);
        ProfileEditBinding profileEditBinding = (ProfileEditBinding) g.d(this, R.layout.profile_edit);
        profileEditBinding.setViewModel(adminProfileViewModel);
        profileEditBinding.setLifecycleOwner(this);
        profileEditBinding.serverId.setFilters(new InputFilter[]{new C0931a()});
        adminProfileViewModel.getToastMessageId().e(this, new G() { // from class: y2.b
            @Override // androidx.lifecycle.G
            public final void c(Object obj) {
                this.f9706a.lambda$onCreate$1((Integer) obj);
            }
        });
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onResume() {
        super.onResume();
        Log.I("");
    }
}
