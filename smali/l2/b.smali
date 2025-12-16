.class public final synthetic Ll2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll2/b;->c:I

    iput-object p2, p0, Ll2/b;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll2/b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ll2/c;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll2/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll2/b;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Ll2/b;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x1

    iget v1, p0, Ll2/b;->c:I

    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Ll2/b;->e:Z

    iget-object p0, p0, Ll2/b;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    if-eqz v1, :cond_0

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LJ/O;->c(Landroid/view/View;)LJ/s0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, LJ/s0;->a:LJ/r0;

    iget-object v0, p0, LJ/r0;->d:Ljava/lang/Object;

    check-cast v0, Ls2/c;

    iget-object v0, v0, Ls2/c;->c:Ljava/lang/Object;

    check-cast v0, LJ/z;

    invoke-virtual {v0}, LJ/z;->o0()V

    const/4 v0, 0x0

    iget-object p0, p0, LJ/r0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsetsController;

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsController;->show(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v2}, Lz/b;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Ll2/b;->d:Ljava/lang/Object;

    check-cast v1, Ll2/c;

    iget-boolean p0, p0, Ll2/b;->e:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ll2/c;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Ll2/c;->a:LW1/g;

    invoke-virtual {v3}, LW1/g;->a()V

    iget-object v3, v3, LW1/g;->a:Landroid/content/Context;

    invoke-static {v3}, Le/v;->d(Landroid/content/Context;)Le/v;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v1, Ll2/c;->c:Lm2/b;

    invoke-virtual {v4}, Lm2/b;->b()Lm2/a;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Le/v;->B()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v3, v4, Lm2/a;->b:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    :goto_2
    invoke-virtual {v1, v4}, Ll2/c;->g(Lm2/a;)Lm2/a;

    move-result-object p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_a

    :cond_3
    if-nez p0, :cond_4

    iget-object p0, v1, Ll2/c;->d:Ll2/j;

    invoke-virtual {p0, v4}, Ll2/j;->a(Lm2/a;)Z

    move-result p0

    if-eqz p0, :cond_d

    :cond_4
    invoke-virtual {v1, v4}, Ll2/c;->b(Lm2/a;)Lm2/a;

    move-result-object p0
    :try_end_3
    .catch Ll2/e; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    monitor-enter v2

    :try_start_4
    iget-object v3, v1, Ll2/c;->a:LW1/g;

    invoke-virtual {v3}, LW1/g;->a()V

    iget-object v3, v3, LW1/g;->a:Landroid/content/Context;

    invoke-static {v3}, Le/v;->d(Landroid/content/Context;)Le/v;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v6, v1, Ll2/c;->c:Lm2/b;

    invoke-virtual {v6, p0}, Lm2/b;->a(Lm2/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Le/v;->B()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_5
    :goto_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-enter v1

    :try_start_7
    iget-object v2, v1, Ll2/c;->k:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v4, Lm2/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Ll2/c;->k:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LB/f;->F(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_7
    :goto_5
    monitor-exit v1

    const/4 v2, 0x4

    iget v3, p0, Lm2/a;->b:I

    if-ne v3, v2, :cond_8

    iget-object v2, p0, Lm2/a;->a:Ljava/lang/String;

    monitor-enter v1

    :try_start_8
    iput-object v2, v1, Ll2/c;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v1

    goto :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_8
    :goto_6
    iget v2, p0, Lm2/a;->b:I

    if-ne v2, v5, :cond_9

    new-instance p0, Ll2/e;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1, p0}, Ll2/c;->h(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_9
    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    if-ne v2, v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v1, p0}, Ll2/c;->i(Lm2/a;)V

    goto :goto_b

    :cond_b
    :goto_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ll2/c;->h(Ljava/lang/Exception;)V

    goto :goto_b

    :goto_8
    monitor-exit v1

    throw p0

    :catchall_4
    move-exception p0

    if-eqz v3, :cond_c

    :try_start_9
    invoke-virtual {v3}, Le/v;->B()V

    :cond_c
    throw p0

    :goto_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p0

    :goto_a
    invoke-virtual {v1, p0}, Ll2/c;->h(Ljava/lang/Exception;)V

    :cond_d
    :goto_b
    return-void

    :catchall_5
    move-exception p0

    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Le/v;->B()V

    :cond_e
    throw p0

    :goto_c
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Ll2/b;->d:Ljava/lang/Object;

    check-cast v0, Ll2/c;

    iget-boolean p0, p0, Ll2/b;->e:Z

    invoke-virtual {v0, p0}, Ll2/c;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
