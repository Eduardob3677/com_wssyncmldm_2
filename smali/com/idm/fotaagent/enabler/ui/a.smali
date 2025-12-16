.class public final synthetic Lcom/idm/fotaagent/enabler/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/idm/fotaagent/enabler/ui/a;->a:I

    iput-object p2, p0, Lcom/idm/fotaagent/enabler/ui/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/idm/fotaagent/enabler/ui/a;->a:I

    iget-object p0, p0, Lcom/idm/fotaagent/enabler/ui/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/IDMUIManager;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Landroid/app/Activity;

    check-cast p1, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper;->a(Landroid/app/Activity;Lcom/idm/fotaagent/enabler/ui/ActivityScreenIdMapper$ScreenId;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
