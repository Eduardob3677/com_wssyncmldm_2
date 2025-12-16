.class public final enum Lo3/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Lo3/q;


# instance fields
.field public final c:LQ3/b;

.field public final d:LQ3/f;

.field public final e:LQ3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lo3/q;

    const-string v1, "kotlin/UByte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, LQ3/b;->f(Ljava/lang/String;Z)LQ3/b;

    move-result-object v1

    const-string v3, "UBYTE"

    invoke-direct {v0, v3, v2, v1}, Lo3/q;-><init>(Ljava/lang/String;ILQ3/b;)V

    new-instance v1, Lo3/q;

    const-string v3, "kotlin/UShort"

    invoke-static {v3, v2}, LQ3/b;->f(Ljava/lang/String;Z)LQ3/b;

    move-result-object v3

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lo3/q;-><init>(Ljava/lang/String;ILQ3/b;)V

    new-instance v3, Lo3/q;

    const-string v4, "kotlin/UInt"

    invoke-static {v4, v2}, LQ3/b;->f(Ljava/lang/String;Z)LQ3/b;

    move-result-object v4

    const-string v5, "UINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lo3/q;-><init>(Ljava/lang/String;ILQ3/b;)V

    new-instance v4, Lo3/q;

    const-string v5, "kotlin/ULong"

    invoke-static {v5, v2}, LQ3/b;->f(Ljava/lang/String;Z)LQ3/b;

    move-result-object v2

    const-string v5, "ULONG"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lo3/q;-><init>(Ljava/lang/String;ILQ3/b;)V

    filled-new-array {v0, v1, v3, v4}, [Lo3/q;

    move-result-object v0

    sput-object v0, Lo3/q;->f:[Lo3/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILQ3/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lo3/q;->c:LQ3/b;

    invoke-virtual {p3}, LQ3/b;->j()LQ3/f;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p2, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lo3/q;->d:LQ3/f;

    new-instance p2, LQ3/b;

    invoke-virtual {p3}, LQ3/b;->h()LQ3/c;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, LQ3/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p1

    invoke-direct {p2, p3, p1}, LQ3/b;-><init>(LQ3/c;LQ3/f;)V

    iput-object p2, p0, Lo3/q;->e:LQ3/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo3/q;
    .locals 1

    const-class v0, Lo3/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo3/q;

    return-object p0
.end method

.method public static values()[Lo3/q;
    .locals 1

    sget-object v0, Lo3/q;->f:[Lo3/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo3/q;

    return-object v0
.end method
