.class public abstract LR3/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements LR3/A;


# instance fields
.field public c:LR3/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LR3/e;->c:LR3/z;

    iput-object v0, p0, LR3/k;->c:LR3/e;

    return-void
.end method


# virtual methods
.method public abstract c()LR3/b;
.end method

.method public abstract d(LR3/f;LR3/i;)LR3/k;
.end method

.method public abstract e(LR3/q;)LR3/k;
.end method
