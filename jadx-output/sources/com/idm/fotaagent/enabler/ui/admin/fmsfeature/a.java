package com.idm.fotaagent.enabler.ui.admin.fmsfeature;

import androidx.lifecycle.G;
import com.idm.fotaagent.enabler.ui.admin.fmsfeature.FeatureInjectionActivity;
import com.idm.fotaagent.enabler.ui.admin.fmsfeature.FeatureInjectionViewModel;
import com.wssyncmldm.databinding.FeatureEntryBinding;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements G {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6399a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f6400b;

    public /* synthetic */ a(int i5, Object obj) {
        this.f6399a = i5;
        this.f6400b = obj;
    }

    @Override // androidx.lifecycle.G
    public final void c(Object obj) {
        int i5 = this.f6399a;
        Object obj2 = this.f6400b;
        switch (i5) {
            case 0:
                FeatureInjectionActivity.FeatureAttributeAdapter.lambda$getView$0((FeatureEntryBinding) obj2, (Integer) obj);
                break;
            default:
                ((FeatureInjectionViewModel.FeatureEntry) obj2).performFeatureInjection((Integer) obj);
                break;
        }
    }
}
