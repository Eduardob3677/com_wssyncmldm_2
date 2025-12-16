package com.idm.fotaagent.enabler.ui.common;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.SeslProgressBar;
import androidx.databinding.g;
import androidx.databinding.v;
import com.idm.fotaagent.abupdate.abenabler.ui.downloadandinstallprogress.ProgressViewParams;
import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import com.idm.fotaagent.enabler.ui.ActivityScreenIdMapper;
import com.idm.fotaagent.enabler.ui.IDMUIManager;
import com.idm.fotaagent.enabler.ui.common.subcontent.ContentInjector;
import com.idm.fotaagent.enabler.ui.common.viewmodel.BindingModel;
import com.idm.fotaagent.enabler.ui.downloadprogress.ProgressBarBindingModel;
import com.idm.fotaagent.enabler.ui.whatsnew.MajorUpdate;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.fotaagent.common.view.FlexibleWidthRatio;
import com.wssyncmldm.R;
import e.AbstractActivityC0410n;
import e.AbstractC0397a;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class BaseActivity extends AbstractActivityC0410n {
    private LinearLayout content;
    private LinearLayout endMargin;
    protected Inflater inflater;
    private LinearLayout startMargin;
    protected TextView tvMainBody;
    private TextView tvMainOneUi;
    private TextView tvMainTitle;

    /* renamed from: com.idm.fotaagent.enabler.ui.common.BaseActivity$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep;

        static {
            int[] iArr = new int[UpdateStatus.InstallationStep.values().length];
            $SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep = iArr;
            try {
                iArr[UpdateStatus.InstallationStep.DOWNLOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep[UpdateStatus.InstallationStep.VERIFYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep[UpdateStatus.InstallationStep.OPTIMIZING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static abstract class Managed extends BaseActivity {

        public static abstract class WithButtons extends Managed {
            protected Button btHighEmphasis;
            protected Button btMediumEmphasis;

            public static abstract class WithProgressBar extends WithButtons {
                @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed.WithButtons, com.idm.fotaagent.enabler.ui.common.BaseActivity
                public Inflater inflateViews() {
                    Inflater inflaterWithProgressViewModel = super.inflateViews().withProgressViewModel(new ProgressBarBindingModel());
                    this.inflater = inflaterWithProgressViewModel;
                    return inflaterWithProgressViewModel;
                }
            }

            public static abstract class WithTwoProgressBars extends WithButtons {
                private final ProgressView downloadAndInstall;
                private final ProgressView verify;

                public static class ProgressView {
                    private SeslProgressBar progressbar;
                    private TextView tvPercent;
                    private TextView tvProgressStep;

                    private ProgressView() {
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void clearProgressView(int i5) {
                        this.tvProgressStep.setText(i5);
                        this.tvProgressStep.setTextAppearance(R.style.TextAppearance_Widget_TextView_Progress_Body_AB_Step_Inactivate);
                        this.tvPercent.setText("");
                        this.progressbar.setProgress(0);
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void initializeProgressView(View view, int i5) {
                        this.progressbar = (SeslProgressBar) view.findViewById(R.id.progress_bar);
                        this.tvProgressStep = (TextView) view.findViewById(R.id.tv_progress_step);
                        this.tvPercent = (TextView) view.findViewById(R.id.tv_percent);
                        this.tvProgressStep.setText(i5);
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public /* synthetic */ void lambda$setProgressView$0(Integer num) {
                        this.tvProgressStep.setTextAppearance(num.intValue());
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public /* synthetic */ void lambda$setProgressView$1(Context context, Integer num) {
                        this.progressbar.setProgress(num.intValue());
                        this.tvPercent.setText(String.format(context.getString(R.string.STR_COMMON_PERCENT), num));
                    }

                    /* JADX INFO: Access modifiers changed from: private */
                    public void setProgressView(Context context, ProgressViewParams progressViewParams) {
                        this.tvProgressStep.setText(progressViewParams.getTitle());
                        progressViewParams.getTitleStyle().ifPresent(new Consumer() { // from class: com.idm.fotaagent.enabler.ui.common.b
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                this.f6420c.lambda$setProgressView$0((Integer) obj);
                            }
                        });
                        progressViewParams.getPercent().ifPresent(new a(this, 1, context));
                    }

                    public /* synthetic */ ProgressView(AnonymousClass1 anonymousClass1) {
                        this();
                    }
                }

                public WithTwoProgressBars() {
                    AnonymousClass1 anonymousClass1 = null;
                    this.downloadAndInstall = new ProgressView(anonymousClass1);
                    this.verify = new ProgressView(anonymousClass1);
                }

                private void initializeProgressViews() {
                    this.downloadAndInstall.initializeProgressView(findViewById(R.id.download_and_install_step), R.string.STR_DOWNLOAD_AND_INSTALL_PROGRESSBAR_AB);
                    this.verify.initializeProgressView(findViewById(R.id.verify_step), R.string.STR_VERIFICATION_PROGRESSBAR_AB);
                }

                /* JADX INFO: Access modifiers changed from: private */
                public /* synthetic */ void lambda$setProgressView$0(ProgressViewParams progressViewParams, ProgressView progressView) {
                    progressView.setProgressView(this, progressViewParams);
                }

                public void clearProgressViews() {
                    this.downloadAndInstall.clearProgressView(R.string.STR_DOWNLOAD_AND_INSTALL_PROGRESSBAR_AB);
                    this.verify.clearProgressView(R.string.STR_VERIFICATION_PROGRESSBAR_AB);
                }

                public ProgressView getProgressViewFrom(UpdateStatus.InstallationStep installationStep) {
                    int i5 = AnonymousClass1.$SwitchMap$com$idm$fotaagent$abupdate$updateengine$UpdateStatus$InstallationStep[installationStep.ordinal()];
                    if (i5 == 1) {
                        return this.downloadAndInstall;
                    }
                    if (i5 == 2 || i5 == 3) {
                        return this.verify;
                    }
                    Log.W("unexpected status : " + installationStep);
                    return null;
                }

                @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed.WithButtons, com.idm.fotaagent.enabler.ui.common.BaseActivity
                public Inflater inflateViews() {
                    Inflater inflaterWithProgressContent = super.inflateViews().withProgressContent(R.layout.two_progress_bars_content);
                    this.inflater = inflaterWithProgressContent;
                    return inflaterWithProgressContent;
                }

                public void makeProgressBars(int i5) {
                    findViewById(R.id.download_progress_circle).setVisibility(i5 == 0 ? 8 : 0);
                    findViewById(R.id.two_progress_bars).setVisibility(i5);
                    findViewById(R.id.buttons_content).setVisibility(i5);
                }

                @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed.WithButtons, com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed, com.idm.fotaagent.enabler.ui.common.BaseActivity, androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
                public void onCreate(Bundle bundle) {
                    super.onCreate(bundle);
                    initializeProgressViews();
                }

                public void setProgressView(UpdateStatus.InstallationStep installationStep, ProgressViewParams progressViewParams) {
                    Optional.ofNullable(getProgressViewFrom(installationStep)).ifPresent(new a(this, 0, progressViewParams));
                }
            }

            private void setButtonLayout() {
                ViewGroup viewGroup = (ViewGroup) this.inflater.rootView.findViewById(R.id.buttons_content);
                Objects.requireNonNull(viewGroup);
                viewGroup.removeAllViewsInLayout();
                Inflater.Container.BUTTONS.inflateAndTryBinding(this, viewGroup);
            }

            public int getButtonLayoutId() {
                return R.layout.buttons_content;
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity
            public Inflater inflateViews() {
                Inflater inflaterWithButtons = super.inflateViews().withButtons(getButtonLayoutId());
                this.inflater = inflaterWithButtons;
                return inflaterWithButtons;
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity, e.AbstractActivityC0410n, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                super.onConfigurationChanged(configuration);
                CharSequence text = this.btMediumEmphasis.getText();
                CharSequence text2 = this.btHighEmphasis.getText();
                setButtonLayout();
                setButtonViews();
                setButtons(text, text2);
                setListeners();
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed, com.idm.fotaagent.enabler.ui.common.BaseActivity, androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
            public void onCreate(Bundle bundle) {
                super.onCreate(bundle);
                setButtonViews();
                setListeners();
            }

            public void setButtonViews() {
                this.btMediumEmphasis = (Button) findViewById(R.id.bt_mediumEmphasis);
                this.btHighEmphasis = (Button) findViewById(R.id.bt_highEmphasis);
            }

            public final void setButtons(CharSequence charSequence, CharSequence charSequence2) {
                BaseActivity.goneIfEmptyOrSet(this.btMediumEmphasis, charSequence);
                BaseActivity.goneIfEmptyOrSet(this.btHighEmphasis, charSequence2);
            }

            public void setHighEmphasisButton(boolean z4) {
                this.btHighEmphasis.setEnabled(z4);
                this.btHighEmphasis.setAlpha(z4 ? 1.0f : 0.4f);
            }

            public abstract void setListeners();
        }

        public static abstract class WithProgressCircle extends Managed {
            private void setHeightOfProgressContainerToMatchParent() {
                this.inflater.rootView.findViewById(R.id.progress_container).setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity
            public Inflater inflateViews() {
                this.inflater = new Inflater(this).withActionBar(getTitleId()).withProgressContent(R.layout.progress_circle_content);
                setHeightOfProgressContainerToMatchParent();
                return this.inflater;
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Managed, com.idm.fotaagent.enabler.ui.common.BaseActivity, androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
            public void onCreate(Bundle bundle) {
                super.onCreate(bundle);
                findViewById(R.id.outer_container).setVisibility(8);
            }
        }

        public static abstract class WithTwoButtons extends Managed {
            public abstract BindingModel getButtonBindingModel();

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity
            public Inflater inflateViews() {
                Inflater inflaterWithButtons = super.inflateViews().withButtons(getButtonBindingModel());
                this.inflater = inflaterWithButtons;
                return inflaterWithButtons;
            }

            @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity, e.AbstractActivityC0410n, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
                super.onConfigurationChanged(configuration);
                ViewGroup viewGroup = (ViewGroup) this.inflater.rootView.findViewById(R.id.buttons_content);
                Objects.requireNonNull(viewGroup);
                viewGroup.removeAllViewsInLayout();
                Inflater.Container.BUTTONS.inflateAndTryBinding(this, viewGroup);
            }
        }

        public String getKey() {
            return getClass().getName();
        }

        @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity, androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            IDMUIManager.getInstance().put(this);
        }

        @Override // e.AbstractActivityC0410n, androidx.fragment.app.G, android.app.Activity
        public void onDestroy() {
            IDMUIManager.getInstance().remove(this);
            super.onDestroy();
        }
    }

    private void applyFullscreenIfNeeded() {
        Configuration configuration = getResources().getConfiguration();
        Window window = getWindow();
        if (configuration.smallestScreenWidthDp >= 430 || configuration.orientation != 2) {
            Optional.ofNullable(window.getInsetsController()).ifPresent(new A2.a(17));
        } else {
            Optional.ofNullable(window.getInsetsController()).ifPresent(new A2.a(16));
        }
    }

    private float getContentWidthRatio() {
        return FlexibleWidthRatio.getFrom(getResources().getConfiguration());
    }

    public static void goneIfEmptyOrSet(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyFullscreenIfNeeded$1(WindowInsetsController windowInsetsController) {
        windowInsetsController.hide(WindowInsets.Type.statusBars());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$applyFullscreenIfNeeded$2(WindowInsetsController windowInsetsController) {
        windowInsetsController.show(WindowInsets.Type.statusBars());
    }

    private void measureContentWidthRatio() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.startMargin.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.endMargin.getLayoutParams();
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) this.content.getLayoutParams();
        float contentWidthRatio = getContentWidthRatio();
        layoutParams3.weight = contentWidthRatio;
        float f = (1.0f - contentWidthRatio) / 2.0f;
        layoutParams2.weight = f;
        layoutParams.weight = f;
        this.startMargin.setLayoutParams(layoutParams);
        this.endMargin.setLayoutParams(layoutParams2);
        this.content.setLayoutParams(layoutParams3);
    }

    @Override // android.app.Activity
    public final void finish() {
        Log.I(this);
        super.finish();
    }

    public int getMainContentLayoutId() {
        return MajorUpdate.FOR_WHATS_NEW.isMajorUpdate(getApplicationContext()) ? R.layout.main_content_major : R.layout.main_content_minor;
    }

    public int getTitleId() {
        return R.string.STR_SWUPDATE_TITLE;
    }

    public Inflater inflateViews() {
        Inflater inflaterWithMainContent = new Inflater(this).withActionBar(getTitleId()).withMainContent(getMainContentLayoutId());
        this.inflater = inflaterWithMainContent;
        return inflaterWithMainContent;
    }

    @Override // e.AbstractActivityC0410n, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.I(this + " " + configuration);
        super.onConfigurationChanged(configuration);
        measureContentWidthRatio();
        applyFullscreenIfNeeded();
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(inflateViews().inflate());
        this.tvMainTitle = (TextView) findViewById(R.id.tv_main_title);
        this.tvMainOneUi = (TextView) findViewById(R.id.tv_main_oneui);
        this.tvMainBody = (TextView) findViewById(R.id.tv_main_body);
        this.content = (LinearLayout) findViewById(R.id.content);
        this.startMargin = (LinearLayout) findViewById(R.id.start_margin);
        this.endMargin = (LinearLayout) findViewById(R.id.end_margin);
        measureContentWidthRatio();
        applyFullscreenIfNeeded();
        Optional.ofNullable(ActivityScreenIdMapper.getScreenIdFrom(this)).ifPresent(new A2.a(19));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Log.I(this + " menu item id: " + menuItem.getItemId());
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        Optional.ofNullable(ActivityScreenIdMapper.getScreenIdFrom(this)).ifPresent(new A2.a(18));
        finish();
        return true;
    }

    public final void setMainBody(CharSequence charSequence) {
        goneIfEmptyOrSet(this.tvMainBody, charSequence);
    }

    public final void setMainOneUi(CharSequence charSequence) {
        goneIfEmptyOrSet(this.tvMainOneUi, charSequence);
    }

    public final void setMainTitle(CharSequence charSequence) {
        goneIfEmptyOrSet(this.tvMainTitle, charSequence);
    }

    public final void setSubContent(ContentInjector.Model... modelArr) {
        this.inflater.injectToSubContainer(modelArr);
    }

    public String toString() {
        return getClass().getSimpleName() + "@" + Integer.toHexString(hashCode());
    }

    public static class Inflater {
        private static final int INVALID_RESOURCE_ID = 0;
        private final AbstractActivityC0410n activity;
        private final View rootView;
        private int titleId;

        public enum Container {
            MAIN(R.id.main_container),
            PROGRESS(R.id.progress_container) { // from class: com.idm.fotaagent.enabler.ui.common.BaseActivity.Inflater.Container.1
                @Override // com.idm.fotaagent.enabler.ui.common.BaseActivity.Inflater.Container
                public Optional<v> inflate(AbstractActivityC0410n abstractActivityC0410n, View view) {
                    return inflateViewStub(view);
                }
            },
            BUTTONS(R.id.button_container);

            protected BindingModel bindingModel;
            protected int contentLayoutId;
            private final int viewId;

            /* synthetic */ Container(int i5, AnonymousClass1 anonymousClass1) {
                this(i5);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$tryDataBinding$0(AbstractActivityC0410n abstractActivityC0410n, v vVar) {
                BindingModel bindingModel = getBindingModel();
                if (bindingModel != null) {
                    vVar.setVariable(bindingModel.getVariableId(), bindingModel.getViewModel());
                    vVar.setLifecycleOwner(abstractActivityC0410n);
                }
            }

            private void tryDataBinding(AbstractActivityC0410n abstractActivityC0410n, Optional<? extends v> optional) {
                optional.ifPresent(new a(this, 2, abstractActivityC0410n));
            }

            public BindingModel getBindingModel() {
                return this.bindingModel;
            }

            public int getContentLayoutId() {
                return this.contentLayoutId;
            }

            public int getViewId() {
                return this.viewId;
            }

            public Optional<v> inflate(AbstractActivityC0410n abstractActivityC0410n, View view) {
                return inflateLinearLayout(abstractActivityC0410n, view);
            }

            public void inflateAndTryBinding(AbstractActivityC0410n abstractActivityC0410n, View view) {
                tryDataBinding(abstractActivityC0410n, inflate(abstractActivityC0410n, view));
            }

            public Optional<v> inflateLinearLayout(AbstractActivityC0410n abstractActivityC0410n, View view) {
                if (getBindingModel() != null) {
                    return Optional.ofNullable(g.c(LayoutInflater.from(abstractActivityC0410n), this.contentLayoutId, (ViewGroup) view, true));
                }
                View.inflate(abstractActivityC0410n, this.contentLayoutId, (ViewGroup) view);
                return Optional.empty();
            }

            public Optional<v> inflateViewStub(View view) {
                ViewStub viewStub = (ViewStub) view;
                viewStub.setLayoutResource(this.contentLayoutId);
                try {
                    return Optional.ofNullable(g.a(viewStub.inflate()));
                } catch (IllegalArgumentException unused) {
                    Log.I("This is not a DataBinding layout");
                    return Optional.empty();
                }
            }

            public void setBindingModel(BindingModel bindingModel) {
                this.bindingModel = bindingModel;
            }

            public void setContentLayoutId(int i5) {
                this.contentLayoutId = i5;
            }

            Container(int i5) {
                this.viewId = i5;
            }
        }

        public Inflater(AbstractActivityC0410n abstractActivityC0410n) {
            this.activity = abstractActivityC0410n;
            this.rootView = abstractActivityC0410n.getLayoutInflater().inflate(R.layout.base_activity_template, (ViewGroup) null);
            for (Container container : Container.values()) {
                container.setContentLayoutId(0);
            }
            this.titleId = 0;
        }

        public View inflate() {
            if (this.titleId != 0) {
                AbstractC0397a supportActionBar = this.activity.getSupportActionBar();
                Objects.requireNonNull(supportActionBar);
                supportActionBar.o(this.titleId);
                supportActionBar.m(true);
            }
            for (Container container : Container.values()) {
                if (container.getContentLayoutId() != 0) {
                    View viewFindViewById = this.rootView.findViewById(container.getViewId());
                    Objects.requireNonNull(viewFindViewById);
                    container.inflateAndTryBinding(this.activity, viewFindViewById);
                }
            }
            return this.rootView;
        }

        public void injectToSubContainer(ContentInjector.Model... modelArr) {
            ViewGroup viewGroup = (ViewGroup) this.rootView.findViewById(R.id.sub_container);
            Objects.requireNonNull(viewGroup);
            ContentInjector.inject(viewGroup, modelArr);
        }

        public Inflater withActionBar(int i5) {
            this.titleId = i5;
            return this;
        }

        public Inflater withButtons(int i5) {
            this.rootView.findViewById(R.id.button_container).setVisibility(0);
            Container container = Container.BUTTONS;
            container.setContentLayoutId(i5);
            container.setBindingModel(null);
            return this;
        }

        public Inflater withMainContent(int i5) {
            Container.MAIN.setContentLayoutId(i5);
            return this;
        }

        public Inflater withProgressContent(int i5) {
            Container.PROGRESS.setContentLayoutId(i5);
            return this;
        }

        public Inflater withProgressViewModel(BindingModel bindingModel) {
            Container container = Container.PROGRESS;
            container.setBindingModel(bindingModel);
            container.setContentLayoutId(bindingModel.getLayoutId());
            return this;
        }

        public Inflater withButtons(BindingModel bindingModel) {
            this.rootView.findViewById(R.id.button_container).setVisibility(0);
            Container container = Container.BUTTONS;
            container.setBindingModel(bindingModel);
            container.setContentLayoutId(bindingModel.getLayoutId());
            return this;
        }
    }
}
