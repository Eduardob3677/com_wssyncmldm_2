.class public final LA3/f;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:LA3/f;

.field public static final f:LA3/f;

.field public static final g:LA3/f;

.field public static final h:LA3/f;

.field public static final i:LA3/f;

.field public static final j:LA3/f;

.field public static final k:LA3/f;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->e:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->f:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->g:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->h:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->i:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->j:LA3/f;

    new-instance v0, LA3/f;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LA3/f;-><init>(II)V

    sput-object v0, LA3/f;->k:LA3/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LA3/f;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "it"

    iget p0, p0, LA3/f;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lo3/i;->z(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, LA3/g;->m:I

    invoke-interface {p1}, Lr3/j;->getName()LQ3/f;

    move-result-object p0

    sget-object v2, LA3/I;->f:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, LA3/f;->f:LA3/f;

    invoke-static {p1, p0}, LX3/f;->b(Lr3/c;Lc3/b;)Lr3/c;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, LW1/a;->o(Lr3/b;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, LA3/I;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, LA3/I;->e:Ljava/util/LinkedHashMap;

    invoke-static {p1, p0}, LR2/z;->x1(Ljava/util/Map;Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA3/H;

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, LA3/e;->m:I

    check-cast p1, Lu3/N;

    invoke-static {p1}, Lo3/i;->z(Lr3/j;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, LA3/d;

    invoke-direct {p0, v1, p1}, LA3/d;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p0}, LX3/f;->b(Lr3/c;Lc3/b;)Lr3/c;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LX3/f;->k(Lr3/c;)Lr3/c;

    move-result-object p0

    invoke-static {p0}, LL2/b;->y(Lr3/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu3/V;

    check-cast p1, Lu3/W;

    invoke-virtual {p1}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, LL2/b;->y(Lr3/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lr3/s;

    if-eqz p0, :cond_5

    sget p0, LA3/g;->m:I

    invoke-static {p1}, LW1/a;->o(Lr3/b;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LA3/I;->g:Ljava/util/Set;

    invoke-static {p1, p0}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lr3/c;

    invoke-static {v2, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget p0, LA3/g;->m:I

    invoke-static {p1}, LW1/a;->o(Lr3/b;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, LA3/I;->g:Ljava/util/Set;

    invoke-static {p1, p0}, LR2/m;->H0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
