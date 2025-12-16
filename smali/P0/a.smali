.class public final synthetic LP0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:LP0/c;

.field public final synthetic d:LL0/b;

.field public final synthetic e:LE2/a;

.field public final synthetic f:LL0/a;


# direct methods
.method public synthetic constructor <init>(LP0/c;LL0/b;LE2/a;LL0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP0/a;->c:LP0/c;

    iput-object p2, p0, LP0/a;->d:LL0/b;

    iput-object p3, p0, LP0/a;->e:LE2/a;

    iput-object p4, p0, LP0/a;->f:LL0/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, LP0/a;->d:LL0/b;

    iget-object v1, p0, LP0/a;->e:LE2/a;

    iget-object v2, p0, LP0/a;->f:LL0/a;

    iget-object p0, p0, LP0/a;->c:LP0/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LP0/c;->f:Ljava/util/logging/Logger;

    const-string v4, "Transport backend \'"

    :try_start_0
    iget-object v5, p0, LP0/c;->c:LM0/f;

    iget-object v6, v0, LL0/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, LM0/f;->a(Ljava/lang/String;)LM0/g;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object p0, v0, LL0/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not registered"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    check-cast v5, LJ0/c;

    invoke-virtual {v5, v2}, LJ0/c;->a(LL0/a;)LL0/a;

    move-result-object v2

    iget-object v4, p0, LP0/c;->e:LS0/c;

    new-instance v5, LP0/b;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v2, v6}, LP0/b;-><init>(Ljava/lang/Object;LL0/b;LL0/a;I)V

    check-cast v4, LR0/h;

    invoke-virtual {v4, v5}, LR0/h;->m(LS0/b;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void
.end method
