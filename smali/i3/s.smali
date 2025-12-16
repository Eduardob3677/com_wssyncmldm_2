.class public final synthetic Li3/s;
.super Ld3/h;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:Li3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Li3/s;

    const-string v1, "typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;"

    const/4 v2, 0x1

    const-class v3, Li3/x;

    const-string v4, "typeToString"

    invoke-direct {v0, v3, v4, v1, v2}, Ld3/h;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Li3/s;->l:Li3/s;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Type;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Li3/x;->b(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
