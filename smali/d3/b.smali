.class public abstract Ld3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic i:I


# instance fields
.field public transient c:Li3/b;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Class;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/b;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld3/b;->e:Ljava/lang/Class;

    iput-object p3, p0, Ld3/b;->f:Ljava/lang/String;

    iput-object p4, p0, Ld3/b;->g:Ljava/lang/String;

    iput-boolean p5, p0, Ld3/b;->h:Z

    return-void
.end method


# virtual methods
.method public c()Li3/b;
    .locals 1

    iget-object v0, p0, Ld3/b;->c:Li3/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld3/b;->g()Li3/b;

    move-result-object v0

    iput-object v0, p0, Ld3/b;->c:Li3/b;

    :cond_0
    return-object v0
.end method

.method public abstract g()Li3/b;
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld3/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final varargs i([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld3/b;->k()Li3/b;

    move-result-object p0

    invoke-interface {p0, p1}, Li3/b;->i([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j()Li3/e;
    .locals 2

    iget-object v0, p0, Ld3/b;->e:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Ld3/b;->h:Z

    if-eqz p0, :cond_1

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ld3/r;->c(Ljava/lang/Class;Ljava/lang/String;)Li3/e;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ld3/q;->a:Ld3/r;

    invoke-virtual {p0, v0}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public abstract k()Li3/b;
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld3/b;->g:Ljava/lang/String;

    return-object p0
.end method
