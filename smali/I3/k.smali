.class public final LI3/k;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, LI3/k;->d:I

    iput-object p2, p0, LI3/k;->e:Ljava/lang/String;

    iput-object p3, p0, LI3/k;->f:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LI3/k;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->a:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object v1, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v0, LI3/l;->b:LI3/e;

    sget-object v1, LI3/l;->c:LI3/e;

    filled-new-array {v0, v1}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->c:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object v2, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v1, LI3/l;->b:LI3/e;

    filled-new-array {v1, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_1
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object v2, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v1, LI3/l;->c:LI3/e;

    filled-new-array {v1}, [LI3/e;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v3, LI3/l;->a:LI3/e;

    filled-new-array {v0, v1, v1, v3}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v3}, [LI3/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_2
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object v2, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v1, LI3/l;->c:LI3/e;

    sget-object v3, LI3/l;->a:LI3/e;

    filled-new-array {v0, v0, v1, v3}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v3}, [LI3/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_3
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object v2, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0, v0, v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_4
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object v2, p0, LI3/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v1, LI3/l;->a:LI3/e;

    filled-new-array {v0, v0, v1, v1}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/k;->f:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v1}, [LI3/e;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
