.class public final synthetic Landroidx/lifecycle/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/G;


# instance fields
.field public final synthetic a:Lc3/b;


# direct methods
.method public constructor <init>(LE3/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/X;->a:Lc3/b;

    return-void
.end method


# virtual methods
.method public final synthetic c(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/X;->a:Lc3/b;

    invoke-interface {p0, p1}, Lc3/b;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/G;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/lifecycle/X;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/X;

    iget-object p1, p1, Landroidx/lifecycle/X;->a:Lc3/b;

    iget-object p0, p0, Landroidx/lifecycle/X;->a:Lc3/b;

    invoke-static {p0, p1}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/X;->a:Lc3/b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
