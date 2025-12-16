.class public final synthetic Lcom/idm/fotaagent/abupdate/manager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IJLjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/abupdate/manager/c;->c:I

    iput-object p4, p0, Lcom/idm/fotaagent/abupdate/manager/c;->e:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/idm/fotaagent/abupdate/manager/c;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/idm/fotaagent/abupdate/manager/c;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/c;->e:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;

    iget-wide v1, p0, Lcom/idm/fotaagent/abupdate/manager/c;->d:J

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/TimestampRepository;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/abupdate/manager/c;->e:Ljava/lang/Object;

    check-cast v0, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;

    iget-wide v1, p0, Lcom/idm/fotaagent/abupdate/manager/c;->d:J

    invoke-static {v0, v1, v2}, Lcom/idm/fotaagent/abupdate/manager/EnablerManager;->b(Lcom/idm/fotaagent/abupdate/manager/EnablerManager;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
