.class public final Li2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Li2/a;


# instance fields
.field public a:Lk2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li2/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li2/b;->b:Li2/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Li2/b;->a:Lk2/a;

    invoke-interface {v2}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li2/d;

    invoke-virtual {v2, p1, v0, v1}, Li2/d;->a(Ljava/lang/String;J)Z

    move-result p1

    iget-object p0, p0, Li2/b;->a:Lk2/a;

    invoke-interface {p0}, Lk2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li2/d;

    monitor-enter p0

    :try_start_0
    const-string v2, "fire-global"

    invoke-virtual {p0, v2, v0, v1}, Li2/d;->a(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
