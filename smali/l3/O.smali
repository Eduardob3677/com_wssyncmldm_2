.class public final Ll3/O;
.super Ll3/A;
.source "SourceFile"


# static fields
.field public static final synthetic g:[Li3/o;


# instance fields
.field public final c:Ll3/p0;

.field public final d:Ll3/p0;

.field public final e:Ll3/q0;

.field public final f:Ll3/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/O;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v4

    const-string v5, "scope"

    const-string v6, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v3, v4, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v3

    new-instance v4, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v5

    const-string v6, "multifileFacade"

    const-string v7, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v4, v5, v6, v7}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v4

    new-instance v5, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v6

    const-string v7, "metadata"

    const-string v8, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v5, v6, v7, v8}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v5

    new-instance v6, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v7, "members"

    const-string v8, "getMembers()Ljava/util/Collection;"

    invoke-direct {v6, v2, v7, v8}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Li3/o;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sput-object v2, Ll3/O;->g:[Li3/o;

    return-void
.end method

.method public constructor <init>(Ll3/Q;)V
    .locals 2

    invoke-direct {p0, p1}, Ll3/A;-><init>(Ll3/C;)V

    new-instance v0, Ll3/L;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ll3/L;-><init>(Ll3/Q;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    iput-object v0, p0, Ll3/O;->c:Ll3/p0;

    new-instance v0, Ll3/N;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ll3/N;-><init>(Ll3/O;I)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object v0

    iput-object v0, p0, Ll3/O;->d:Ll3/p0;

    new-instance v0, Ll3/M;

    invoke-direct {v0, p0, p1}, Ll3/M;-><init>(Ll3/O;Ll3/Q;)V

    new-instance v1, Ll3/q0;

    invoke-direct {v1, v0}, Ll3/q0;-><init>(Lc3/a;)V

    iput-object v1, p0, Ll3/O;->e:Ll3/q0;

    new-instance v0, Ll3/N;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll3/N;-><init>(Ll3/O;I)V

    new-instance v1, Ll3/q0;

    invoke-direct {v1, v0}, Ll3/q0;-><init>(Lc3/a;)V

    iput-object v1, p0, Ll3/O;->f:Ll3/q0;

    new-instance v0, Ll3/M;

    invoke-direct {v0, p1, p0}, Ll3/M;-><init>(Ll3/Q;Ll3/O;)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    return-void
.end method
