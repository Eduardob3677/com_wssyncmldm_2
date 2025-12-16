.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:I

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->c:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->d:Ljava/lang/String;

    iput p3, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->e:I

    iput-wide p4, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->e:I

    iget-wide v1, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->f:J

    iget-object v3, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->c:Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/f;->d:Ljava/lang/String;

    invoke-static {v3, p0, v0, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;->a(Lcom/idm/fotaagent/database/room/data/repository/HeartbeatRepository$Periodic;Ljava/lang/String;IJ)V

    return-void
.end method
