.class public final Ll3/b;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:Ll3/b;

.field public static final f:Ll3/b;

.field public static final g:Ll3/b;

.field public static final h:Ll3/b;

.field public static final i:Ll3/b;

.field public static final j:Ll3/b;

.field public static final k:Ll3/b;

.field public static final l:Ll3/b;

.field public static final m:Ll3/b;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->e:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->f:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->g:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->h:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->i:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->j:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->k:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->l:Ll3/b;

    new-instance v0, Ll3/b;

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ll3/b;-><init>(II)V

    sput-object v0, Ll3/b;->m:Ll3/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ll3/b;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, " | "

    const-string v1, "descriptor"

    const-string v2, "it.type"

    const-string v3, "it"

    iget p0, p0, Ll3/b;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {v3, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu3/V;

    sget-object p0, Ll3/t0;->a:LS3/g;

    check-cast p1, Lu3/W;

    invoke-virtual {p1}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu3/V;

    sget-object p0, Ll3/t0;->a:LS3/g;

    check-cast p1, Lu3/W;

    invoke-virtual {p1}, Lu3/W;->e()Lh4/v;

    move-result-object p0

    invoke-static {v2, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Ll3/t0;->d(Lh4/v;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lr3/K;

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/g;->e:LS3/g;

    invoke-virtual {v1, p1}, LS3/g;->w(Lr3/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ll3/u0;->b(Lr3/K;)Ll3/r0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lr3/s;

    invoke-static {v1, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LS3/g;->e:LS3/g;

    invoke-virtual {v1, p1}, LS3/g;->w(Lr3/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ll3/u0;->c(Lr3/s;)Ll3/r0;

    move-result-object p1

    invoke-virtual {p1}, Ll3/r0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Class;

    invoke-static {v3, p1}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "it.returnType"

    invoke-static {p1, p0}, Ld3/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lx3/d;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/Class;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ll3/Q;

    invoke-direct {p0, p1}, Ll3/Q;-><init>(Ljava/lang/Class;)V

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/Class;

    invoke-static {v3, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ll3/z;

    invoke-direct {p0, p1}, Ll3/z;-><init>(Ljava/lang/Class;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
