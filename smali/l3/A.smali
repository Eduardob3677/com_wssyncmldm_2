.class public abstract Ll3/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:[Li3/o;


# instance fields
.field public final a:Ll3/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ld3/n;

    sget-object v1, Ld3/q;->a:Ld3/r;

    const-class v2, Ll3/A;

    invoke-virtual {v1, v2}, Ld3/r;->b(Ljava/lang/Class;)Li3/c;

    move-result-object v2

    const-string v3, "moduleData"

    const-string v4, "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"

    invoke-direct {v0, v2, v3, v4}, Ld3/n;-><init>(Li3/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ld3/r;->e(Ld3/n;)Li3/n;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Li3/o;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ll3/A;->b:[Li3/o;

    return-void
.end method

.method public constructor <init>(Ll3/C;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LB3/k;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p1}, LB3/k;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Ll3/r0;->j(Lc3/a;)Ll3/p0;

    move-result-object p1

    iput-object p1, p0, Ll3/A;->a:Ll3/p0;

    return-void
.end method
