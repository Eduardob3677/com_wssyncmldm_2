.class public abstract Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForNothing;,
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForGlobal;,
        Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater$ForCHN;
    }
.end annotation


# static fields
.field private static final NAME_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"


# instance fields
.field public final context:Landroid/content/Context;

.field public final installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->context:Landroid/content/Context;

    new-instance v0, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    invoke-direct {v0, p1}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->installParamRepository:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    return-void
.end method


# virtual methods
.method public abstract getContentValues()Landroid/content/ContentValues;
.end method

.method public informAppUpdateCenterOfTargetIfRequired()V
    .locals 3

    invoke-virtual {p0}, Lcom/idm/fotaagent/enabler/ui/appfota/AppFotaUpdater;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LC2/c;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0}, LC2/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract setContentValues(Landroid/content/ContentValues;)V
.end method
