.class public final synthetic Lcom/idm/fotaagent/enabler/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
