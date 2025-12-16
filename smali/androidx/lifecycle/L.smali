.class public final Landroidx/lifecycle/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/w;


# static fields
.field public static final j:Landroidx/lifecycle/L;


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Landroid/os/Handler;

.field public final h:Landroidx/lifecycle/y;

.field public final i:LD1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/L;

    invoke-direct {v0}, Landroidx/lifecycle/L;-><init>()V

    sput-object v0, Landroidx/lifecycle/L;->j:Landroidx/lifecycle/L;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/L;->e:Z

    iput-boolean v0, p0, Landroidx/lifecycle/L;->f:Z

    new-instance v0, Landroidx/lifecycle/y;

    invoke-direct {v0, p0}, Landroidx/lifecycle/y;-><init>(Landroidx/lifecycle/w;)V

    iput-object v0, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    new-instance v0, LD1/b;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, LD1/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/L;->i:LD1/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/L;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/L;->d:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/L;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    sget-object v1, Landroidx/lifecycle/p;->ON_RESUME:Landroidx/lifecycle/p;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/y;->e(Landroidx/lifecycle/p;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/L;->e:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/L;->g:Landroid/os/Handler;

    invoke-static {v0}, Ld3/i;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/L;->i:LD1/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/r;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/L;->h:Landroidx/lifecycle/y;

    return-object p0
.end method
