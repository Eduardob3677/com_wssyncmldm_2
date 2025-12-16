.class public final synthetic Lcom/idm/fotaagent/database/room/data/repository/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;I)V
    .locals 0

    iput p2, p0, Lcom/idm/fotaagent/database/room/data/repository/c;->c:I

    iput-object p1, p0, Lcom/idm/fotaagent/database/room/data/repository/c;->d:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/database/room/data/repository/c;->c:I

    iget-object p0, p0, Lcom/idm/fotaagent/database/room/data/repository/c;->d:Lcom/idm/fotaagent/database/room/data/repository/PropertyRepository$SpecificCategory;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;->b(Lcom/idm/fotaagent/database/room/data/repository/PolicyRepository;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;

    invoke-static {p0}, Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;->a(Lcom/idm/fotaagent/database/room/data/repository/DeviceRegistrationRepository;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
