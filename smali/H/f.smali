.class public final LH/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LH/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH/f;->a:LH/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)I
    .locals 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v2, p2, :cond_2

    if-ne v3, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    sget-object v4, LH/g;->a:LB1/c;

    if-eqz v3, :cond_1

    if-eq v3, p0, :cond_0

    if-eq v3, v1, :cond_0

    packed-switch v3, :pswitch_data_0

    move v3, v1

    goto :goto_1

    :cond_0
    :pswitch_0
    move v3, v0

    goto :goto_1

    :cond_1
    :pswitch_1
    move v3, p0

    :goto_1
    add-int/2addr v2, p0

    goto :goto_0

    :cond_2
    return v3

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
