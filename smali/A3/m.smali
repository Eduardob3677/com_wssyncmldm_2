.class public final LA3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT3/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LT3/f;
    .locals 0

    sget-object p0, LT3/f;->e:LT3/f;

    return-object p0
.end method

.method public b(Lr3/b;Lr3/b;Lr3/e;)LT3/g;
    .locals 1

    const-string p0, "superDescriptor"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "subDescriptor"

    invoke-static {p0, p2}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p2, Lr3/K;

    sget-object p3, LT3/g;->e:LT3/g;

    if-eqz p0, :cond_5

    instance-of p0, p1, Lr3/K;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lr3/K;

    invoke-interface {p2}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    check-cast p1, Lr3/K;

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object v0

    invoke-static {p0, v0}, Ld3/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p3

    :cond_1
    invoke-static {p2}, Lf1/a;->S(Lr3/K;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lf1/a;->S(Lr3/K;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LT3/g;->c:LT3/g;

    return-object p0

    :cond_2
    invoke-static {p2}, Lf1/a;->S(Lr3/K;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p1}, Lf1/a;->S(Lr3/K;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return-object p3

    :cond_4
    :goto_0
    sget-object p0, LT3/g;->d:LT3/g;

    return-object p0

    :cond_5
    :goto_1
    return-object p3
.end method
