.class public final LJ/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ/r0;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ/r0;

    new-instance v1, Ls2/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, LJ/z;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LJ/z;-><init>(Landroid/view/View;)V

    iput-object p1, v2, LJ/z;->d:Landroid/view/WindowInsetsController;

    iput-object v2, v1, Ls2/c;->c:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, LJ/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, LJ/s0;->a:LJ/r0;

    return-void
.end method
