.class public final LI3/j;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LI3/j;->d:I

    iput-object p1, p0, LI3/j;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LI3/j;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LY3/c;->g:LY3/c;

    invoke-virtual {p1, p0}, LI3/o;->b(LY3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_0
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LY3/c;->g:LY3/c;

    invoke-virtual {p1, p0}, LI3/o;->b(LY3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_1
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->a:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_2
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    sget-object v1, LI3/l;->c:LI3/e;

    filled-new-array {v0, v1}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_3
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->c:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_4
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    sget-object v1, LI3/l;->c:LI3/e;

    filled-new-array {v0, v1}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_5
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0, v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_6
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LY3/c;->g:LY3/c;

    invoke-virtual {p1, p0}, LI3/o;->b(LY3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_7
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v0, LI3/l;->a:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_8
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object v0, LI3/l;->a:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_9
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_a
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_b
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_c
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_d
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LY3/c;->g:LY3/c;

    invoke-virtual {p1, p0}, LI3/o;->b(LY3/c;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_e
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_f
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_10
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->c(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_11
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v1

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v1}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_12
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    :pswitch_13
    check-cast p1, LI3/o;

    const-string v0, "$this$function"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, LI3/l;->b:LI3/e;

    filled-new-array {v0, v0}, [LI3/e;

    move-result-object v0

    iget-object p0, p0, LI3/j;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, LI3/o;->a(Ljava/lang/String;[LI3/e;)V

    sget-object p0, LQ2/k;->a:LQ2/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
