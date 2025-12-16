.class public Lcom/idm/tool/sharedpreference/IDMSharedPreference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGFILE_SESSIONID_KEY:Ljava/lang/String; = "LogFileSessionID"

.field private static final SDK_SHARED_PREF:Ljava/lang/String; = "PrefSDK"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->context:Landroid/content/Context;

    return-void
.end method

.method private idmGetSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private idmSetSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getLogFileSessionID()Ljava/lang/String;
    .locals 3

    const-string v0, "LogFileSessionID"

    const-string v1, ""

    const-string v2, "PrefSDK"

    invoke-direct {p0, v2, v0, v1}, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->idmGetSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLogFileSessionID(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PrefSDK"

    const-string v1, "LogFileSessionID"

    invoke-direct {p0, v0, v1, p1}, Lcom/idm/tool/sharedpreference/IDMSharedPreference;->idmSetSharedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
