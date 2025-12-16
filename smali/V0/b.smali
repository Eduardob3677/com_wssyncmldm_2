.class public final LV0/b;
.super LW1/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LV0/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic e(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;
    .locals 6

    iget v0, p0, LV0/b;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p6}, LW1/a;->e(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct {p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    :pswitch_1
    check-cast p4, Lr1/a;

    new-instance p0, Ls1/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ls1/a;-><init>(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/e;La1/f;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;
    .locals 15

    move-object v0, p0

    iget v1, v0, LV0/b;->b:I

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p6}, LW1/a;->f(Landroid/content/Context;Landroid/os/Looper;LJ3/c;La1/a;La1/e;La1/f;)La1/b;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v4, p4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/W3;

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/I3;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/I3;-><init>(Landroid/content/Context;Landroid/os/Looper;LJ3/c;Lcom/google/android/gms/internal/firebase-auth-api/W3;La1/e;La1/f;)V

    return-object v7

    :pswitch_1
    invoke-static/range {p4 .. p4}, LB/f;->y(La1/a;)V

    new-instance v0, Lm1/e;

    const/16 v11, 0x7e

    move-object v8, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-direct/range {v8 .. v14}, Lc1/k;-><init>(Landroid/content/Context;Landroid/os/Looper;ILJ3/c;La1/e;La1/f;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
