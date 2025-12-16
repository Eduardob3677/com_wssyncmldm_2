.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;JLjava/lang/String;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->c:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->e:J

    iput-object p5, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->f:Ljava/lang/String;

    iput-wide p6, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->g:J

    iput-wide p8, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->h:J

    iput-wide p10, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-wide v7, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->h:J

    iget-wide v9, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->i:J

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->c:Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->e:J

    iget-object v4, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->f:Ljava/lang/String;

    iget-wide v5, p0, Lcom/idm/fotaagent/database/room/data/repository/g;->g:J

    invoke-static/range {v0 .. v10}, Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;->b(Lcom/idm/fotaagent/database/room/data/repository/InstallParamRepository;Ljava/lang/String;JLjava/lang/String;JJJ)V

    return-void
.end method
