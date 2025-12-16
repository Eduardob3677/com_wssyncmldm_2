package com.idm.fotaagent.restapi.restclient.push.campaign;

import com.samsung.android.fotaagent.common.util.Xpath;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6456a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6457b;

    public /* synthetic */ c(int i5, Object obj) {
        this.f6456a = i5;
        this.f6457b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i5 = this.f6456a;
        Object obj2 = this.f6457b;
        switch (i5) {
            case 0:
                return ((Xpath) obj2).getAttributes((String) obj);
            default:
                return ((CampaignMessageHelper) obj2).lambda$peek$0((String) obj);
        }
    }
}
