.class public Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_ENABLE:Ljava/lang/String; = "Enable Device Override"

.field private static final KEY_IMEI:Ljava/lang/String; = "Override IMEI"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "Override Language"

.field private static final KEY_MANUFACTURER:Ljava/lang/String; = "Override Manufacturer"

.field private static final KEY_MEID:Ljava/lang/String; = "Override MEID"

.field private static final PREF_NAME:Ljava/lang/String; = "device_override_prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverrideImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper;->isOverrideEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "device_override_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Override IMEI"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static getOverrideLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper;->isOverrideEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "device_override_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Override Language"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static getOverrideManufacturer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper;->isOverrideEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "device_override_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Override Manufacturer"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static getOverrideMeid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/idm/fotaagent/enabler/ui/admin/deviceoverride/DeviceOverrideHelper;->isOverrideEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "device_override_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Override MEID"

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public static isOverrideEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "device_override_prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Enable Device Override"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
