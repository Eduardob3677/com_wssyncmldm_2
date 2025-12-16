.class public final synthetic Lcom/idm/fotaagent/enabler/fumo/executor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->d:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->d:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    check-cast p0, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;->b(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutorFinishAndExecute;Lcom/idm/fotaagent/database/room/data/repository/DmNotificationRepository;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/fumo/executor/a;->d:Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;

    invoke-static {p0, v0, p1}, Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;->a(Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor;Ljava/lang/String;Lcom/idm/fotaagent/enabler/fumo/executor/IDMFumoExecutor$Updater;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
