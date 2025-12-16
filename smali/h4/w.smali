.class public final Lh4/w;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/J;


# direct methods
.method public constructor <init>(La4/o;Lh4/G;Lh4/J;Ljava/util/List;Z)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lh4/w;->d:I

    iput-object p3, p0, Lh4/w;->e:Lh4/J;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lh4/G;Lh4/J;Ljava/util/List;Z)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lh4/w;->d:I

    iput-object p2, p0, Lh4/w;->e:Lh4/J;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh4/w;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Li4/f;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/w;->e:Lh4/J;

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, Li4/f;

    const-string v0, "refiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lh4/w;->e:Lh4/J;

    invoke-interface {p0}, Lh4/J;->i()Lr3/g;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
