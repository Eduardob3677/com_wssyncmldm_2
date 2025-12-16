.class public Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;
.super Lcom/wssyncmldm/databinding/ProfileEditBinding;
.source "SourceFile"

# interfaces
.implements Lcom/wssyncmldm/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/q;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private clientAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

.field private clientIdandroidTextAttrChanged:Landroidx/databinding/h;

.field private clientPwdandroidTextAttrChanged:Landroidx/databinding/h;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/ScrollView;

.field private profileNameandroidTextAttrChanged:Landroidx/databinding/h;

.field private serverAddressandroidTextAttrChanged:Landroidx/databinding/h;

.field private serverAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

.field private serverIdandroidTextAttrChanged:Landroidx/databinding/h;

.field private serverPwdandroidTextAttrChanged:Landroidx/databinding/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a000b

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/f;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/v;->mapBindings(Landroidx/databinding/f;Landroid/view/View;ILandroidx/databinding/q;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;-><init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/f;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v14, p0

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    const/4 v15, 0x1

    aget-object v0, p3, v15

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/wssyncmldm/databinding/ProfileEditBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$1;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$1;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$2;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$2;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientIdandroidTextAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$3;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$3;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientPwdandroidTextAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$4;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$4;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->profileNameandroidTextAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$5;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverAddressandroidTextAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$6;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$6;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$7;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$7;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverIdandroidTextAttrChanged:Landroidx/databinding/h;

    new-instance v0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$8;

    invoke-direct {v0, v14}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl$8;-><init>(Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverPwdandroidTextAttrChanged:Landroidx/databinding/h;

    const-wide/16 v0, -0x1

    iput-wide v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientAuth:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mboundView0:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->profileName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAuth:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverId:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroidx/databinding/v;->setRootTag(Landroid/view/View;)V

    new-instance v0, Lcom/wssyncmldm/generated/callback/OnClickListener;

    invoke-direct {v0, v14, v15}, Lcom/wssyncmldm/generated/callback/OnClickListener;-><init>(Lcom/wssyncmldm/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewModelClientAuthTypeIndex(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelClientId(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelClientPwd(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelProfileName(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelServerAuthTypeIndex(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelServerId(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelServerPwd(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewModelServerUrl(Landroidx/lifecycle/F;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/F;",
            "I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->saveProfileToDBIfPossible()V

    :cond_0
    return-void
.end method

.method public executeBindings()V
    .locals 36

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    const-wide/16 v6, 0x3ff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/16 v11, 0x340

    const-wide/16 v13, 0x320

    const-wide/16 v15, 0x310

    const-wide/16 v17, 0x308

    const-wide/16 v19, 0x304

    const-wide/16 v21, 0x302

    const-wide/16 v23, 0x301

    const/4 v7, 0x0

    if-eqz v6, :cond_13

    and-long v27, v2, v23

    cmp-long v6, v27, v4

    if-eqz v6, :cond_1

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverUrl:Landroidx/lifecycle/F;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v27, v2, v21

    cmp-long v27, v27, v4

    if-eqz v27, :cond_3

    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->profileName:Landroidx/lifecycle/F;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v7}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v29, v2, v19

    cmp-long v8, v29, v4

    if-eqz v8, :cond_5

    if-eqz v0, :cond_4

    iget-object v8, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverPwd:Landroidx/lifecycle/F;

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x2

    invoke-virtual {v1, v9, v8}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v9, v2, v17

    cmp-long v9, v9, v4

    if-eqz v9, :cond_7

    if-eqz v0, :cond_6

    iget-object v9, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverId:Landroidx/lifecycle/F;

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x3

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    and-long v31, v2, v15

    cmp-long v10, v31, v4

    if-eqz v10, :cond_9

    if-eqz v0, :cond_8

    iget-object v10, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientPwd:Landroidx/lifecycle/F;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    const/4 v15, 0x4

    invoke-virtual {v1, v15, v10}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    and-long v15, v2, v13

    cmp-long v15, v15, v4

    if-eqz v15, :cond_c

    if-eqz v0, :cond_a

    iget-object v15, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->serverAuthTypeIndex:Landroidx/lifecycle/F;

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    :goto_a
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v15}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    :goto_b
    invoke-static {v13}, Landroidx/databinding/v;->safeUnbox(Ljava/lang/Integer;)I

    move-result v13

    goto :goto_c

    :cond_c
    const/4 v13, 0x0

    :goto_c
    and-long v14, v2, v11

    cmp-long v14, v14, v4

    if-eqz v14, :cond_e

    if-eqz v0, :cond_d

    iget-object v14, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientId:Landroidx/lifecycle/F;

    goto :goto_d

    :cond_d
    const/4 v14, 0x0

    :goto_d
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v14}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    :goto_e
    const-wide/16 v15, 0x380

    goto :goto_f

    :cond_e
    const/4 v14, 0x0

    goto :goto_e

    :goto_f
    and-long v33, v2, v15

    cmp-long v15, v33, v4

    if-eqz v15, :cond_11

    if-eqz v0, :cond_f

    iget-object v15, v0, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->clientAuthTypeIndex:Landroidx/lifecycle/F;

    goto :goto_10

    :cond_f
    const/4 v15, 0x0

    :goto_10
    const/4 v11, 0x7

    invoke-virtual {v1, v11, v15}, Landroidx/databinding/v;->updateLiveDataRegistration(ILandroidx/lifecycle/C;)Z

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Landroidx/lifecycle/C;->d()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    goto :goto_11

    :cond_10
    const/4 v11, 0x0

    :goto_11
    invoke-static {v11}, Landroidx/databinding/v;->safeUnbox(Ljava/lang/Integer;)I

    move-result v11

    :goto_12
    const-wide/16 v15, 0x300

    goto :goto_13

    :cond_11
    const/4 v11, 0x0

    goto :goto_12

    :goto_13
    and-long v25, v2, v15

    cmp-long v12, v25, v4

    if-eqz v12, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;->getAuthTypes()Ljava/util/List;

    move-result-object v0

    move/from16 v35, v11

    move-object v11, v0

    move-object v0, v7

    move/from16 v7, v35

    goto :goto_14

    :cond_12
    move-object v0, v7

    move v7, v11

    const/4 v11, 0x0

    goto :goto_14

    :cond_13
    const-wide/16 v15, 0x300

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_14
    and-long/2addr v15, v2

    cmp-long v12, v15, v4

    if-eqz v12, :cond_14

    iget-object v12, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientAuth:Landroid/widget/Spinner;

    invoke-static {v12, v11}, LZ0/j;->c0(Landroid/widget/Spinner;Ljava/util/List;)V

    iget-object v12, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAuth:Landroid/widget/Spinner;

    invoke-static {v12, v11}, LZ0/j;->c0(Landroid/widget/Spinner;Ljava/util/List;)V

    :cond_14
    const-wide/16 v11, 0x380

    and-long/2addr v11, v2

    cmp-long v11, v11, v4

    if-eqz v11, :cond_15

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientAuth:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v12

    if-eq v12, v7, :cond_15

    invoke-virtual {v11, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_15
    const-wide/16 v11, 0x200

    and-long/2addr v11, v2

    cmp-long v7, v11, v4

    if-eqz v7, :cond_16

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientAuth:Landroid/widget/Spinner;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    const/4 v12, 0x0

    invoke-static {v7, v12, v11}, Lf1/a;->k0(Landroid/widget/Spinner;LT/a;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientId:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientIdandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientPwd:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->clientPwdandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->profileName:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->profileNameandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->saveBtn:Landroid/widget/Button;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAddress:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverAddressandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAuth:Landroid/widget/Spinner;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverAuthandroidSelectedItemPositionAttrChanged:Landroidx/databinding/h;

    const/4 v12, 0x0

    invoke-static {v7, v12, v11}, Lf1/a;->k0(Landroid/widget/Spinner;LT/a;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverId:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverIdandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverPwd:Landroid/widget/EditText;

    iget-object v11, v1, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->serverPwdandroidTextAttrChanged:Landroidx/databinding/h;

    invoke-static {v7, v11}, Li3/x;->d1(Landroid/widget/EditText;Landroidx/databinding/h;)V

    :cond_16
    const-wide/16 v11, 0x340

    and-long/2addr v11, v2

    cmp-long v7, v11, v4

    if-eqz v7, :cond_17

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientId:Landroid/widget/EditText;

    invoke-static {v7, v14}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_17
    const-wide/16 v11, 0x310

    and-long/2addr v11, v2

    cmp-long v7, v11, v4

    if-eqz v7, :cond_18

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->clientPwd:Landroid/widget/EditText;

    invoke-static {v7, v10}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_18
    and-long v10, v2, v21

    cmp-long v7, v10, v4

    if-eqz v7, :cond_19

    iget-object v7, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->profileName:Landroid/widget/EditText;

    invoke-static {v7, v0}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_19
    and-long v10, v2, v23

    cmp-long v0, v10, v4

    if-eqz v0, :cond_1a

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAddress:Landroid/widget/EditText;

    invoke-static {v0, v6}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1a
    const-wide/16 v6, 0x320

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverAuth:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v13, :cond_1b

    invoke-virtual {v0, v13}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_1b
    and-long v6, v2, v17

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverId:Landroid/widget/EditText;

    invoke-static {v0, v9}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1c
    and-long v2, v2, v19

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/wssyncmldm/databinding/ProfileEditBinding;->serverPwd:Landroid/widget/EditText;

    invoke-static {v0, v8}, Li3/x;->c1(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x200

    :try_start_0
    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/v;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelClientAuthTypeIndex(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelClientId(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelServerAuthTypeIndex(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelClientPwd(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelServerId(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelServerPwd(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelProfileName(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p2, Landroidx/lifecycle/F;

    invoke-direct {p0, p2, p3}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->onChangeViewModelServerUrl(Landroidx/lifecycle/F;I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    invoke-virtual {p0, p2}, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->setViewModel(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setViewModel(Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/wssyncmldm/databinding/ProfileEditBinding;->mViewModel:Lcom/idm/fotaagent/enabler/ui/admin/profile/AdminProfileViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/wssyncmldm/databinding/ProfileEditBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroidx/databinding/a;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/v;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
