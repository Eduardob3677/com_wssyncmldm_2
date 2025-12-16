.class public final synthetic LF2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LF2/b;->a:I

    iput-object p2, p0, LF2/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LF2/b;->a:I

    iget-object p0, p0, LF2/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/receiver/SecureBroadcastReceiver;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/idm/core/ddf/DDFNode;

    check-cast p1, Lcom/idm/core/ddf/DDFTag;

    invoke-static {p0, p1}, Lcom/idm/core/ddf/DDFNode;->a(Lcom/idm/core/ddf/DDFNode;Lcom/idm/core/ddf/DDFTag;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->a(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
