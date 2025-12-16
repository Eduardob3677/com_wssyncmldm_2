package L2;

import android.content.Context;
import android.util.Log;
import com.idm.agent.dm.uic.IDMDmUICInterface;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1345a;

    /* renamed from: c, reason: collision with root package name */
    public final String f1347c;

    /* renamed from: g, reason: collision with root package name */
    public final B1.c f1350g;

    /* renamed from: b, reason: collision with root package name */
    public String f1346b = "";

    /* renamed from: d, reason: collision with root package name */
    public String f1348d = "";
    public String f = "";

    /* renamed from: e, reason: collision with root package name */
    public boolean f1349e = false;

    public a(Context context) {
        this.f1347c = "";
        this.f1345a = context;
        this.f1347c = b.w(context);
        if (N2.a.a(context) == 1) {
            B1.c cVar = new B1.c();
            cVar.f197d = false;
            cVar.f198e = "";
            this.f1350g = cVar;
        }
    }

    public final void a() {
        this.f1348d = "S";
        if (N2.a.a(this.f1345a) != 1) {
            if (IDMDmUICInterface.IDM_UIC_OPTION_IT_D.equals(this.f1348d) || "S".equals(this.f1348d)) {
                this.f1349e = true;
                return;
            } else {
                this.f1349e = false;
                return;
            }
        }
        String str = this.f1348d;
        B1.c cVar = this.f1350g;
        cVar.f198e = str;
        if ("S".equals(str)) {
            cVar.f198e = "Y";
        }
        if (((String) cVar.f198e).isEmpty()) {
            Log.w(N2.a.f1862a, "Empty agreement");
            cVar.f197d = false;
        } else {
            if ("Y".equals((String) cVar.f198e) || IDMDmUICInterface.IDM_UIC_OPTION_IT_D.equals((String) cVar.f198e)) {
                cVar.f197d = true;
                return;
            }
            Log.w(N2.a.f1862a, "Wrong agreement : " + str);
            cVar.f197d = false;
        }
    }
}
