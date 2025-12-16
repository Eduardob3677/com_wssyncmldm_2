.class public final synthetic LC2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LC2/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, LC2/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/fotaagent/common/FotaTelephonyManager;->b()Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/idm/fotaagent/enabler/feature/Operator;->a()Lcom/idm/fotaagent/enabler/feature/Operator;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/idm/fotaagent/restapi/exception/XmlParseException;

    invoke-direct {p0}, Lcom/idm/fotaagent/restapi/exception/XmlParseException;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
