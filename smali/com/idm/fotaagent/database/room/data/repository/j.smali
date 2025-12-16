.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->c:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->c:Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;

    iget-object v3, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/j;->e:Ljava/lang/String;

    invoke-static {v2, v3, p0, v0, v1}, Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/RegisteredDeviceRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
