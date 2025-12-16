package com.idm.fotaagent.enabler.ui.dialog;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.C0109a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.G;
import androidx.fragment.app.Z;
import com.idm.fotaagent.BundleWrapper;
import com.idm.fotaagent.enabler.ui.IDMUIManager;
import com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog;
import com.idm.fotaagent.enabler.ui.interfaces.IDMUIEventInterface;
import com.samsung.android.fotaagent.common.log.Log;
import java.util.Objects;

/* loaded from: classes.dex */
public class IDMUIActivityForDialog extends G {
    private IDMUIDialogFragmentForDialog dialogFragment;

    private void addDialogFragmentOf(IDMUIEventInterface.UIDIALOG uidialog) {
        Z supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentB = supportFragmentManager.B(IDMUIDialogFragmentForDialog.TAG);
        if (fragmentB != null) {
            this.dialogFragment = (IDMUIDialogFragmentForDialog) fragmentB;
            return;
        }
        IDMUIDialogFragmentForDialog iDMUIDialogFragmentForDialogCreateDialogFragmentOf = createDialogFragmentOf(uidialog);
        this.dialogFragment = iDMUIDialogFragmentForDialogCreateDialogFragmentOf;
        iDMUIDialogFragmentForDialogCreateDialogFragmentOf.show(supportFragmentManager, IDMUIDialogFragmentForDialog.TAG);
    }

    private IDMUIDialogFragmentForDialog createDialogFragmentOf(IDMUIEventInterface.UIDIALOG uidialog) {
        return uidialog == IDMUIEventInterface.UIDIALOG.IDM_DIALOG_INSTALL_PLEASE_WAIT ? new IDMUIDialogFragmentForDialog.ProgressCircleDialog() : new IDMUIDialogFragmentForDialog.MessageDialog();
    }

    private void replaceDialogFragmentWith(IDMUIEventInterface.UIDIALOG uidialog) {
        IDMUIDialogFragmentForDialog iDMUIDialogFragmentForDialog = this.dialogFragment;
        this.dialogFragment = createDialogFragmentOf(uidialog);
        Z supportFragmentManager = getSupportFragmentManager();
        supportFragmentManager.getClass();
        C0109a c0109a = new C0109a(supportFragmentManager);
        c0109a.g(iDMUIDialogFragmentForDialog);
        c0109a.c(0, this.dialogFragment, IDMUIDialogFragmentForDialog.TAG, 1);
        c0109a.e(true);
        iDMUIDialogFragmentForDialog.allowsToFinish = false;
    }

    @Override // android.app.Activity
    public void finish() {
        Log.I(this);
        super.finish();
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.I(this);
        super.onCreate(bundle);
        IDMUIManager.getInstance().put(this);
        try {
            Bundle bundleExtra = getIntent().getBundleExtra(IDMUIEventInterface.IDM_UI_EXTRA_KEY);
            Objects.requireNonNull(bundleExtra);
            BundleWrapper bundleWrapper = new BundleWrapper(bundleExtra);
            IDMUIEventInterface.UIDIALOG dialogType = bundleWrapper.getDialogType();
            Objects.requireNonNull(dialogType);
            addDialogFragmentOf(dialogType);
            new IDMUIDialogPresenter(this.dialogFragment, dialogType, bundleWrapper, this);
        } catch (NullPointerException e5) {
            Log.printStackTrace(e5);
            finish();
        }
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onDestroy() {
        Log.I(this);
        IDMUIManager.getInstance().remove(this);
        super.onDestroy();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        try {
            Bundle bundleExtra = getIntent().getBundleExtra(IDMUIEventInterface.IDM_UI_EXTRA_KEY);
            Objects.requireNonNull(bundleExtra);
            IDMUIEventInterface.UIDIALOG dialogType = new BundleWrapper(bundleExtra).getDialogType();
            Objects.requireNonNull(dialogType);
            Bundle bundleExtra2 = intent.getBundleExtra(IDMUIEventInterface.IDM_UI_EXTRA_KEY);
            Objects.requireNonNull(bundleExtra2);
            BundleWrapper bundleWrapper = new BundleWrapper(bundleExtra2);
            IDMUIEventInterface.UIDIALOG dialogType2 = bundleWrapper.getDialogType();
            Objects.requireNonNull(dialogType2);
            boolean zShouldReplace = dialogType2.shouldReplace(dialogType, (AlertDialog) this.dialogFragment.getDialog());
            Log.I("previous uidialog: " + dialogType + ", current uidialog: " + dialogType2 + ", shouldReplace: " + zShouldReplace);
            if (zShouldReplace) {
                setIntent(intent);
                replaceDialogFragmentWith(dialogType2);
                new IDMUIDialogPresenter(this.dialogFragment, dialogType2, bundleWrapper, this);
            }
        } catch (NullPointerException e5) {
            Log.printStackTrace(e5);
            finish();
        }
    }

    @Override // androidx.fragment.app.G, android.app.Activity
    public void onResume() {
        super.onResume();
        Log.I(this);
    }
}
