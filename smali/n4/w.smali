.class public abstract Ln4/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln4/e;


# instance fields
.field public final a:Lc3/b;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc3/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln4/w;->a:Lc3/b;

    const-string p2, "must return "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln4/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lr3/s;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LZ0/j;->Q(Ln4/e;Lr3/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln4/w;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Lr3/s;)Z
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lr3/b;->n()Lh4/v;

    move-result-object v0

    iget-object p0, p0, Ln4/w;->a:Lc3/b;

    invoke-static {p1}, LX3/f;->e(Lr3/j;)Lo3/i;

    move-result-object p1

    invoke-interface {p0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
