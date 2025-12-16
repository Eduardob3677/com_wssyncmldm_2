.class public final synthetic Lu2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;I)V
    .locals 0

    iput p2, p0, Lu2/a;->c:I

    iput-object p1, p0, Lu2/a;->d:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lu2/a;->c:I

    iget-object p0, p0, Lu2/a;->d:Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/idm/fotaagent/analytics/samsunganalytics/SALogging;->b(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
