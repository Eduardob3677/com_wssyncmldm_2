.class final enum Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;
.super Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;-><init>(Ljava/lang/String;IILcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions$1;)V

    return-void
.end method


# virtual methods
.method public skipShowConfirm(Landroid/content/Context;Z)Z
    .locals 0

    sget-object p0, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->WIFI:Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;

    invoke-virtual {p0, p1, p2}, Lcom/idm/fotaagent/database/sqlite/database/settings/AutoDownloadOptions;->skipShowConfirm(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method
