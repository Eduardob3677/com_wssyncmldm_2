.class public final Lo3/j;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lo3/k;


# direct methods
.method public synthetic constructor <init>(Lo3/k;I)V
    .locals 0

    iput p2, p0, Lo3/j;->d:I

    iput-object p1, p0, Lo3/j;->e:Lo3/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo3/j;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lo3/n;->j:LQ3/c;

    iget-object p0, p0, Lo3/j;->e:Lo3/k;

    iget-object p0, p0, Lo3/k;->c:LQ3/f;

    invoke-virtual {v0, p0}, LQ3/c;->c(LQ3/f;)LQ3/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lo3/n;->j:LQ3/c;

    iget-object p0, p0, Lo3/j;->e:Lo3/k;

    iget-object p0, p0, Lo3/k;->d:LQ3/f;

    invoke-virtual {v0, p0}, LQ3/c;->c(LQ3/f;)LQ3/c;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
