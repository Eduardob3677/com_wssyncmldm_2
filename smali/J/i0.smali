.class public abstract LJ/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ/q0;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LJ/q0;

    invoke-direct {v0}, LJ/q0;-><init>()V

    invoke-direct {p0, v0}, LJ/i0;-><init>(LJ/q0;)V

    return-void
.end method

.method public constructor <init>(LJ/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/i0;->a:LJ/q0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public abstract b()LJ/q0;
.end method

.method public abstract c(LB/c;)V
.end method

.method public abstract d(LB/c;)V
.end method

.method public abstract e(LB/c;)V
.end method

.method public abstract f(LB/c;)V
.end method
