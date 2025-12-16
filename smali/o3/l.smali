.class public final Lo3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LP1/e;

.field public static final synthetic e:[Li3/o;


# instance fields
.field public final a:Lcom/google/firebase/messaging/p;

.field public final b:LQ2/c;

.field public final c:Le4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Lo3/l;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v3

    const-string v4, "kClass"

    const-string v5, "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v0, v3, v4, v5}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    new-instance v3, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v4

    const-string v5, "kProperty"

    const-string v6, "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v3, v4, v5, v6}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v3

    new-instance v4, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v5

    const-string v6, "kProperty0"

    const-string v7, "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v4, v5, v6, v7}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v4

    new-instance v5, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v6

    const-string v7, "kProperty1"

    const-string v8, "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v5, v6, v7, v8}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v5

    new-instance v6, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v7

    const-string v8, "kProperty2"

    const-string v9, "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v6, v7, v8, v9}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v6

    new-instance v7, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v8

    const-string v9, "kMutableProperty0"

    const-string v10, "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v7, v8, v9, v10}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v7

    new-instance v8, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v9

    const-string v10, "kMutableProperty1"

    const-string v11, "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v8, v9, v10, v11}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v8

    new-instance v9, Ld3/n;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v10, "kMutableProperty2"

    const-string v11, "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"

    invoke-direct {v9, v2, v10, v11}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Li3/o;

    const/4 v9, 0x0

    aput-object v0, v2, v9

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    const/4 v0, 0x5

    aput-object v7, v2, v0

    const/4 v0, 0x6

    aput-object v8, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v2, Lo3/l;->e:[Li3/o;

    new-instance v0, LP1/e;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    sput-object v0, Lo3/l;->d:LP1/e;

    return-void
.end method

.method public constructor <init>(Lu3/C;Lcom/google/firebase/messaging/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo3/l;->a:Lcom/google/firebase/messaging/p;

    new-instance p2, LB3/k;

    const/16 v0, 0x19

    invoke-direct {p2, v0, p1}, LB3/k;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p1, p2}, Lf1/a;->U(ILc3/a;)LQ2/c;

    move-result-object p1

    iput-object p1, p0, Lo3/l;->b:LQ2/c;

    new-instance p1, Le4/d;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Le4/d;-><init>(I)V

    iput-object p1, p0, Lo3/l;->c:Le4/d;

    return-void
.end method
