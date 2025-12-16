package com.wssyncmldm.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.SeslProgressBar;
import androidx.databinding.f;
import androidx.databinding.q;
import androidx.databinding.v;
import androidx.lifecycle.C;
import com.idm.fotaagent.enabler.ui.downloadprogress.ProgressBarContentViewModel;
import com.samsung.android.fotaagent.common.view.TextViewWithLimitedFontSize;
import com.wssyncmldm.R;
import i3.x;

/* loaded from: classes.dex */
public class ProgressBarContentBindingImpl extends ProgressBarContentBinding {
    private static final q sIncludes = null;
    private static final SparseIntArray sViewsWithIds = null;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;

    public ProgressBarContentBindingImpl(f fVar, View view) {
        this(fVar, view, v.mapBindings(fVar, view, 4, (q) null, sViewsWithIds));
    }

    private boolean onChangeProgressBarContentViewModelGetFormattedRemainingTime(C c2, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeProgressBarContentViewModelPercent(C c2, int i5) {
        if (i5 != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[PHI: r10
      0x003d: PHI (r10v2 int) = (r10v0 int), (r10v4 int) binds: [B:8:0x001b, B:17:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044  */
    @Override // androidx.databinding.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void executeBindings() {
        long j3;
        String str;
        String formattedPercent;
        synchronized (this) {
            j3 = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        ProgressBarContentViewModel progressBarContentViewModel = this.mProgressBarContentViewModel;
        int iSafeUnbox = 0;
        if ((15 & j3) == 0) {
            str = null;
        } else if ((j3 & 13) == 0) {
            formattedPercent = null;
            if ((j3 & 14) != 0) {
                C formattedRemainingTime = progressBarContentViewModel != null ? progressBarContentViewModel.getFormattedRemainingTime() : null;
                updateLiveDataRegistration(1, formattedRemainingTime);
                str = String.format(this.tvRemainTime.getResources().getString(R.string.STR_DOWNLOAD_TIME_LEFT), formattedRemainingTime != null ? (String) formattedRemainingTime.d() : null);
            }
            str = str;
            str = formattedPercent;
        } else {
            C percent = progressBarContentViewModel != null ? progressBarContentViewModel.getPercent() : null;
            updateLiveDataRegistration(0, percent);
            iSafeUnbox = v.safeUnbox(percent != null ? (Integer) percent.d() : null);
            if (progressBarContentViewModel != null) {
                formattedPercent = progressBarContentViewModel.getFormattedPercent(iSafeUnbox);
            }
            if ((j3 & 14) != 0) {
            }
            str = str;
            str = formattedPercent;
        }
        if ((13 & j3) != 0) {
            this.progressBar.setProgress(iSafeUnbox);
            x.c1(this.tvPercent, str);
        }
        if ((j3 & 14) != 0) {
            x.c1(this.tvRemainTime, str);
        }
    }

    @Override // androidx.databinding.v
    public boolean hasPendingBindings() {
        synchronized (this) {
            try {
                return this.mDirtyFlags != 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.v
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 8L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.v
    public boolean onFieldChange(int i5, Object obj, int i6) {
        if (i5 == 0) {
            return onChangeProgressBarContentViewModelPercent((C) obj, i6);
        }
        if (i5 != 1) {
            return false;
        }
        return onChangeProgressBarContentViewModelGetFormattedRemainingTime((C) obj, i6);
    }

    @Override // com.wssyncmldm.databinding.ProgressBarContentBinding
    public void setProgressBarContentViewModel(ProgressBarContentViewModel progressBarContentViewModel) {
        this.mProgressBarContentViewModel = progressBarContentViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        notifyPropertyChanged(5);
        super.requestRebind();
    }

    @Override // androidx.databinding.v
    public boolean setVariable(int i5, Object obj) {
        if (5 != i5) {
            return false;
        }
        setProgressBarContentViewModel((ProgressBarContentViewModel) obj);
        return true;
    }

    private ProgressBarContentBindingImpl(f fVar, View view, Object[] objArr) {
        super(fVar, view, 2, (SeslProgressBar) objArr[1], (TextViewWithLimitedFontSize) objArr[3], (TextViewWithLimitedFontSize) objArr[2]);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        this.progressBar.setTag(null);
        this.tvPercent.setTag(null);
        this.tvRemainTime.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
