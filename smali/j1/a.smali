.class public final Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lj1/a;


# instance fields
.field public a:LL0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lj1/a;->a:LL0/c;

    sput-object v0, Lj1/a;->b:Lj1/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)LL0/c;
    .locals 3

    sget-object v0, Lj1/a;->b:Lj1/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lj1/a;->a:LL0/c;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    new-instance v1, LL0/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LL0/c;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lj1/a;->a:LL0/c;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p0, v0, Lj1/a;->a:LL0/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method
