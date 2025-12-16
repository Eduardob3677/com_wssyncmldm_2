.class public final Landroidx/lifecycle/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/G;


# instance fields
.field public final a:Landroidx/lifecycle/C;

.field public final b:Landroidx/lifecycle/G;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/C;Landroidx/lifecycle/X;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/D;->c:I

    iput-object p1, p0, Landroidx/lifecycle/D;->a:Landroidx/lifecycle/C;

    iput-object p2, p0, Landroidx/lifecycle/D;->b:Landroidx/lifecycle/G;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/D;->c:I

    iget-object v1, p0, Landroidx/lifecycle/D;->a:Landroidx/lifecycle/C;

    iget v1, v1, Landroidx/lifecycle/C;->g:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Landroidx/lifecycle/D;->c:I

    iget-object p0, p0, Landroidx/lifecycle/D;->b:Landroidx/lifecycle/G;

    invoke-interface {p0, p1}, Landroidx/lifecycle/G;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
