package com.idm.fotaagent.enabler.ui.admin.setting;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.o;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseManager;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseProfile;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseServerInfo;
import com.idm.fotaagent.enabler.ui.admin.main.hidden.command.b;
import com.idm.fotaagent.enabler.ui.admin.main.hidden.command.d;
import com.idm.fotaagent.enabler.ui.admin.profile.AdminProfileActivity;
import com.idm.providers.mo.exception.IDMMoExceptionNotFound;
import com.samsung.android.fotaagent.common.log.Log;
import e.C0403g;
import e.C0406j;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AdminSettingModel {
    private final Context context;
    private int selectedProfile = 0;

    public AdminSettingModel(Context context) {
        this.context = context;
    }

    private ArrayList<IDMDatabaseProfile> IDMGetServerInfo(List<IDMDatabaseServerInfo> list) {
        ArrayList<IDMDatabaseProfile> arrayList = new ArrayList<>();
        for (int i5 = 0; i5 < list.size(); i5++) {
            try {
                arrayList.add(IDMDatabaseManager.getInstance().getProfile(list.get(i5)));
            } catch (IDMMoExceptionNotFound e5) {
                Log.printStackTrace(e5);
            }
        }
        return arrayList;
    }

    private String[] createServerNameArray(List<IDMDatabaseProfile> list) {
        String[] strArr = new String[list.size()];
        for (int i5 = 0; i5 < list.size(); i5++) {
            strArr[i5] = list.get(i5).idmGetName();
            if (list.get(i5).idmGetActive() == 1) {
                this.selectedProfile = i5;
            }
        }
        return strArr;
    }

    private String getActiveServerName(List<IDMDatabaseProfile> list) {
        String strIdmGetName = "";
        for (IDMDatabaseProfile iDMDatabaseProfile : list) {
            if (iDMDatabaseProfile.idmGetActive() == 1) {
                strIdmGetName = iDMDatabaseProfile.idmGetName();
            }
        }
        return strIdmGetName;
    }

    private IDMDatabaseProfile getSelectedProfile(List<IDMDatabaseProfile> list, int i5) {
        IDMDatabaseProfile iDMDatabaseProfile = null;
        for (int i6 = 0; i6 < list.size(); i6++) {
            if (i5 == i6) {
                iDMDatabaseProfile = list.get(i6);
            }
        }
        return iDMDatabaseProfile;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createProfilePreferenceUsing$0(DialogInterface dialogInterface, int i5) {
        this.selectedProfile = i5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createProfilePreferenceUsing$1(ArrayList arrayList, Runnable runnable, DialogInterface dialogInterface, int i5) {
        IDMDatabaseProfile selectedProfile = getSelectedProfile(arrayList, this.selectedProfile);
        if (selectedProfile == null) {
            Log.W("databaseProfile is null");
        } else {
            IDMDatabaseManager.getInstance().updateActiveServer(selectedProfile.idmGetServerId());
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createProfilePreferenceUsing$2(ArrayList arrayList, DialogInterface dialogInterface, int i5) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("profile", getSelectedProfile(arrayList, this.selectedProfile));
        Intent intent = new Intent(this.context, (Class<?>) AdminProfileActivity.class);
        intent.putExtra("serverId", bundle);
        this.context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean lambda$createProfilePreferenceUsing$3(final ArrayList arrayList, final Runnable runnable, Preference preference) {
        C0406j c0406j = new C0406j(this.context);
        C0403g c0403g = c0406j.f6773a;
        c0403g.f6718d = "Profile List\n";
        String[] strArrCreateServerNameArray = createServerNameArray(arrayList);
        int i5 = this.selectedProfile;
        d dVar = new d(3, this);
        c0403g.n = strArrCreateServerNameArray;
        c0403g.f6728p = dVar;
        c0403g.f6733u = i5;
        c0403g.f6732t = true;
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: z2.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i6) {
                this.f9722c.lambda$createProfilePreferenceUsing$1(arrayList, runnable, dialogInterface, i6);
            }
        };
        c0403g.f6720g = "Select";
        c0403g.f6721h = onClickListener;
        b bVar = new b(this, 5, arrayList);
        c0403g.f6722i = "Edit";
        c0403g.f6723j = bVar;
        c0406j.a().show();
        return false;
    }

    public Preference createProfilePreferenceUsing(Preference preference, final Runnable runnable) {
        Log.I("");
        final ArrayList<IDMDatabaseProfile> arrayListIDMGetServerInfo = IDMGetServerInfo(IDMDatabaseManager.getInstance().getServerInfos());
        String activeServerName = getActiveServerName(arrayListIDMGetServerInfo);
        if (!TextUtils.equals(activeServerName, preference.f4654j)) {
            preference.f4654j = activeServerName;
            preference.j();
        }
        preference.f4652h = new o() { // from class: z2.b
            @Override // androidx.preference.o
            public final boolean a(Preference preference2) {
                return this.f9725a.lambda$createProfilePreferenceUsing$3(arrayListIDMGetServerInfo, runnable, preference2);
            }
        };
        return preference;
    }
}
