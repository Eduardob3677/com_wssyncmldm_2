.class public final synthetic LW1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LW1/c;->a:I

    iput-object p1, p0, LW1/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LW1/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LW1/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LW1/c;->b:Ljava/lang/Object;

    check-cast v0, Lb2/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LW1/c;->c:Ljava/lang/Object;

    check-cast p0, Lb2/c;

    iget-object v1, p0, Lb2/c;->e:Lb2/f;

    new-instance v2, Lb2/t;

    invoke-direct {v2, p0, v0}, Lb2/t;-><init>(Lb2/c;Lb2/i;)V

    invoke-interface {v1, v2}, Lb2/f;->m(Lb2/t;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Lp2/a;

    iget-object v1, p0, LW1/c;->b:Ljava/lang/Object;

    check-cast v1, LW1/g;

    invoke-virtual {v1}, LW1/g;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, LW1/g;->d:Lb2/i;

    const-class v3, Lh2/a;

    invoke-virtual {v1, v3}, LZ0/j;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh2/a;

    iget-object p0, p0, LW1/c;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lp2/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
