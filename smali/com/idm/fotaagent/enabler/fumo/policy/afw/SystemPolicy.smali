.class public Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JLandroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->lambda$getInstallationOption$0(JLandroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;

    move-result-object p0

    return-object p0
.end method

.method public static getFreezePeriod(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/FreezePeriod;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getInstallEndMinute(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInstallStartMinute(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInstallationOption(Landroid/content/Context;J)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, LD2/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p2}, LD2/c;-><init>(IJ)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->printStackTrace(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getPolicyType(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/fumo/policy/afw/SystemPolicy;->getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LG2/b;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LG2/b;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getSystemUpdatePolicy(Landroid/content/Context;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/app/admin/SystemUpdatePolicy;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_0

    const-string p0, "DevicePolicyManager is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "SystemUpdatePolicy is null"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->E(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInstallationOption$0(JLandroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/app/admin/SystemUpdatePolicy;->semGetInstallationOptionAt(J)Landroid/app/admin/SystemUpdatePolicy$SemInstallationOption;

    move-result-object p0

    return-object p0
.end method
