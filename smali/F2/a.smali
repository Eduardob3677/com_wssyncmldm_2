.class public final synthetic LF2/a;
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

    iput p1, p0, LF2/a;->a:I

    iput-object p2, p0, LF2/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, LF2/a;->a:I

    iget-object p0, p0, LF2/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;->a(Lcom/idm/fotaagent/analytics/diagmon/DiagMon$Reporter;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->b(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/idm/fotaagent/tool/ddf/DDFManager;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/idm/fotaagent/tool/ddf/DDFManager;->d(Lcom/idm/fotaagent/tool/ddf/DDFManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
