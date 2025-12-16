.class public final LW2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU2/a;


# static fields
.field public static final c:LW2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW2/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW2/b;->c:LW2/b;

    return-void
.end method


# virtual methods
.method public final a()LU2/d;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This continuation is already complete"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This continuation is already complete"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "This continuation is already complete"

    return-object p0
.end method
