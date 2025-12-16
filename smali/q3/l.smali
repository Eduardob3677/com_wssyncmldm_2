.class public final Lq3/l;
.super Lu3/E;
.source "SourceFile"


# instance fields
.field public final synthetic i:I


# direct methods
.method public constructor <init>(Lr3/x;LQ3/c;I)V
    .locals 0

    iput p3, p0, Lq3/l;->i:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lu3/E;-><init>(Lr3/x;LQ3/c;)V

    return-void

    :pswitch_0
    const-string p3, "module"

    invoke-static {p3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "fqName"

    invoke-static {p3, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lu3/E;-><init>(Lr3/x;LQ3/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic q0()La4/o;
    .locals 0

    iget p0, p0, Lq3/l;->i:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, La4/n;->b:La4/n;

    return-object p0

    :pswitch_0
    sget-object p0, La4/n;->b:La4/n;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
