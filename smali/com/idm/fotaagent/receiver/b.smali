.class public final synthetic Lcom/idm/fotaagent/receiver/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/receiver/b;->a:I

    iput-object p2, p0, Lcom/idm/fotaagent/receiver/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/receiver/b;->a:I

    iget-object p0, p0, Lcom/idm/fotaagent/receiver/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;

    invoke-static {p0}, Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;->b(Lcom/idm/fotaagent/utils/battery/BatteryChecker$ForNonAB;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
