.class public abstract Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository;
.super Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$OneShot;,
        Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;->get(Landroid/content/Context;)Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;-><init>(Lcom/idm/fotaagent/database/room/data/repository/FotaRoomDatabase;Ljava/lang/String;)V

    return-void
.end method
