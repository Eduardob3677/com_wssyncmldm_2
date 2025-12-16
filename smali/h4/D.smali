.class public final Lh4/D;
.super Lh4/N;
.source "SourceFile"


# instance fields
.field public final a:Lh4/z;


# direct methods
.method public constructor <init>(Lo3/i;)V
    .locals 1

    const-string v0, "kotlinBuiltIns"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lo3/i;->o()Lh4/z;

    move-result-object p1

    const-string v0, "kotlinBuiltIns.nullableAnyType"

    invoke-static {v0, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lh4/D;->a:Lh4/z;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final b()Lh4/v;
    .locals 0

    iget-object p0, p0, Lh4/D;->a:Lh4/z;

    return-object p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final d(Li4/f;)Lh4/N;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {v0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
