.class public abstract LA3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ3/c;

.field public static final b:LQ3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.jvm.JvmField"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    sput-object v0, LA3/y;->a:LQ3/c;

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    new-instance v0, LQ3/c;

    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-direct {v0, v1}, LQ3/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LQ3/b;->k(LQ3/c;)LQ3/b;

    const/4 v0, 0x0

    const-string v1, "kotlin/jvm/internal/RepeatableContainer"

    invoke-static {v1, v0}, LQ3/b;->f(Ljava/lang/String;Z)LQ3/b;

    move-result-object v0

    sput-object v0, LA3/y;->b:LQ3/b;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "propertyName"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, LA3/y;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lo4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LA3/y;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lo4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "name"

    invoke-static {v0, p0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "is"

    invoke-static {p0, v0}, Ls4/h;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-ge v0, p0, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, p0, :cond_4

    :goto_0
    const/16 v0, 0x7a

    if-ge p0, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
