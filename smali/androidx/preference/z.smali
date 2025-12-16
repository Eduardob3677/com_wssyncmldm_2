.class public abstract Landroidx/preference/z;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final FONT_SCALE_LARGE:F = 1.3f

.field private static final FONT_SCALE_MEDIUM:F = 1.1f

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field static final SWITCH_PREFERENCE_LAYOUT:I = 0x2

.field static final SWITCH_PREFERENCE_LAYOUT_LARGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslPreferenceFragmentC"


# instance fields
.field private mBottom:I

.field private final mDividerDecoration:Landroidx/preference/x;

.field private final mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mIsLargeLayout:I

.field private mIsReducedMargin:Z

.field private mIsRoundedCorner:Z

.field private mLayoutResId:I

.field private mLeft:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mListRoundedCorner:Landroidx/appcompat/util/b;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPreferenceManager:Landroidx/preference/F;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mRight:I

.field private mRoundedCorner:Landroidx/appcompat/util/b;

.field private mScreenWidthDp:I

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mSubheaderColor:I

.field private mSubheaderRoundedCorner:Landroidx/appcompat/util/c;

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroidx/preference/x;

    invoke-direct {v0, p0}, Landroidx/preference/x;-><init>(Landroidx/preference/z;)V

    iput-object v0, p0, Landroidx/preference/z;->mDividerDecoration:Landroidx/preference/x;

    const v0, 0x7f0d0069

    iput v0, p0, Landroidx/preference/z;->mLayoutResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/z;->mIsRoundedCorner:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/preference/z;->mLeft:I

    iput v0, p0, Landroidx/preference/z;->mTop:I

    iput v0, p0, Landroidx/preference/z;->mRight:I

    iput v0, p0, Landroidx/preference/z;->mBottom:I

    new-instance v0, Landroidx/picker/widget/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroidx/picker/widget/c;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v0, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroidx/preference/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/preference/t;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/preference/z;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Landroidx/preference/z;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method public static synthetic access$002(Landroidx/preference/z;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iput-object p1, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p1
.end method

.method public static access$100(Landroidx/preference/z;Landroidx/preference/D;II)Z
    .locals 2

    iget v0, p0, Landroidx/preference/z;->mIsLargeLayout:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    iget p0, p0, Landroidx/preference/z;->mScreenWidthDp:I

    if-ne p0, p3, :cond_1

    iget p0, p1, Landroidx/preference/D;->o:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic access$1000(Landroidx/preference/z;)I
    .locals 0

    iget p0, p0, Landroidx/preference/z;->mBottom:I

    return p0
.end method

.method public static synthetic access$1100(Landroidx/preference/z;)Landroidx/appcompat/util/b;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mListRoundedCorner:Landroidx/appcompat/util/b;

    return-object p0
.end method

.method public static synthetic access$202(Landroidx/preference/z;I)I
    .locals 0

    iput p1, p0, Landroidx/preference/z;->mIsLargeLayout:I

    return p1
.end method

.method public static synthetic access$302(Landroidx/preference/z;I)I
    .locals 0

    iput p1, p0, Landroidx/preference/z;->mScreenWidthDp:I

    return p1
.end method

.method public static synthetic access$400(Landroidx/preference/z;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/preference/z;->mIsRoundedCorner:Z

    return p0
.end method

.method public static synthetic access$500(Landroidx/preference/z;)Landroidx/appcompat/util/c;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mSubheaderRoundedCorner:Landroidx/appcompat/util/c;

    return-object p0
.end method

.method public static synthetic access$600(Landroidx/preference/z;)Landroidx/appcompat/util/b;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mRoundedCorner:Landroidx/appcompat/util/b;

    return-object p0
.end method

.method public static synthetic access$700(Landroidx/preference/z;)I
    .locals 0

    iget p0, p0, Landroidx/preference/z;->mLeft:I

    return p0
.end method

.method public static synthetic access$800(Landroidx/preference/z;)I
    .locals 0

    iget p0, p0, Landroidx/preference/z;->mTop:I

    return p0
.end method

.method public static synthetic access$900(Landroidx/preference/z;)I
    .locals 0

    iget p0, p0, Landroidx/preference/z;->mRight:I

    return p0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/F;->c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/z;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This should be called after super.onCreate."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bindPreferences()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/z;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Lj0/A;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lj0/A;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->l()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/z;->onBindPreferences()V

    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->E(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public getPreferenceManager()Landroidx/preference/F;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    return-object p0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0

    iget-object p0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    iget-object p0, p0, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method public onBindPreferences()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/preference/v;

    invoke-direct {v1, p0}, Landroidx/preference/v;-><init>(Landroidx/preference/z;)V

    iput-object v1, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v1, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lj0/J;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0xfa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    iget-boolean v3, p0, Landroidx/preference/z;->mIsReducedMargin:Z

    if-eq v2, v3, :cond_3

    instance-of v0, v0, Landroidx/preference/D;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Landroidx/preference/z;->mIsReducedMargin:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroidx/preference/I;->g:[I

    const v3, 0x7f0403ba

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/preference/z;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lj0/J;->e0()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Lj0/A;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lj0/A;)V

    invoke-virtual {v1, v2}, Lj0/J;->d0(Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0403c5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x140

    if-gt v2, v4, :cond_0

    iget v4, v1, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3f8ccccd    # 1.1f

    cmpl-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_0
    const/16 v4, 0x19b

    if-ge v2, v4, :cond_2

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Landroidx/preference/z;->mIsLargeLayout:I

    iput v2, p0, Landroidx/preference/z;->mScreenWidthDp:I

    const/16 v1, 0xfa

    const/4 v4, 0x0

    if-gt v2, v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Landroidx/preference/z;->mIsReducedMargin:Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_4

    const v0, 0x7f1401e1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Landroidx/preference/F;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/F;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    iput-object p0, v0, Landroidx/preference/F;->j:Landroidx/preference/z;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, p1, v0}, Landroidx/preference/z;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateAdapter(Landroidx/preference/PreferenceScreen;)Lj0/A;
    .locals 0

    new-instance p0, Landroidx/preference/D;

    invoke-direct {p0, p1}, Landroidx/preference/D;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public onCreateLayoutManager()Lj0/J;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    const/4 p0, 0x1

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0a01be

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0d00a0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/preference/z;->onCreateLayoutManager()Lj0/J;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lj0/J;)V

    new-instance p0, Landroidx/preference/G;

    invoke-direct {p0, p1}, Landroidx/preference/G;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lj0/d0;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/preference/I;->g:[I

    const/4 v2, 0x0

    const v3, 0x7f0403ba

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroidx/preference/z;->mLayoutResId:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/preference/z;->mLayoutResId:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v9, Lc/a;->C:[I

    const v10, 0x1010208

    invoke-virtual {v0, v2, v9, v10, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    instance-of v11, v10, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v11, :cond_0

    check-cast v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    iput v10, p0, Landroidx/preference/z;->mSubheaderColor:I

    :cond_0
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v9, p0, Landroidx/preference/z;->mLayoutResId:I

    invoke-virtual {p1, v9, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v9, 0x102003f

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup;

    if-eqz v10, :cond_d

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v9, p3}, Landroidx/preference/z;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_c

    iput-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    iget-object v10, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_2

    new-instance v10, Landroidx/preference/v;

    invoke-direct {v10, p0}, Landroidx/preference/v;-><init>(Landroidx/preference/z;)V

    iput-object v10, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_2
    iget-object v10, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p3, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    iget-object p3, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Landroidx/preference/u;

    invoke-direct {v10, p0}, Landroidx/preference/u;-><init>(Landroidx/preference/z;)V

    invoke-virtual {p3, v10}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p3, p0, Landroidx/preference/z;->mDividerDecoration:Landroidx/preference/x;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->j(Lj0/G;)V

    invoke-virtual {p0, v3}, Landroidx/preference/z;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v5, v6, :cond_4

    invoke-virtual {p0, v5}, Landroidx/preference/z;->setDividerHeight(I)V

    :cond_4
    iget-object p3, p0, Landroidx/preference/z;->mDividerDecoration:Landroidx/preference/x;

    iput-boolean v8, p3, Landroidx/preference/x;->c:Z

    iget-object p3, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lj0/F;)V

    new-instance p3, Landroidx/appcompat/util/b;

    invoke-direct {p3, v0}, Landroidx/appcompat/util/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/preference/z;->mRoundedCorner:Landroidx/appcompat/util/b;

    new-instance p3, Landroidx/appcompat/util/c;

    invoke-direct {p3, v0}, Landroidx/appcompat/util/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/preference/z;->mSubheaderRoundedCorner:Landroidx/appcompat/util/c;

    iget-boolean p3, p0, Landroidx/preference/z;->mIsRoundedCorner:Z

    if-eqz p3, :cond_6

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_5

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView;->o1:Z

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_5
    iget p3, p0, Landroidx/preference/z;->mSubheaderColor:I

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->u1:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->v1:Landroidx/appcompat/util/c;

    const/16 v1, 0xc

    invoke-virtual {p1, v1, p3}, Landroidx/appcompat/util/b;->setRoundedCornerColor(II)V

    new-instance p1, Landroidx/appcompat/util/b;

    invoke-direct {p1, v0}, Landroidx/appcompat/util/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/preference/z;->mListRoundedCorner:Landroidx/appcompat/util/b;

    invoke-virtual {p1, v7}, Landroidx/appcompat/util/b;->setRoundedCorners(I)V

    :cond_6
    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_7

    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object p1, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Landroidx/preference/z;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070458

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget p3, p0, Landroidx/preference/z;->mLeft:I

    if-ltz p3, :cond_8

    goto :goto_0

    :cond_8
    move p3, p1

    :goto_0
    iget v0, p0, Landroidx/preference/z;->mTop:I

    if-ltz v0, :cond_9

    goto :goto_1

    :cond_9
    move v0, v4

    :goto_1
    iget v1, p0, Landroidx/preference/z;->mRight:I

    if-ltz v1, :cond_a

    move p1, v1

    :cond_a
    iget v1, p0, Landroidx/preference/z;->mBottom:I

    if-ltz v1, :cond_b

    move v4, v1

    :cond_b
    invoke-virtual {p0, p3, v0, p1, v4}, Landroidx/preference/z;->setPadding(IIII)V

    return-object p2

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not create RecyclerView"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroyView()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/z;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroidx/preference/z;->mHavePrefs:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/z;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lj0/A;)V

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->p()V

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/z;->onUnbindPreferences()V

    :cond_1
    iget-object v0, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/z;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    iput-object v1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/z;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    const-string v1, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Z;->B(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    const-string v2, "key"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroidx/preference/Preference;->n:Ljava/lang/String;

    new-instance v0, Landroidx/preference/d;

    invoke-direct {v0}, Landroidx/preference/d;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v4, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroidx/preference/Preference;->n:Ljava/lang/String;

    new-instance v0, Landroidx/preference/h;

    invoke-direct {v0}, Landroidx/preference/h;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v4, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroidx/preference/Preference;->n:Ljava/lang/String;

    new-instance v0, Landroidx/preference/k;

    invoke-direct {v0}, Landroidx/preference/k;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v4, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/r;->show(Landroidx/fragment/app/Z;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/z;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p1, Landroidx/preference/Preference;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/z;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/G;

    const-string v0, "SeslPreferenceFragmentC"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/Z;

    move-result-object v0

    iget-object v2, p1, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    :cond_1
    iget-object v2, p1, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroidx/fragment/app/Z;->D()Landroidx/fragment/app/T;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/G;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    iget-object p1, p1, Landroidx/preference/Preference;->p:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/T;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/Z;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, v3, v0}, Landroidx/fragment/app/a;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-boolean p0, v2, Landroidx/fragment/app/j0;->h:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    iput-boolean p0, v2, Landroidx/fragment/app/j0;->g:Z

    iput-object v3, v2, Landroidx/fragment/app/j0;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/a;->e(Z)I

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use non-zero containerViewId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->d(Landroid/os/Bundle;)V

    const-string p0, "android:preferences"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    iput-object p0, v0, Landroidx/preference/F;->h:Landroidx/preference/z;

    iput-object p0, v0, Landroidx/preference/F;->i:Landroidx/preference/z;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object p0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/F;->h:Landroidx/preference/z;

    iput-object v0, p0, Landroidx/preference/F;->i:Landroidx/preference/z;

    return-void
.end method

.method public onUnbindPreferences()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/z;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->c(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean p1, p0, Landroidx/preference/z;->mHavePrefs:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/z;->bindPreferences()V

    iget-object p1, p0, Landroidx/preference/z;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/z;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/z;->mInitDone:Z

    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 2

    new-instance v0, Landroidx/preference/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/preference/w;-><init>(Landroidx/preference/z;Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/preference/z;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/w;->run()V

    :goto_0
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroidx/preference/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Landroidx/preference/w;-><init>(Landroidx/preference/z;Landroidx/preference/Preference;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    iput-object v0, p0, Landroidx/preference/z;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/w;->run()V

    :goto_0
    return-void
.end method

.method public seslSetRoundedCorner(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/preference/z;->mIsRoundedCorner:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object p0, p0, Landroidx/preference/z;->mDividerDecoration:Landroidx/preference/x;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/preference/x;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/x;->b:I

    :goto_0
    iput-object p1, p0, Landroidx/preference/x;->a:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Landroidx/preference/x;->d:Landroidx/preference/z;

    iget-object p0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    if-eqz p1, :cond_2

    const-string v0, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {p1, v0}, Lj0/J;->c(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    iget-object p0, p0, Landroidx/preference/z;->mDividerDecoration:Landroidx/preference/x;

    iput p1, p0, Landroidx/preference/x;->b:I

    iget-object p0, p0, Landroidx/preference/x;->d:Landroidx/preference/z;

    iget-object p0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->p:Lj0/J;

    if-eqz p1, :cond_1

    const-string v0, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {p1, v0}, Lj0/J;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->d0()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 3

    iput p1, p0, Landroidx/preference/z;->mLeft:I

    iput p2, p0, Landroidx/preference/z;->mTop:I

    iput p3, p0, Landroidx/preference/z;->mRight:I

    iput p4, p0, Landroidx/preference/z;->mBottom:I

    iget-object v0, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, Landroidx/preference/z;->mLeft:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget p2, p0, Landroidx/preference/z;->mRight:I

    if-nez p2, :cond_0

    iget p2, p0, Landroidx/preference/z;->mTop:I

    if-nez p2, :cond_0

    iget p2, p0, Landroidx/preference/z;->mBottom:I

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Landroidx/recyclerview/widget/RecyclerView;->m1:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0704d0

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView;->w1:I

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semSetScrollBarTopPadding"

    const-class v2, Landroid/view/View;

    invoke-static {v2, v1, v0}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView;->w1:I

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object p4

    const-string v0, "semSetScrollBarBottomPadding"

    invoke-static {v2, v0, p4}, Li3/x;->J(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p4, p2}, Li3/x;->j0(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    iget-object p1, p0, Landroidx/preference/z;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget p2, p0, Landroidx/preference/z;->mLeft:I

    if-gtz p2, :cond_4

    iget p0, p0, Landroidx/preference/z;->mRight:I

    if-lez p0, :cond_5

    :cond_4
    const/high16 p3, 0x2000000

    :cond_5
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollBarStyle(I)V

    :cond_6
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    iget-object v1, v0, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    if-eq p1, v1, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->p()V

    :cond_0
    iput-object p1, v0, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/z;->onUnbindPreferences()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/z;->mHavePrefs:Z

    iget-boolean v0, p0, Landroidx/preference/z;->mInitDone:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/preference/z;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroidx/preference/z;->mPreferenceManager:Landroidx/preference/F;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/F;->c(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->E(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Preference object with key "

    const-string v0, " is not a PreferenceScreen"

    invoke-static {p1, p2, v0}, LB/f;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/z;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This should be called after super.onCreate."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
