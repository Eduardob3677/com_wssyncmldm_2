.class public final synthetic LD2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    iput p1, p0, LD2/a;->a:I

    iput-object p2, p0, LD2/a;->b:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LD2/a;->a:I

    iget-object p0, p0, LD2/a;->b:Ljava/io/Serializable;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;->a(Lcom/idm/fotaagent/restapi/registration/state/PollingRegistrationState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/restapi/registration/context/Registration;

    invoke-static {p0}, Lcom/idm/fotaagent/restapi/registration/context/Registration;->a(Lcom/idm/fotaagent/restapi/registration/context/Registration;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
