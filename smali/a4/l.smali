.class public final La4/l;
.super Ld3/k;
.source "SourceFile"

# interfaces
.implements Lc3/b;


# static fields
.field public static final e:La4/l;

.field public static final f:La4/l;

.field public static final g:La4/l;

.field public static final h:La4/l;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, La4/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La4/l;-><init>(II)V

    sput-object v0, La4/l;->e:La4/l;

    new-instance v0, La4/l;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La4/l;-><init>(II)V

    sput-object v0, La4/l;->f:La4/l;

    new-instance v0, La4/l;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, La4/l;-><init>(II)V

    sput-object v0, La4/l;->g:La4/l;

    new-instance v0, La4/l;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, La4/l;-><init>(II)V

    sput-object v0, La4/l;->h:La4/l;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, La4/l;->d:I

    invoke-direct {p0, p1}, Ld3/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, La4/l;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lr3/K;

    const-string p0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :pswitch_0
    check-cast p1, Lu3/N;

    const-string p0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :pswitch_1
    check-cast p1, Lr3/b;

    const-string p0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :pswitch_2
    check-cast p1, LQ3/f;

    const-string p0, "it"

    invoke-static {p0, p1}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
