package x2;

import android.content.Context;
import android.content.Intent;
import androidx.preference.Preference;
import androidx.preference.o;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.enabler.ui.userinit.UserInitEntryActivity;
import com.idm.fotaagent.enabler.ui.utagent.IDMUTAgentContract;

/* renamed from: x2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0908c implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9635a;

    public /* synthetic */ C0908c(int i5) {
        this.f9635a = i5;
    }

    @Override // androidx.preference.o
    public final boolean a(Preference preference) {
        switch (this.f9635a) {
            case 0:
                IDMApplication.getEnablerFactory().getAdminCommandExecutor(preference.f4648c).execute(IDMUTAgentContract.LOCALTEST);
                break;
            default:
                Context context = preference.f4648c;
                context.startActivity(new Intent(context, (Class<?>) UserInitEntryActivity.class));
                break;
        }
        return true;
    }
}
