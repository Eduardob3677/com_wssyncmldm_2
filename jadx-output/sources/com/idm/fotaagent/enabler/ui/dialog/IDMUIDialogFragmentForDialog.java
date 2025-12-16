package com.idm.fotaagent.enabler.ui.dialog;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.G;
import androidx.fragment.app.r;
import com.idm.fotaagent.enabler.ui.IDMUIManager;
import com.idm.fotaagent.enabler.ui.admin.main.hidden.command.b;
import com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor;
import com.idm.fotaagent.enabler.ui.dialog.model.buttonstrategy.ButtonStrategy;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public abstract class IDMUIDialogFragmentForDialog extends r implements IDMUIDialogContractor.View {
    public static final String TAG = "FRAGMENT_FOR_DIALOG";
    boolean allowsToFinish = true;
    private IDMUIDialogContractor.Presenter presenter;
    View rootView;

    public static class MessageDialog extends IDMUIDialogFragmentForDialog {
        private CharSequence message;

        @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog, com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
        public CharSequence getMessage() {
            return this.message;
        }

        @Override // androidx.fragment.app.r, androidx.fragment.app.Fragment
        public void onStart() {
            super.onStart();
            ((TextView) getDialog().findViewById(R.id.message)).setMovementMethod(LinkMovementMethod.getInstance());
        }

        @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog, com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
        public void setMessage(CharSequence charSequence) {
            this.message = charSequence;
            ((AlertDialog) getDialog()).setMessage(charSequence);
        }
    }

    public static class ProgressCircleDialog extends ViewDialog {
        public ProgressCircleDialog() {
            super(com.wssyncmldm.R.layout.idmui_progress_circle);
        }

        @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog.ViewDialog
        public void doInflateViews() {
            this.tvMainDescription = (TextView) this.rootView.findViewById(com.wssyncmldm.R.id.progress_content);
            if (getDialog().getWindow() != null) {
                getDialog().getWindow().setGravity(80);
            }
        }
    }

    public static abstract class ViewDialog extends IDMUIDialogFragmentForDialog {
        private final int layoutId;
        TextView tvMainDescription;

        public ViewDialog(int i5) {
            this.layoutId = i5;
        }

        public abstract void doInflateViews();

        @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog, com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
        public CharSequence getMessage() {
            return this.tvMainDescription.getText().toString();
        }

        public void inflateViews() {
            LayoutInflater layoutInflater = getActivity().getLayoutInflater();
            View viewInflate = layoutInflater.inflate(com.wssyncmldm.R.layout.empty_container, (ViewGroup) null);
            this.rootView = viewInflate;
            layoutInflater.inflate(this.layoutId, (ViewGroup) viewInflate);
            doInflateViews();
        }

        @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogFragmentForDialog, com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
        public void setMessage(CharSequence charSequence) {
            inflateViews();
            ((AlertDialog) getDialog()).setView(this.rootView);
            this.tvMainDescription.setText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setButtonOf$0(ButtonStrategy buttonStrategy, DialogInterface dialogInterface, int i5) {
        buttonStrategy.onClick(dialogInterface, this.presenter);
    }

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public void finish() {
        Log.I(this);
        G activity = getActivity();
        if (this.allowsToFinish && IDMUIManager.allowsToFinish(activity)) {
            activity.finish();
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public abstract CharSequence getMessage();

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public View getRootView() {
        return this.rootView;
    }

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        Log.I(this);
        this.presenter.onCancel();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.I(this);
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.r
    public Dialog onCreateDialog(Bundle bundle) {
        Log.I(this);
        return new AlertDialog.Builder(getActivity()).create();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.presenter.postInit();
        this.presenter.setCancelable();
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        Log.I(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.r, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        Log.I(this);
        this.presenter.onDismiss();
        finish();
    }

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public void setButtonOf(ButtonStrategy buttonStrategy) {
        if (buttonStrategy != ButtonStrategy.NONE) {
            ((AlertDialog) getDialog()).setButton(buttonStrategy.getId(), buttonStrategy.getText(), new b(this, 4, buttonStrategy));
        }
    }

    @Override // androidx.fragment.app.r, com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public void setCancelable(boolean z4) {
        getDialog().setCancelable(z4);
        getDialog().setCanceledOnTouchOutside(z4);
    }

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public abstract void setMessage(CharSequence charSequence);

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public void setPresenter(IDMUIDialogContractor.Presenter presenter) {
        this.presenter = presenter;
    }

    @Override // com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor.View
    public void setTitle(String str) {
        getDialog().setTitle(str);
    }
}
