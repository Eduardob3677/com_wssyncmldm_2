package com.wssyncmldm.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.databinding.f;
import androidx.databinding.q;
import androidx.databinding.v;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class FeatureListBindingImpl extends FeatureListBinding {
    private static final q sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;
    private final LinearLayout mboundView0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.list_view, 1);
    }

    public FeatureListBindingImpl(f fVar, View view) {
        this(fVar, view, v.mapBindings(fVar, view, 2, (q) null, sViewsWithIds));
    }

    @Override // androidx.databinding.v
    public void executeBindings() {
        synchronized (this) {
            this.mDirtyFlags = 0L;
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
            this.mDirtyFlags = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.v
    public boolean onFieldChange(int i5, Object obj, int i6) {
        return false;
    }

    @Override // androidx.databinding.v
    public boolean setVariable(int i5, Object obj) {
        return true;
    }

    private FeatureListBindingImpl(f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, (ListView) objArr[1]);
        this.mDirtyFlags = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.mboundView0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
