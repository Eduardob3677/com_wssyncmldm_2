.class public final LJ/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls2/c;

.field public final c:LE2/a;

.field public final d:LE2/a;

.field public e:Landroid/view/VelocityTracker;

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls2/c;)V
    .locals 4

    new-instance v0, LE2/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LE2/a;-><init>(I)V

    new-instance v1, LE2/a;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, LE2/a;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, LJ/c;->g:I

    iput v2, p0, LJ/c;->h:I

    iput v2, p0, LJ/c;->i:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    filled-new-array {v2, v3}, [I

    move-result-object v2

    iput-object v2, p0, LJ/c;->j:[I

    iput-object p1, p0, LJ/c;->a:Landroid/content/Context;

    iput-object p2, p0, LJ/c;->b:Ls2/c;

    iput-object v0, p0, LJ/c;->c:LE2/a;

    iput-object v1, p0, LJ/c;->d:LE2/a;

    return-void
.end method
