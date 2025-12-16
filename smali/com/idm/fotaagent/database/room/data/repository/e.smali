.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;Ljava/lang/String;JI)V
    .locals 0

    iput p5, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->f:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;

    iput-object p2, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->d:Ljava/lang/String;

    iget-wide v1, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->e:J

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->f:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-static {p0, v0, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;Ljava/lang/String;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->d:Ljava/lang/String;

    iget-wide v1, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->e:J

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/e;->f:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;

    invoke-static {p0, v0, v1, v2}, Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/GeneralRepository;Ljava/lang/String;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
