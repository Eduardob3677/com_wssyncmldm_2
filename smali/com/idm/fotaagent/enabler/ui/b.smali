.class public final synthetic Lcom/idm/fotaagent/enabler/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->k(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->i(Ljava/util/Map$Entry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
