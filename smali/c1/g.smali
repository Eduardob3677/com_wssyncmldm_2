.class public final Lc1/g;
.super Lc1/c;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lc1/k;


# direct methods
.method public constructor <init>(Lc1/k;I)V
    .locals 1

    iput-object p1, p0, Lc1/g;->g:Lc1/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc1/c;-><init>(Lc1/k;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final b(LZ0/a;)V
    .locals 0

    iget-object p0, p0, Lc1/g;->g:Lc1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lc1/k;->h:Lc1/b;

    invoke-interface {p0, p1}, Lc1/b;->d(LZ0/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object p0, p0, Lc1/g;->g:Lc1/k;

    iget-object p0, p0, Lc1/k;->h:Lc1/b;

    sget-object v0, LZ0/a;->g:LZ0/a;

    invoke-interface {p0, v0}, Lc1/b;->d(LZ0/a;)V

    const/4 p0, 0x1

    return p0
.end method
