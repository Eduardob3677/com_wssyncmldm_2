.class public final Lo/a;
.super Lcom/google/android/gms/internal/firebase-auth-api/X;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo/a;->e:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/X;-><init>()V

    iput-object p2, p0, Lo/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    invoke-virtual {p0}, Lo/c;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0}, Lo/k;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(II)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    iget-object p0, p0, Lo/c;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    iget-object p0, p0, Lo/k;->d:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    iget p0, p0, Lo/c;->e:I

    return p0

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    iget p0, p0, Lo/k;->e:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    invoke-virtual {p0, p1}, Lo/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0, p1}, Lo/k;->e(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    invoke-virtual {p0, p1}, Lo/c;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0, p1}, Lo/k;->g(Ljava/lang/Object;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    invoke-virtual {p0, p1}, Lo/c;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0, p1, p2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(I)V
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/c;

    invoke-virtual {p0, p1}, Lo/c;->p(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    invoke-virtual {p0, p1}, Lo/k;->i(I)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo/a;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lo/a;->f:Ljava/lang/Object;

    check-cast p0, Lo/b;

    iget-object p0, p0, Lo/k;->d:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
