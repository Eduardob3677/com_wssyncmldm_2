package com.idm.fotaagent.enabler.ui;

import android.app.Activity;
import com.idm.fotaagent.enabler.ui.ActivityScreenIdMapper;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6396a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6397b;

    public /* synthetic */ a(int i5, Object obj) {
        this.f6396a = i5;
        this.f6397b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i5 = this.f6396a;
        Object obj2 = this.f6397b;
        switch (i5) {
            case 0:
                return ActivityScreenIdMapper.lambda$getScreenIdFrom$0((Activity) obj2, (ActivityScreenIdMapper.ScreenId) obj);
            default:
                return IDMUIManager.lambda$finishAllActivitiesExcept$9((String) obj2, (String) obj);
        }
    }
}
