.class public final LX3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/a;


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LX3/b;->c:Z

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    check-cast p1, Lr3/c;

    iget-boolean p0, p0, LX3/b;->c:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr3/c;->a()Lr3/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lr3/c;->p()Ljava/util/Collection;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, LR2/u;->c:LR2/u;

    :cond_3
    return-object v0
.end method
