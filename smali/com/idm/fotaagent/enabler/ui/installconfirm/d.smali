.class public final synthetic Lcom/idm/fotaagent/enabler/ui/installconfirm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/installconfirm/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->c(Landroid/telephony/SubscriptionManager;)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/os/BatteryManager;

    invoke-static {p1}, Lcom/idm/fotaagent/utils/battery/BatteryChecker;->a(Landroid/os/BatteryManager;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;

    invoke-interface {p1}, Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag;->property()Lcom/idm/fotaagent/receiver/dynamic/ReceiverToBeSpecifiedFlag$Property;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;

    invoke-virtual {p1}, Lcom/idm/fotaagent/enabler/ui/DescriptionContent;->existsSummaryDescription()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForMainDescription;->a(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/whatsnew/AbstractClickableSpan$ForAppUpdateInformation;->a(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/idm/service/actioninfo/IDMActionInfo;

    invoke-virtual {p1}, Lcom/idm/service/actioninfo/IDMActionInfo;->idmGetFumoStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
