.class public final Lb4/a;
.super LK3/c;
.source "SourceFile"

# interfaces
.implements Lb4/d;


# instance fields
.field public final synthetic d:I

.field public final e:LQ3/f;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr3/b;Lh4/v;LQ3/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb4/a;->d:I

    const-string v0, "receiverType"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, LK3/c;-><init>(Lh4/v;)V

    iput-object p1, p0, Lb4/a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lb4/a;->e:LQ3/f;

    return-void
.end method

.method public constructor <init>(Lr3/e;Lh4/v;LQ3/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb4/a;->d:I

    const-string v0, "classDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "receiverType"

    invoke-static {v0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, LK3/c;-><init>(Lh4/v;)V

    iput-object p1, p0, Lb4/a;->f:Ljava/lang/Object;

    iput-object p3, p0, Lb4/a;->e:LQ3/f;

    return-void
.end method


# virtual methods
.method public final O0()LQ3/f;
    .locals 1

    iget v0, p0, Lb4/a;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lb4/a;->e:LQ3/f;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lb4/a;->e:LQ3/f;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lb4/a;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cxt { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb4/a;->f:Ljava/lang/Object;

    check-cast p0, Lr3/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LK3/c;->e()Lh4/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ctx { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb4/a;->f:Ljava/lang/Object;

    check-cast p0, Lr3/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
