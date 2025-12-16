.class public final enum Lp3/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final e:LZ0/h;

.field public static final enum f:Lp3/e;

.field public static final enum g:Lp3/e;

.field public static final enum h:Lp3/e;

.field public static final enum i:Lp3/e;

.field public static final synthetic j:[Lp3/e;


# instance fields
.field public final c:LQ3/c;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lp3/e;

    sget-object v1, Lo3/n;->j:LQ3/c;

    const-string v2, "Function"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lp3/e;-><init>(Ljava/lang/String;ILQ3/c;Ljava/lang/String;)V

    sput-object v0, Lp3/e;->f:Lp3/e;

    new-instance v1, Lp3/e;

    sget-object v2, Lo3/n;->e:LQ3/c;

    const-string v3, "SuspendFunction"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v3}, Lp3/e;-><init>(Ljava/lang/String;ILQ3/c;Ljava/lang/String;)V

    sput-object v1, Lp3/e;->g:Lp3/e;

    new-instance v2, Lp3/e;

    sget-object v3, Lo3/n;->h:LQ3/c;

    const-string v4, "KFunction"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3, v4}, Lp3/e;-><init>(Ljava/lang/String;ILQ3/c;Ljava/lang/String;)V

    sput-object v2, Lp3/e;->h:Lp3/e;

    new-instance v4, Lp3/e;

    const-string v5, "KSuspendFunction"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3, v5}, Lp3/e;-><init>(Ljava/lang/String;ILQ3/c;Ljava/lang/String;)V

    sput-object v4, Lp3/e;->i:Lp3/e;

    filled-new-array {v0, v1, v2, v4}, [Lp3/e;

    move-result-object v0

    sput-object v0, Lp3/e;->j:[Lp3/e;

    new-instance v0, LZ0/h;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LZ0/h;-><init>(I)V

    sput-object v0, Lp3/e;->e:LZ0/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILQ3/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lp3/e;->c:LQ3/c;

    iput-object p4, p0, Lp3/e;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp3/e;
    .locals 1

    const-class v0, Lp3/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/e;

    return-object p0
.end method

.method public static values()[Lp3/e;
    .locals 1

    sget-object v0, Lp3/e;->j:[Lp3/e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/e;

    return-object v0
.end method


# virtual methods
.method public final a(I)LQ3/f;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lp3/e;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQ3/f;->e(Ljava/lang/String;)LQ3/f;

    move-result-object p0

    return-object p0
.end method
