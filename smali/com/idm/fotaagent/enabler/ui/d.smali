.class public final synthetic Lcom/idm/fotaagent/enabler/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/idm/fotaagent/enabler/ui/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->h(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->b(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->c(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->g(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
