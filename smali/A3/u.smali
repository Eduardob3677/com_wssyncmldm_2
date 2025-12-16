.class public final synthetic LA3/u;
.super Ld3/g;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final l:LA3/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA3/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld3/g;-><init>(I)V

    sput-object v0, LA3/u;->l:LA3/u;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, LQ3/c;

    const-string p0, "p0"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, LA3/s;->a:LQ3/c;

    sget-object p0, LA3/C;->a:LA3/B;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LA3/B;->b:LA3/D;

    new-instance v0, LQ2/b;

    const/4 v1, 0x7

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, LQ2/b;-><init>(II)V

    const-string v1, "configuredReportLevels"

    invoke-static {v1, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA3/E;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LA3/s;->c:LA3/D;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LA3/D;->e:Ljava/lang/Object;

    check-cast p0, Lg4/j;

    invoke-virtual {p0, p1}, Lg4/j;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA3/t;

    if-nez p0, :cond_1

    sget-object p0, LA3/E;->c:LA3/E;

    goto :goto_0

    :cond_1
    iget-object p1, p0, LA3/t;->b:LQ2/b;

    if-eqz p1, :cond_2

    iget p1, p1, LQ2/b;->e:I

    iget v0, v0, LQ2/b;->e:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_2

    iget-object p0, p0, LA3/t;->c:LA3/E;

    goto :goto_0

    :cond_2
    iget-object p0, p0, LA3/t;->a:LA3/E;

    :goto_0
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "getDefaultReportLevelForAnnotation"

    return-object p0
.end method

.method public final j()Li3/e;
    .locals 2

    sget-object p0, Ld3/q;->a:Ld3/r;

    const-class v0, LA3/s;

    const-string v1, "compiler.common.jvm"

    invoke-virtual {p0, v0, v1}, Ld3/r;->c(Ljava/lang/Class;Ljava/lang/String;)Li3/e;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    const-string p0, "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;"

    return-object p0
.end method
