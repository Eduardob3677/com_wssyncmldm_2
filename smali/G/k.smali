.class public final LG/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, LG/j;

    iget-object v1, p0, LG/k;->a:Ljava/lang/String;

    iget p0, p0, LG/k;->b:I

    invoke-direct {v0, p1, v1, p0}, LG/j;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
