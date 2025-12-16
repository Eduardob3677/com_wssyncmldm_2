.class public final Le/C;
.super Le/r;
.source "SourceFile"

# interfaces
.implements Lj/g;
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field public static final k0:Lo/k;

.field public static final l0:[I

.field public static final m0:Z

.field public static final n0:Z


# instance fields
.field public A:Landroid/view/ViewGroup;

.field public B:Landroid/widget/TextView;

.field public C:Landroid/view/View;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:[Le/B;

.field public M:Le/B;

.field public N:Z

.field public O:Z

.field public Q:Z

.field public R:Z

.field public T:Landroid/content/res/Configuration;

.field public final U:I

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Le/z;

.field public Z:Le/z;

.field public a0:Z

.field public b0:I

.field public final c0:Le/s;

.field public d0:Z

.field public e0:Landroid/graphics/Rect;

.field public f0:Landroid/graphics/Rect;

.field public g0:Le/F;

.field public h0:Landroid/window/OnBackInvokedDispatcher;

.field public i0:Landroid/window/OnBackInvokedCallback;

.field public final j:Ljava/lang/Object;

.field public j0:Z

.field public final k:Landroid/content/Context;

.field public l:Landroid/view/Window;

.field public m:Le/y;

.field public final n:Le/o;

.field public o:Le/a;

.field public p:Li/j;

.field public q:Ljava/lang/CharSequence;

.field public r:Lk/d0;

.field public s:Le/t;

.field public t:Le/t;

.field public u:Li/b;

.field public v:Landroidx/appcompat/widget/ActionBarContextView;

.field public w:Landroid/widget/PopupWindow;

.field public x:Le/s;

.field public y:LJ/a0;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/k;

    invoke-direct {v0}, Lo/k;-><init>()V

    sput-object v0, Le/C;->k0:Lo/k;

    const v0, 0x1010054

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Le/C;->l0:[I

    const-string v0, "robolectric"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Le/C;->m0:Z

    sput-boolean v1, Le/C;->n0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Le/o;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le/C;->y:LJ/a0;

    const/16 v1, -0x64

    iput v1, p0, Le/C;->U:I

    new-instance v2, Le/s;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Le/s;-><init>(Le/C;I)V

    iput-object v2, p0, Le/C;->c0:Le/s;

    const/4 v2, 0x0

    iput-boolean v2, p0, Le/C;->j0:Z

    iput-object p1, p0, Le/C;->k:Landroid/content/Context;

    iput-object p3, p0, Le/C;->n:Le/o;

    iput-object p4, p0, Le/C;->j:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    instance-of p3, p1, Le/n;

    if-eqz p3, :cond_0

    check-cast p1, Le/n;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Le/n;->getDelegate()Le/r;

    move-result-object p1

    check-cast p1, Le/C;

    iget p1, p1, Le/C;->U:I

    iput p1, p0, Le/C;->U:I

    :cond_2
    iget p1, p0, Le/C;->U:I

    if-ne p1, v1, :cond_3

    sget-object p1, Le/C;->k0:Lo/k;

    iget-object p3, p0, Le/C;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v0}, Lo/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Le/C;->U:I

    iget-object p3, p0, Le/C;->j:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Le/C;->q(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lk/s;->c()V

    return-void
.end method

.method public static u(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    const/4 p3, 0x0

    iput p3, p1, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_3
    iget p2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, -0x31

    or-int/2addr p0, p2

    iput p0, p1, Landroid/content/res/Configuration;->uiMode:I

    return-object p1
.end method


# virtual methods
.method public final A(I)Le/B;
    .locals 4

    iget-object v0, p0, Le/C;->L:[Le/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-gt v2, p1, :cond_2

    :cond_0
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [Le/B;

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v2, p0, Le/C;->L:[Le/B;

    move-object v0, v2

    :cond_2
    aget-object p0, v0, p1

    if-nez p0, :cond_3

    new-instance p0, Le/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/B;->a:I

    iput-boolean v1, p0, Le/B;->n:Z

    aput-object p0, v0, p1

    :cond_3
    return-object p0
.end method

.method public final B()V
    .locals 3

    invoke-virtual {p0}, Le/C;->x()V

    iget-boolean v0, p0, Le/C;->F:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/C;->o:Le/a;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v1, Le/Q;

    check-cast v0, Landroid/app/Activity;

    iget-boolean v2, p0, Le/C;->G:Z

    invoke-direct {v1, v0, v2}, Le/Q;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Le/C;->o:Le/a;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/app/Dialog;

    if-eqz v1, :cond_2

    new-instance v1, Le/Q;

    check-cast v0, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Le/Q;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Le/C;->o:Le/a;

    :cond_2
    :goto_0
    iget-object v0, p0, Le/C;->o:Le/a;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Le/C;->d0:Z

    invoke-virtual {v0, p0}, Le/a;->l(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final C(I)V
    .locals 2

    iget v0, p0, Le/C;->b0:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Le/C;->b0:I

    iget-boolean p1, p0, Le/C;->a0:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Le/C;->c0:Le/s;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Le/C;->a0:Z

    :cond_0
    return-void
.end method

.method public final D(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Le/C;->Z:Le/z;

    if-nez p2, :cond_0

    new-instance p2, Le/z;

    invoke-direct {p2, p0, p1}, Le/z;-><init>(Le/C;Landroid/content/Context;)V

    iput-object p2, p0, Le/C;->Z:Le/z;

    :cond_0
    iget-object p0, p0, Le/C;->Z:Le/z;

    invoke-virtual {p0}, Le/z;->f()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Le/C;->z(Landroid/content/Context;)Lcom/google/android/gms/internal/firebase-auth-api/O3;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->f()I

    move-result p0

    return p0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final E()Z
    .locals 5

    iget-boolean v0, p0, Le/C;->N:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Le/C;->N:Z

    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object v2

    iget-boolean v3, v2, Le/B;->m:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v4}, Le/C;->t(Le/B;Z)V

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Le/C;->u:Li/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Li/b;->a()V

    return v4

    :cond_2
    invoke-virtual {p0}, Le/C;->B()V

    iget-object p0, p0, Le/C;->o:Le/a;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Le/a;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public final F(Le/B;Landroid/view/KeyEvent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Le/B;->m:Z

    if-nez v2, :cond_1b

    iget-boolean v2, v0, Le/C;->R:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    iget v2, v1, Le/B;->a:I

    iget-object v3, v0, Le/C;->k:Landroid/content/Context;

    if-nez v2, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v6, v1, Le/B;->h:Lj/i;

    invoke-interface {v4, v2, v6}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1, v5}, Le/C;->t(Le/B;Z)V

    return-void

    :cond_2
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p2}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    iget-object v6, v1, Le/B;->e:Le/A;

    const/4 v7, 0x0

    const/4 v8, -0x2

    if-eqz v6, :cond_6

    iget-boolean v9, v1, Le/B;->n:Z

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    iget-object v3, v1, Le/B;->g:Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_18

    move v10, v6

    goto/16 :goto_7

    :cond_6
    :goto_0
    if-nez v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Le/C;->B()V

    iget-object v6, v0, Le/C;->o:Le/a;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Le/a;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    :goto_2
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v10, 0x7f040003

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_9

    invoke-virtual {v9, v10, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_9
    const v10, 0x7f040398

    invoke-virtual {v9, v10, v6, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v6, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_3

    :cond_a
    const v6, 0x7f1402f5

    invoke-virtual {v9, v6, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_3
    new-instance v6, Li/e;

    invoke-direct {v6, v3, v7}, Li/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Li/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v6, v1, Le/B;->j:Li/e;

    sget-object v3, Lc/a;->j:[I

    invoke-virtual {v6, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v6, 0x66

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Le/B;->b:I

    const/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v1, Le/B;->d:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v3, Le/A;

    iget-object v6, v1, Le/B;->j:Li/e;

    invoke-direct {v3, v0, v6}, Le/A;-><init>(Le/C;Li/e;)V

    iput-object v3, v1, Le/B;->e:Le/A;

    const/16 v3, 0x51

    iput v3, v1, Le/B;->c:I

    goto :goto_4

    :cond_b
    iget-boolean v3, v1, Le/B;->n:Z

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Le/B;->e:Le/A;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_c
    :goto_4
    iget-object v3, v1, Le/B;->g:Landroid/view/View;

    if-eqz v3, :cond_d

    iput-object v3, v1, Le/B;->f:Landroid/view/View;

    goto :goto_5

    :cond_d
    iget-object v3, v1, Le/B;->h:Lj/i;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    iget-object v3, v0, Le/C;->t:Le/t;

    if-nez v3, :cond_f

    new-instance v3, Le/t;

    const/4 v6, 0x3

    invoke-direct {v3, v0, v6}, Le/t;-><init>(Le/C;I)V

    iput-object v3, v0, Le/C;->t:Le/t;

    :cond_f
    iget-object v3, v0, Le/C;->t:Le/t;

    iget-object v6, v1, Le/B;->i:Lj/e;

    if-nez v6, :cond_10

    new-instance v6, Lj/e;

    iget-object v9, v1, Le/B;->j:Li/e;

    invoke-direct {v6, v9}, Lj/e;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Le/B;->i:Lj/e;

    iput-object v3, v6, Lj/e;->g:Lj/t;

    iget-object v3, v1, Le/B;->h:Lj/i;

    iget-object v9, v3, Lj/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v6, v9}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    :cond_10
    iget-object v3, v1, Le/B;->i:Lj/e;

    iget-object v6, v1, Le/B;->e:Le/A;

    iget-object v9, v3, Lj/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v9, :cond_12

    iget-object v9, v3, Lj/e;->d:Landroid/view/LayoutInflater;

    const v10, 0x7f0d0005

    invoke-virtual {v9, v10, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v6, v3, Lj/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v6, v3, Lj/e;->h:Lj/d;

    if-nez v6, :cond_11

    new-instance v6, Lj/d;

    invoke-direct {v6, v3}, Lj/d;-><init>(Lj/e;)V

    iput-object v6, v3, Lj/e;->h:Lj/d;

    :cond_11
    iget-object v6, v3, Lj/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v9, v3, Lj/e;->h:Lj/d;

    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v6, v3, Lj/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v6, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    iget-object v3, v3, Lj/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v3, v1, Le/B;->f:Landroid/view/View;

    if-eqz v3, :cond_1a

    :goto_5
    iget-object v3, v1, Le/B;->f:Landroid/view/View;

    if-nez v3, :cond_13

    goto/16 :goto_8

    :cond_13
    iget-object v3, v1, Le/B;->g:Landroid/view/View;

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iget-object v3, v1, Le/B;->i:Lj/e;

    iget-object v6, v3, Lj/e;->h:Lj/d;

    if-nez v6, :cond_15

    new-instance v6, Lj/d;

    invoke-direct {v6, v3}, Lj/d;-><init>(Lj/e;)V

    iput-object v6, v3, Lj/e;->h:Lj/d;

    :cond_15
    iget-object v3, v3, Lj/e;->h:Lj/d;

    invoke-virtual {v3}, Lj/d;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    :goto_6
    iget-object v3, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_16

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_16
    iget v6, v1, Le/B;->b:I

    iget-object v9, v1, Le/B;->e:Le/A;

    invoke-virtual {v9, v6}, Le/A;->setBackgroundResource(I)V

    iget-object v6, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_17

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v9, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_17
    iget-object v6, v1, Le/B;->e:Le/A;

    iget-object v9, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v6, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Le/B;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_18
    move v10, v8

    :goto_7
    iput-boolean v7, v1, Le/B;->l:Z

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    const/16 v14, 0x3ea

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/high16 v15, 0x820000

    const/16 v16, -0x3

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v6, v1, Le/B;->c:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v1, Le/B;->d:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, v1, Le/B;->e:Le/A;

    invoke-interface {v4, v6, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, v1, Le/B;->m:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Le/C;->J()V

    :cond_19
    return-void

    :cond_1a
    :goto_8
    iput-boolean v5, v1, Le/B;->n:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public final G(Le/B;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/B;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Le/B;->h:Lj/i;

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lj/i;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public final H(Le/B;Landroid/view/KeyEvent;)Z
    .locals 12

    iget-boolean v0, p0, Le/C;->R:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Le/B;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Le/C;->M:Le/B;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Le/C;->t(Le/B;Z)V

    :cond_2
    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget v3, p1, Le/B;->a:I

    if-eqz v0, :cond_3

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Le/B;->g:Landroid/view/View;

    :cond_3
    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v5, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_6

    iget-object v6, p0, Le/C;->r:Lk/d0;

    if-eqz v6, :cond_6

    check-cast v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v6, v6, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v6, Lk/I1;

    iput-boolean v2, v6, Lk/I1;->l:Z

    :cond_6
    iget-object v6, p1, Le/B;->g:Landroid/view/View;

    if-nez v6, :cond_1e

    if-eqz v5, :cond_7

    iget-object v6, p0, Le/C;->o:Le/a;

    instance-of v6, v6, Le/L;

    if-nez v6, :cond_1e

    :cond_7
    iget-object v6, p1, Le/B;->h:Lj/i;

    const/4 v7, 0x0

    if-eqz v6, :cond_8

    iget-boolean v8, p1, Le/B;->o:Z

    if-eqz v8, :cond_18

    :cond_8
    if-nez v6, :cond_11

    iget-object v6, p0, Le/C;->k:Landroid/content/Context;

    if-eqz v3, :cond_9

    if-ne v3, v4, :cond_d

    :cond_9
    iget-object v4, p0, Le/C;->r:Lk/d0;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x7f04000a

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    const v10, 0x7f04000b

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v11, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v11, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {v9, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    invoke-virtual {v8, v10, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v9, v7

    :goto_2
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v10, :cond_c

    if-nez v9, :cond_b

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v9, :cond_d

    new-instance v4, Li/e;

    invoke-direct {v4, v6, v1}, Li/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Li/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v6, v4

    :cond_d
    new-instance v4, Lj/i;

    invoke-direct {v4, v6}, Lj/i;-><init>(Landroid/content/Context;)V

    iput-object p0, v4, Lj/i;->e:Lj/g;

    iget-object v6, p1, Le/B;->h:Lj/i;

    if-ne v4, v6, :cond_e

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_f

    iget-object v8, p1, Le/B;->i:Lj/e;

    invoke-virtual {v6, v8}, Lj/i;->r(Lj/u;)V

    :cond_f
    iput-object v4, p1, Le/B;->h:Lj/i;

    iget-object v6, p1, Le/B;->i:Lj/e;

    if-eqz v6, :cond_10

    iget-object v8, v4, Lj/i;->a:Landroid/content/Context;

    invoke-virtual {v4, v6, v8}, Lj/i;->b(Lj/u;Landroid/content/Context;)V

    :cond_10
    :goto_3
    iget-object v4, p1, Le/B;->h:Lj/i;

    if-nez v4, :cond_11

    return v1

    :cond_11
    if-eqz v5, :cond_13

    iget-object v4, p0, Le/C;->r:Lk/d0;

    if-eqz v4, :cond_13

    iget-object v6, p0, Le/C;->s:Le/t;

    if-nez v6, :cond_12

    new-instance v6, Le/t;

    const/4 v8, 0x2

    invoke-direct {v6, p0, v8}, Le/t;-><init>(Le/C;I)V

    iput-object v6, p0, Le/C;->s:Le/t;

    :cond_12
    iget-object v6, p1, Le/B;->h:Lj/i;

    iget-object v8, p0, Le/C;->s:Le/t;

    check-cast v4, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lj/i;Le/t;)V

    :cond_13
    iget-object v4, p1, Le/B;->h:Lj/i;

    invoke-virtual {v4}, Lj/i;->w()V

    iget-object v4, p1, Le/B;->h:Lj/i;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object p2, p1, Le/B;->h:Lj/i;

    if-nez p2, :cond_14

    goto :goto_4

    :cond_14
    if-eqz p2, :cond_15

    iget-object v0, p1, Le/B;->i:Lj/e;

    invoke-virtual {p2, v0}, Lj/i;->r(Lj/u;)V

    :cond_15
    iput-object v7, p1, Le/B;->h:Lj/i;

    :goto_4
    if-eqz v5, :cond_16

    iget-object p1, p0, Le/C;->r:Lk/d0;

    if-eqz p1, :cond_16

    iget-object p0, p0, Le/C;->s:Le/t;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lj/i;Le/t;)V

    :cond_16
    return v1

    :cond_17
    iput-boolean v1, p1, Le/B;->o:Z

    :cond_18
    iget-object v3, p1, Le/B;->h:Lj/i;

    invoke-virtual {v3}, Lj/i;->w()V

    iget-object v3, p1, Le/B;->p:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    iget-object v4, p1, Le/B;->h:Lj/i;

    invoke-virtual {v4, v3}, Lj/i;->s(Landroid/os/Bundle;)V

    iput-object v7, p1, Le/B;->p:Landroid/os/Bundle;

    :cond_19
    iget-object v3, p1, Le/B;->g:Landroid/view/View;

    iget-object v4, p1, Le/B;->h:Lj/i;

    invoke-interface {v0, v1, v3, v4}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz v5, :cond_1a

    iget-object p2, p0, Le/C;->r:Lk/d0;

    if-eqz p2, :cond_1a

    iget-object p0, p0, Le/C;->s:Le/t;

    check-cast p2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p2, v7, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->l(Lj/i;Le/t;)V

    :cond_1a
    iget-object p0, p1, Le/B;->h:Lj/i;

    invoke-virtual {p0}, Lj/i;->v()V

    return v1

    :cond_1b
    if-eqz p2, :cond_1c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_5

    :cond_1c
    const/4 p2, -0x1

    :goto_5
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_1d

    move p2, v2

    goto :goto_6

    :cond_1d
    move p2, v1

    :goto_6
    iget-object v0, p1, Le/B;->h:Lj/i;

    invoke-virtual {v0, p2}, Lj/i;->setQwertyMode(Z)V

    iget-object p2, p1, Le/B;->h:Lj/i;

    invoke-virtual {p2}, Lj/i;->v()V

    :cond_1e
    iput-boolean v2, p1, Le/B;->k:Z

    iput-boolean v1, p1, Le/B;->l:Z

    iput-object p1, p0, Le/C;->M:Le/B;

    return v2
.end method

.method public final I()V
    .locals 1

    iget-boolean p0, p0, Le/C;->z:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Window feature must be requested before adding content"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final J()V
    .locals 3

    iget-object v0, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-boolean v0, v0, Le/B;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Le/C;->u:Li/b;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Le/C;->i0:Landroid/window/OnBackInvokedCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {v0, p0}, Le/x;->b(Ljava/lang/Object;Le/C;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Le/C;->i0:Landroid/window/OnBackInvokedCallback;

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Le/C;->i0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_4

    iget-object p0, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    invoke-static {p0, v0}, Le/x;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Le/C;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    instance-of p0, p0, Le/C;

    if-nez p0, :cond_1

    const-string p0, "AppCompatDelegate"

    const-string v0, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Le/C;->o:Le/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/C;->B()V

    iget-object v0, p0, Le/C;->o:Le/a;

    invoke-virtual {v0}, Le/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/C;->C(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lj/i;)V
    .locals 5

    iget-object p1, p0, Le/C;->r:Lk/d0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object p1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView;->u:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Le/C;->k:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/C;->r:Lk/d0;

    check-cast p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p1, p1, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast p1, Lk/I1;

    iget-object p1, p1, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz p1, :cond_4

    iget-object v2, p1, Lk/k;->w:LG/a;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lk/k;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget-object p1, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Le/C;->r:Lk/d0;

    check-cast v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v2, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v2, Lk/I1;

    iget-object v2, v2, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroidx/appcompat/widget/Toolbar;->q()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_2

    iget-object v0, p0, Le/C;->r:Lk/d0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/k;->i()Z

    move-result v0

    :cond_1
    iget-boolean v0, p0, Le/C;->R:Z

    if-nez v0, :cond_5

    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object p0

    iget-object p0, p0, Le/B;->h:Lj/i;

    invoke-interface {p1, v3, p0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    iget-boolean v2, p0, Le/C;->R:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Le/C;->a0:Z

    if-eqz v2, :cond_3

    iget v2, p0, Le/C;->b0:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Le/C;->c0:Le/s;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Le/s;->run()V

    :cond_3
    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-object v2, v0, Le/B;->h:Lj/i;

    if-eqz v2, :cond_5

    iget-boolean v4, v0, Le/B;->o:Z

    if-nez v4, :cond_5

    iget-object v4, v0, Le/B;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Le/B;->h:Lj/i;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p0, p0, Le/C;->r:Lk/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast p0, Lk/I1;

    iget-object p0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->w()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object p1

    iput-boolean v0, p1, Le/B;->n:Z

    invoke-virtual {p0, p1, v1}, Le/C;->t(Le/B;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le/C;->F(Le/B;Landroid/view/KeyEvent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final d(Lj/i;Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Le/C;->R:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lj/i;->k()Lj/i;

    move-result-object p1

    iget-object p0, p0, Le/C;->L:[Le/B;

    if-eqz p0, :cond_0

    array-length v2, p0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_1

    iget-object v5, v4, Le/B;->h:Lj/i;

    if-ne v5, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget p0, v4, Le/B;->a:I

    invoke-interface {v0, p0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/C;->O:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Le/C;->p(Z)Z

    invoke-virtual {p0}, Le/C;->y()V

    iget-object v1, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    :try_start_0
    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lp/a;->j(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Le/C;->o:Le/a;

    if-nez v1, :cond_0

    iput-boolean v0, p0, Le/C;->d0:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Le/a;->l(Z)V

    :cond_1
    :goto_1
    sget-object v1, Le/r;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Le/r;->i(Le/r;)V

    sget-object v2, Le/r;->g:Lo/c;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lo/c;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v2, p0, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Le/C;->T:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Le/C;->Q:Z

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Le/r;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Le/r;->i(Le/r;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Le/C;->a0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Le/C;->c0:Le/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/C;->R:Z

    iget v0, p0, Le/C;->U:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/C;->k0:Lo/k;

    iget-object v1, p0, Le/C;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Le/C;->U:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Le/C;->k0:Lo/k;

    iget-object v1, p0, Le/C;->j:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Le/C;->o:Le/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a;->h()V

    :cond_3
    iget-object v0, p0, Le/C;->Y:Le/z;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->d()V

    :cond_4
    iget-object p0, p0, Le/C;->Z:Le/z;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->d()V

    :cond_5
    return-void
.end method

.method public final h()V
    .locals 5

    invoke-virtual {p0}, Le/C;->B()V

    iget-object v0, p0, Le/C;->o:Le/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Le/a;->n(Z)V

    :cond_0
    iget-object v0, p0, Le/C;->L:[Le/B;

    if-eqz v0, :cond_1

    array-length v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Le/C;->t(Le/B;Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final j(I)Z
    .locals 5

    const/16 v0, 0x6d

    const/16 v1, 0x6c

    const/16 v2, 0x8

    const-string v3, "AppCompatDelegate"

    if-ne p1, v2, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    :goto_0
    iget-boolean v2, p0, Le/C;->J:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-ne p1, v1, :cond_2

    return v3

    :cond_2
    iget-boolean v2, p0, Le/C;->F:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v3, p0, Le/C;->F:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-eq p1, v2, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_4

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->G:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->F:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->H:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->E:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->D:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Le/C;->I()V

    iput-boolean v4, p0, Le/C;->J:Z

    return v4
.end method

.method public final k(I)V
    .locals 2

    invoke-virtual {p0}, Le/C;->x()V

    iget-object v0, p0, Le/C;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Le/C;->k:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final l(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Le/C;->x()V

    iget-object v0, p0, Le/C;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/C;->x()V

    iget-object v0, p0, Le/C;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Le/C;->q:Ljava/lang/CharSequence;

    iget-object v0, p0, Le/C;->r:Lk/d0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lk/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/C;->o:Le/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Le/a;->p(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le/C;->B:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Li/a;)Li/b;
    .locals 10

    const/4 v0, 0x1

    if-eqz p1, :cond_16

    iget-object v1, p0, Le/C;->u:Li/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li/b;->a()V

    :cond_0
    new-instance v1, Le/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Le/v;->d:Ljava/lang/Object;

    iput-object p1, v1, Le/v;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Le/C;->B()V

    iget-object p1, p0, Le/C;->o:Le/a;

    iget-object v2, p0, Le/C;->n:Le/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Le/a;->q(Le/v;)Li/b;

    move-result-object p1

    iput-object p1, p0, Le/C;->u:Li/b;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Le/o;->onSupportActionModeStarted(Li/b;)V

    :cond_1
    iget-object p1, p0, Le/C;->u:Li/b;

    if-nez p1, :cond_15

    iget-object p1, p0, Le/C;->y:LJ/a0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LJ/a0;->b()V

    :cond_2
    iget-object p1, p0, Le/C;->u:Li/b;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Li/b;->a()V

    :cond_3
    const/4 p1, 0x0

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Le/C;->R:Z

    if-nez v3, :cond_4

    :try_start_0
    invoke-interface {v2, v1}, Le/o;->onWindowStartingSupportActionMode(Li/a;)Li/b;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    move-object v3, p1

    :goto_0
    if-eqz v3, :cond_5

    iput-object v3, p0, Le/C;->u:Li/b;

    goto/16 :goto_7

    :cond_5
    iget-object v3, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v4, 0x0

    if-nez v3, :cond_d

    iget-boolean v3, p0, Le/C;->I:Z

    iget-object v5, p0, Le/C;->k:Landroid/content/Context;

    if-eqz v3, :cond_7

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f04000a

    invoke-virtual {v6, v7, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v7, v6, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v6, Li/e;

    invoke-direct {v6, v5, v4}, Li/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6}, Li/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v6

    :cond_6
    new-instance v6, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v6, v5, p1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v6, Landroid/widget/PopupWindow;

    const v7, 0x7f040019

    invoke-direct {v6, v5, p1, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Le/C;->w:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v6, v7}, LO/n;->d(Landroid/widget/PopupWindow;I)V

    iget-object v6, p0, Le/C;->w:Landroid/widget/PopupWindow;

    iget-object v7, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v6, p0, Le/C;->w:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x7f040004

    invoke-virtual {v6, v7, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    iget-object v5, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object v3, p0, Le/C;->w:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v3, Le/s;

    invoke-direct {v3, p0, v0}, Le/s;-><init>(Le/C;I)V

    iput-object v3, p0, Le/C;->x:Le/s;

    goto/16 :goto_4

    :cond_7
    iget-object v3, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "collapsing_toolbar"

    const-string v9, "id"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "sesl_toolbar_container"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v7, v9, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :cond_8
    const v3, 0x7f0a0045

    if-nez v6, :cond_9

    iget-object v6, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    goto :goto_1

    :cond_9
    iget-boolean v7, p0, Le/C;->H:Z

    if-eqz v7, :cond_a

    iget-object v6, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    goto :goto_1

    :cond_a
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ViewStubCompat;

    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {p0}, Le/C;->B()V

    iget-object v6, p0, Le/C;->o:Le/a;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Le/a;->e()Landroid/content/Context;

    move-result-object v6

    goto :goto_2

    :cond_b
    move-object v6, p1

    :goto_2
    if-nez v6, :cond_c

    goto :goto_3

    :cond_c
    move-object v5, v6

    :goto_3
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {v3}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v3, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_d
    :goto_4
    iget-object v3, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v3, :cond_13

    iget-object v3, p0, Le/C;->y:LJ/a0;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, LJ/a0;->b()V

    :cond_e
    iget-object v3, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    new-instance v3, Li/f;

    iget-object v5, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v5, v3, Li/f;->e:Landroid/content/Context;

    iput-object v6, v3, Li/f;->f:Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v1, v3, Li/f;->g:Li/a;

    new-instance v5, Lj/i;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lj/i;-><init>(Landroid/content/Context;)V

    iput v0, v5, Lj/i;->l:I

    iput-object v5, v3, Li/f;->j:Lj/i;

    iput-object v3, v5, Lj/i;->e:Lj/g;

    iget-object v1, v1, Le/v;->c:Ljava/lang/Object;

    check-cast v1, Li/a;

    invoke-interface {v1, v3, v5}, Li/a;->f(Li/b;Lj/i;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v3}, Li/f;->i()V

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->c(Li/b;)V

    iput-object v3, p0, Le/C;->u:Li/b;

    iget-boolean p1, p0, Le/C;->z:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Le/C;->A:Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_5

    :cond_f
    move p1, v4

    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_10

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, LJ/Q;->a(Landroid/view/View;)LJ/a0;

    move-result-object p1

    invoke-virtual {p1, v1}, LJ/a0;->a(F)V

    iput-object p1, p0, Le/C;->y:LJ/a0;

    new-instance v1, Le/u;

    invoke-direct {v1, v0, p0}, Le/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, LJ/a0;->d(LJ/b0;)V

    goto :goto_6

    :cond_10
    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_11

    iget-object p1, p0, Le/C;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LJ/G;->c(Landroid/view/View;)V

    :cond_11
    :goto_6
    iget-object p1, p0, Le/C;->w:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_13

    iget-object p1, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Le/C;->x:Le/s;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    :cond_12
    iput-object p1, p0, Le/C;->u:Li/b;

    :cond_13
    :goto_7
    iget-object p1, p0, Le/C;->u:Li/b;

    if-eqz p1, :cond_14

    if-eqz v2, :cond_14

    invoke-interface {v2, p1}, Le/o;->onSupportActionModeStarted(Li/b;)V

    :cond_14
    invoke-virtual {p0}, Le/C;->J()V

    iget-object p1, p0, Le/C;->u:Li/b;

    iput-object p1, p0, Le/C;->u:Li/b;

    :cond_15
    invoke-virtual {p0}, Le/C;->J()V

    iget-object p0, p0, Le/C;->u:Li/b;

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActionMode callback can not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    const/4 p1, 0x1

    iget-object v0, p0, Le/C;->g0:Le/F;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lc/a;->j:[I

    iget-object v2, p0, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x90

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Le/F;

    invoke-direct {v0}, Le/F;-><init>()V

    iput-object v0, p0, Le/C;->g0:Le/F;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/F;

    iput-object v2, p0, Le/C;->g0:Le/F;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Le/F;

    invoke-direct {v0}, Le/F;-><init>()V

    iput-object v0, p0, Le/C;->g0:Le/F;

    :cond_1
    :goto_0
    iget-object p0, p0, Le/C;->g0:Le/F;

    sget v0, Lk/L1;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lc/a;->C:[I

    const/4 v2, 0x0

    invoke-virtual {p3, p4, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "AppCompatViewInflater"

    const-string v6, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v4, :cond_4

    instance-of v0, p3, Li/e;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Li/e;

    iget v0, v0, Li/e;->a:I

    if-eq v0, v4, :cond_4

    :cond_3
    new-instance v0, Li/e;

    invoke-direct {v0, p3, v4}, Li/e;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v0, p3

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_2
    move v3, v6

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "Button"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0xc

    goto/16 :goto_3

    :sswitch_1
    const-string v3, "EditText"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/16 v3, 0xb

    goto/16 :goto_3

    :sswitch_2
    const-string v3, "CheckBox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    const/16 v3, 0xa

    goto/16 :goto_3

    :sswitch_3
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x9

    goto/16 :goto_3

    :sswitch_4
    const-string v4, "ImageView"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_2

    :sswitch_5
    const-string v3, "ToggleButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x7

    goto :goto_3

    :sswitch_6
    const-string v3, "RadioButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x6

    goto :goto_3

    :sswitch_7
    const-string v3, "Spinner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    const/4 v3, 0x5

    goto :goto_3

    :sswitch_8
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_c
    const/4 v3, 0x4

    goto :goto_3

    :sswitch_9
    const-string v3, "TextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_2

    :cond_d
    move v3, v5

    goto :goto_3

    :sswitch_a
    const-string v3, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_2

    :cond_e
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_b
    const-string v3, "CheckedTextView"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_2

    :cond_f
    move v3, p1

    goto :goto_3

    :sswitch_c
    const-string v3, "RatingBar"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_2

    :cond_10
    move v3, v2

    :cond_11
    :goto_3
    packed-switch v3, :pswitch_data_0

    move-object v3, v1

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0, v0, p4}, Le/F;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v3

    goto :goto_4

    :pswitch_1
    new-instance v3, Lk/u;

    invoke-direct {v3, v0, p4}, Lk/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {p0, v0, p4}, Le/F;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/p;

    move-result-object v3

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0, v0, p4}, Le/F;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/o;

    move-result-object v3

    goto :goto_4

    :pswitch_4
    new-instance v3, Lk/x;

    invoke-direct {v3, v0, p4, v2}, Lk/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    :pswitch_5
    new-instance v3, Lk/b0;

    invoke-direct {v3, v0, p4}, Lk/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0, v0, p4}, Le/F;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lk/B;

    move-result-object v3

    goto :goto_4

    :pswitch_7
    new-instance v3, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v3, v0, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_8
    new-instance v3, Lk/w;

    const v4, 0x7f040264

    invoke-direct {v3, v0, p4, v4}, Lk/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0, v0, p4}, Le/F;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v3

    goto :goto_4

    :pswitch_a
    new-instance v3, Lk/y;

    invoke-direct {v3, v0, p4}, Lk/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_b
    new-instance v3, Lk/q;

    invoke-direct {v3, v0, p4}, Lk/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    :pswitch_c
    new-instance v3, Lk/C;

    invoke-direct {v3, v0, p4}, Lk/C;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v3, :cond_16

    if-eq p3, v0, :cond_16

    iget-object p3, p0, Le/F;->a:[Ljava/lang/Object;

    const-string v3, "view"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string p2, "class"

    invoke-interface {p4, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_12
    :try_start_1
    aput-object v0, p3, v2

    aput-object p4, p3, p1

    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v6, v3, :cond_15

    move v3, v2

    :goto_5
    sget-object v4, Le/F;->d:[Ljava/lang/String;

    if-ge v3, v5, :cond_14

    aget-object v4, v4, v3

    invoke-virtual {p0, v0, p2, v4}, Le/F;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_13

    aput-object v1, p3, v2

    aput-object v1, p3, p1

    move-object v1, v4

    goto :goto_7

    :cond_13
    add-int/2addr v3, p1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_14
    aput-object v1, p3, v2

    aput-object v1, p3, p1

    goto :goto_7

    :cond_15
    :try_start_2
    invoke-virtual {p0, v0, p2, v1}, Le/F;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    aput-object v1, p3, v2

    aput-object v1, p3, p1

    move-object v1, p0

    goto :goto_7

    :goto_6
    aput-object v1, p3, v2

    aput-object v1, p3, p1

    throw p0

    :catch_0
    aput-object v1, p3, v2

    aput-object v1, p3, p1

    :goto_7
    move-object v3, v1

    :cond_16
    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of p1, p0, Landroid/content/ContextWrapper;

    if-eqz p1, :cond_19

    sget-object p1, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_8

    :cond_17
    sget-object p1, Le/F;->c:[I

    invoke-virtual {p0, p4, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    new-instance p2, Le/E;

    invoke-direct {p2, v3, p1}, Le/E;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_19
    :goto_8
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_c
        -0x56c015e7 -> :sswitch_b
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_9
        -0x37e04bb3 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Le/C;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final p(Z)Z
    .locals 26

    move-object/from16 v1, p0

    iget-boolean v0, v1, Le/C;->R:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget v0, v1, Le/C;->U:I

    const/16 v3, -0x64

    if-eq v0, v3, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    sget v0, Le/r;->d:I

    goto :goto_0

    :goto_1
    iget-object v4, v1, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Le/C;->D(Landroid/content/Context;I)I

    move-result v5

    const/4 v0, 0x0

    invoke-static {v4, v5, v0, v2}, Le/C;->u(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v6

    iget-boolean v0, v1, Le/C;->X:Z

    const-string v7, "AppCompatDelegate"

    iget-object v8, v1, Le/C;->j:Ljava/lang/Object;

    const/4 v9, 0x1

    if-nez v0, :cond_3

    instance-of v0, v8, Landroid/app/Activity;

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {v10, v4, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v11, 0x100c0000

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v1, Le/C;->W:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v10, "Exception while getting ActivityInfo"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v2, v1, Le/C;->W:I

    :cond_3
    :goto_2
    iput-boolean v9, v1, Le/C;->X:Z

    iget v0, v1, Le/C;->W:I

    :goto_3
    iget-object v10, v1, Le/C;->T:Landroid/content/res/Configuration;

    if-nez v10, :cond_4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    :cond_4
    iget v11, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v11, v11, 0x30

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    invoke-static {v10}, Le/w;->b(Landroid/content/res/Configuration;)LF/i;

    move-result-object v14

    if-eq v11, v6, :cond_5

    const/16 v15, 0x200

    goto :goto_4

    :cond_5
    move v15, v2

    :goto_4
    not-int v12, v0

    and-int/2addr v12, v15

    if-eqz v12, :cond_6

    if-eqz p1, :cond_6

    iget-boolean v12, v1, Le/C;->O:Z

    if-eqz v12, :cond_6

    sget-boolean v12, Le/C;->m0:Z

    if-nez v12, :cond_7

    iget-boolean v2, v1, Le/C;->Q:Z

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v10, v15

    const/4 v11, 0x0

    goto/16 :goto_9

    :cond_7
    :goto_5
    instance-of v2, v8, Landroid/app/Activity;

    if-eqz v2, :cond_6

    move-object v2, v8

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChild()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_8

    move v13, v9

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    and-int/lit8 v13, v0, 0x4

    if-eqz v13, :cond_9

    move v13, v9

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    :goto_7
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    and-int/lit16 v13, v0, 0x2000

    if-eqz v13, :cond_a

    move v13, v9

    goto :goto_8

    :cond_a
    const/4 v13, 0x0

    :goto_8
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v13, v1, Le/C;->O:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v13, v1, Le/C;->Q:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    iget-object v13, v1, Le/C;->j:Ljava/lang/Object;

    move-object v12, v11

    move-object/from16 v25, v13

    const/4 v11, 0x0

    move-object/from16 v13, v16

    move v10, v15

    move-object v15, v11

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    move-object/from16 v22, v25

    move-object/from16 v23, v24

    filled-new-array/range {v12 .. v23}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "updateAppConfiguration attempting to recreate Activity [currentNightMode:%s, newNightMode:%s, currentLocales:%s, newLocales:%s, activityHandlingNightModeChanges:%s, activityHandlingLocalesChanges:%s, activityHandlingLayoutDirectionChanges:%s, baseContextAttached:%s, created:%s, canReturnDifferentContext:%s, host:%s], application configuration [%s]"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/app/Activity;->recreate()V

    move v2, v9

    goto :goto_a

    :goto_9
    const/4 v2, 0x0

    :goto_a
    if-nez v2, :cond_e

    if-eqz v10, :cond_e

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    move v2, v9

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-direct {v7, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, -0x31

    or-int/2addr v6, v12

    iput v6, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v7, v11}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v0, v1, Le/C;->V:I

    if-eqz v0, :cond_c

    invoke-virtual {v4, v0}, Landroid/content/Context;->setTheme(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget v6, v1, Le/C;->V:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v2, :cond_f

    instance-of v0, v8, Landroid/app/Activity;

    if-eqz v0, :cond_f

    move-object v0, v8

    check-cast v0, Landroid/app/Activity;

    instance-of v2, v0, Landroidx/lifecycle/w;

    if-eqz v2, :cond_d

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/w;

    invoke-interface {v2}, Landroidx/lifecycle/w;->getLifecycle()Landroidx/lifecycle/r;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/y;

    iget-object v2, v2, Landroidx/lifecycle/y;->c:Landroidx/lifecycle/q;

    sget-object v6, Landroidx/lifecycle/q;->e:Landroidx/lifecycle/q;

    invoke-virtual {v2, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_f

    invoke-virtual {v0, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_c

    :cond_d
    iget-boolean v2, v1, Le/C;->Q:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Le/C;->R:Z

    if-nez v2, :cond_f

    invoke-virtual {v0, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_c

    :cond_e
    move v9, v2

    :cond_f
    :goto_c
    if-eqz v9, :cond_10

    instance-of v0, v8, Le/n;

    if-eqz v0, :cond_10

    const/16 v0, 0x200

    and-int/2addr v0, v10

    if-eqz v0, :cond_10

    check-cast v8, Le/n;

    invoke-virtual {v8, v5}, Le/n;->onNightModeChanged(I)V

    :cond_10
    if-nez v3, :cond_11

    invoke-virtual {v1, v4}, Le/C;->z(Landroid/content/Context;)Lcom/google/android/gms/internal/firebase-auth-api/O3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->i()V

    goto :goto_d

    :cond_11
    iget-object v0, v1, Le/C;->Y:Le/z;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->d()V

    :cond_12
    :goto_d
    const/4 v0, 0x3

    if-ne v3, v0, :cond_14

    iget-object v0, v1, Le/C;->Z:Le/z;

    if-nez v0, :cond_13

    new-instance v0, Le/z;

    invoke-direct {v0, v1, v4}, Le/z;-><init>(Le/C;Landroid/content/Context;)V

    iput-object v0, v1, Le/C;->Z:Le/z;

    :cond_13
    iget-object v0, v1, Le/C;->Z:Le/z;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->i()V

    goto :goto_e

    :cond_14
    iget-object v0, v1, Le/C;->Z:Le/z;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/O3;->d()V

    :cond_15
    :goto_e
    return v9
.end method

.method public final q(Landroid/view/Window;)V
    .locals 7

    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Le/y;

    if-nez v2, :cond_5

    new-instance v1, Le/y;

    invoke-direct {v1, p0, v0}, Le/y;-><init>(Le/C;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Le/C;->m:Le/y;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    sget-object v0, Le/C;->l0:[I

    iget-object v1, p0, Le/C;->k:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lk/s;->a()Lk/s;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v5, v4, Lk/s;->a:Lk/D0;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v3, v6}, Lk/D0;->d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p1, p0, Le/C;->l:Landroid/view/Window;

    iget-object p1, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    if-nez p1, :cond_4

    if-eqz p1, :cond_2

    iget-object v0, p0, Le/C;->i0:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Le/x;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Le/C;->i0:Landroid/window/OnBackInvokedCallback;

    :cond_2
    iget-object p1, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Le/x;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Le/C;->h0:Landroid/window/OnBackInvokedDispatcher;

    :goto_1
    invoke-virtual {p0}, Le/C;->J()V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final r(ILe/B;Lj/i;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Le/C;->L:[Le/B;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Le/B;->h:Lj/i;

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean p2, p2, Le/B;->m:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-boolean p2, p0, Le/C;->R:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p2, Le/y;->g:Z

    invoke-interface {p0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p2, Le/y;->g:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    iput-boolean v1, p2, Le/y;->g:Z

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final s(Lj/i;)V
    .locals 2

    iget-boolean v0, p0, Le/C;->K:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Le/C;->K:Z

    iget-object v0, p0, Le/C;->r:Lk/d0;

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lk/k;->i()Z

    iget-object v0, v0, Lk/k;->v:Lk/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj/s;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lj/s;->j:Lj/z;

    invoke-virtual {v0}, Lj/z;->dismiss()V

    :cond_1
    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Le/C;->R:Z

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Le/C;->K:Z

    return-void
.end method

.method public final t(Le/B;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Le/B;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Le/C;->r:Lk/d0;

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v0, Lk/I1;

    iget-object v0, v0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Le/B;->h:Lj/i;

    invoke-virtual {p0, p1}, Le/C;->s(Lj/i;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/C;->k:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p1, Le/B;->m:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Le/B;->e:Le/A;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Le/B;->e:Le/A;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p1, Le/B;->a:I

    invoke-virtual {p0, p2, p1, v1}, Le/C;->r(ILe/B;Lj/i;)V

    :cond_2
    const/4 p2, 0x0

    iput-boolean p2, p1, Le/B;->k:Z

    iput-boolean p2, p1, Le/B;->l:Z

    iput-boolean p2, p1, Le/B;->m:Z

    iput-object v1, p1, Le/B;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Le/B;->n:Z

    iget-object p2, p0, Le/C;->M:Le/B;

    if-ne p2, p1, :cond_3

    iput-object v1, p0, Le/C;->M:Le/B;

    :cond_3
    iget p1, p1, Le/B;->a:I

    if-nez p1, :cond_4

    invoke-virtual {p0}, Le/C;->J()V

    :cond_4
    return-void
.end method

.method public final v(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v1, v0, LJ/e;

    if-nez v1, :cond_0

    instance-of v0, v0, Le/k;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, LJ/Q;->a:Ljava/util/WeakHashMap;

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Le/C;->m:Le/y;

    iget-object v4, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iput-boolean v1, v0, Le/y;->f:Z

    invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, v0, Le/y;->f:Z

    if-eqz v4, :cond_2

    return v1

    :catchall_0
    move-exception p0

    iput-boolean v2, v0, Le/y;->f:Z

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_7

    if-eq v0, v5, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v2}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-boolean v2, v0, Le/B;->m:Z

    if-nez v2, :cond_12

    invoke-virtual {p0, v0, p1}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    goto/16 :goto_6

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Le/C;->N:Z

    :cond_6
    :goto_1
    move v1, v2

    goto/16 :goto_6

    :cond_7
    if-eq v0, v5, :cond_11

    if-eq v0, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Le/C;->u:Li/b;

    if-eqz v0, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p0, v2}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-object v3, p0, Le/C;->r:Lk/d0;

    iget-object v4, p0, Le/C;->k:Landroid/content/Context;

    if-eqz v3, :cond_b

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v3, Lk/I1;

    iget-object v3, v3, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_b

    iget-boolean v3, v3, Landroidx/appcompat/widget/ActionMenuView;->u:Z

    if-eqz v3, :cond_b

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Le/C;->r:Lk/d0;

    check-cast v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object v3, v3, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast v3, Lk/I1;

    iget-object v3, v3, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->q()Z

    move-result v3

    if-nez v3, :cond_a

    iget-boolean v3, p0, Le/C;->R:Z

    if-nez v3, :cond_e

    invoke-virtual {p0, v0, p1}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Le/C;->r:Lk/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast p0, Lk/I1;

    iget-object p0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->w()Z

    move-result p0

    goto :goto_5

    :cond_a
    iget-object p0, p0, Le/C;->r:Lk/d0;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->k()V

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->g:Lk/e0;

    check-cast p0, Lk/I1;

    iget-object p0, p0, Lk/I1;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_e

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuView;->v:Lk/k;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lk/k;->i()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_3

    :cond_b
    iget-boolean v3, v0, Le/B;->m:Z

    if-nez v3, :cond_f

    iget-boolean v5, v0, Le/B;->l:Z

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    iget-boolean v3, v0, Le/B;->k:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v0, Le/B;->o:Z

    if-eqz v3, :cond_d

    iput-boolean v2, v0, Le/B;->k:Z

    invoke-virtual {p0, v0, p1}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2

    :cond_d
    move v3, v1

    :goto_2
    if-eqz v3, :cond_e

    invoke-virtual {p0, v0, p1}, Le/C;->F(Le/B;Landroid/view/KeyEvent;)V

    :goto_3
    move p0, v1

    goto :goto_5

    :cond_e
    move p0, v2

    goto :goto_5

    :cond_f
    :goto_4
    invoke-virtual {p0, v0, v1}, Le/C;->t(Le/B;Z)V

    move p0, v3

    :goto_5
    if-eqz p0, :cond_12

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_10

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_6

    :cond_10
    const-string p0, "AppCompatDelegate"

    const-string p1, "Couldn\'t get audio manager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Le/C;->E()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_12
    :goto_6
    return v1
.end method

.method public final w(I)V
    .locals 3

    invoke-virtual {p0, p1}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-object v1, v0, Le/B;->h:Lj/i;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Le/B;->h:Lj/i;

    invoke-virtual {v2, v1}, Lj/i;->t(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Le/B;->p:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Le/B;->h:Lj/i;

    invoke-virtual {v1}, Lj/i;->w()V

    iget-object v1, v0, Le/B;->h:Lj/i;

    invoke-virtual {v1}, Lj/i;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Le/B;->o:Z

    iput-boolean v1, v0, Le/B;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Le/C;->r:Lk/d0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/C;->A(I)Le/B;

    move-result-object v0

    iput-boolean p1, v0, Le/B;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Le/C;->H(Le/B;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public final x()V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Le/C;->z:Z

    if-nez v2, :cond_1c

    sget-object v2, Lc/a;->j:[I

    iget-object v3, p0, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/16 v5, 0x91

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v6, 0x9a

    invoke-virtual {v4, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/16 v7, 0x6c

    if-eqz v6, :cond_0

    invoke-virtual {p0, v0}, Le/C;->j(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v7}, Le/C;->j(I)Z

    :cond_1
    :goto_0
    const/16 v5, 0x92

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    const/16 v6, 0x6d

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Le/C;->j(I)Z

    :cond_2
    const/16 v5, 0x93

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Le/C;->j(I)Z

    :cond_3
    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Le/C;->I:Z

    const/16 v5, 0x56

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Le/C;->j0:Z

    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Le/C;->y()V

    iget-object v4, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-boolean v5, p0, Le/C;->J:Z

    const/4 v8, 0x0

    if-nez v5, :cond_a

    iget-boolean v5, p0, Le/C;->I:Z

    if-eqz v5, :cond_5

    const v5, 0x7f0d0089

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-boolean v1, p0, Le/C;->G:Z

    iput-boolean v1, p0, Le/C;->F:Z

    goto/16 :goto_2

    :cond_5
    iget-boolean v4, p0, Le/C;->F:Z

    if-eqz v4, :cond_9

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v9, 0x7f04000a

    invoke-virtual {v5, v9, v4, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_6

    new-instance v5, Li/e;

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v3, v4}, Li/e;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    move-object v5, v3

    :goto_1
    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d00ab

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a00b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lk/d0;

    iput-object v5, p0, Le/C;->r:Lk/d0;

    iget-object v9, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-interface {v5, v9}, Lk/d0;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v5, p0, Le/C;->G:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Le/C;->r:Lk/d0;

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_7
    iget-boolean v5, p0, Le/C;->D:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Le/C;->r:Lk/d0;

    const/4 v6, 0x2

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    :cond_8
    iget-boolean v5, p0, Le/C;->E:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Le/C;->r:Lk/d0;

    const/4 v6, 0x5

    check-cast v5, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j(I)V

    goto :goto_2

    :cond_9
    move-object v4, v8

    goto :goto_2

    :cond_a
    iget-boolean v5, p0, Le/C;->H:Z

    if-eqz v5, :cond_b

    const v5, 0x7f0d00aa

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_b
    const v5, 0x7f0d00a9

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    :cond_c
    :goto_2
    if-eqz v4, :cond_1a

    new-instance v5, Le/t;

    invoke-direct {v5, p0, v1}, Le/t;-><init>(Le/C;I)V

    sget-object v6, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-static {v4, v5}, LJ/I;->u(Landroid/view/View;LJ/q;)V

    iget-object v5, p0, Le/C;->r:Lk/d0;

    if-nez v5, :cond_d

    const v5, 0x7f0a028e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Le/C;->B:Landroid/widget/TextView;

    :cond_d
    sget-object v5, Lk/N1;->a:Ljava/lang/reflect/Method;

    const-string v5, "Could not invoke makeOptionalFitsSystemWindows"

    const-string v6, "ViewUtils"

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "makeOptionalFitsSystemWindows"

    invoke-virtual {v9, v10, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v9, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :catch_1
    move-exception v9

    goto :goto_5

    :cond_e
    :goto_3
    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v6, v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v5, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v6, p0, Le/C;->l:Landroid/view/Window;

    const v9, 0x1020002

    invoke-virtual {v6, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_10

    :goto_7
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_f

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_f
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setId(I)V

    instance-of v10, v6, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_10

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    iget-object v6, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v6, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v6, Le/t;

    invoke-direct {v6, p0, v0}, Le/t;-><init>(Le/C;I)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Lk/c0;)V

    iput-object v4, p0, Le/C;->A:Landroid/view/ViewGroup;

    iget-object v4, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v5, v4, Landroid/app/Activity;

    if-eqz v5, :cond_11

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_8

    :cond_11
    iget-object v4, p0, Le/C;->q:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p0, Le/C;->r:Lk/d0;

    if-eqz v5, :cond_12

    invoke-interface {v5, v4}, Lk/d0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_12
    iget-object v5, p0, Le/C;->o:Le/a;

    if-eqz v5, :cond_13

    invoke-virtual {v5, v4}, Le/a;->p(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_13
    iget-object v5, p0, Le/C;->B:Landroid/widget/TextView;

    if-eqz v5, :cond_14

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_9
    iget-object v4, p0, Le/C;->A:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v5, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    iget-object v10, v4, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {v10, v6, v8, v9, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v5, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Landroid/view/View;->isLaidOut()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    :cond_15
    invoke-virtual {v3, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x98

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x99

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v3, 0x97

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v3, 0x94

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    const/16 v3, 0x95

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v4}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iput-boolean v0, p0, Le/C;->z:Z

    invoke-virtual {p0, v1}, Le/C;->A(I)Le/B;

    move-result-object v0

    iget-boolean v1, p0, Le/C;->R:Z

    if-nez v1, :cond_1c

    iget-object v0, v0, Le/B;->h:Lj/i;

    if-nez v0, :cond_1c

    invoke-virtual {p0, v7}, Le/C;->C(I)V

    goto :goto_a

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Le/C;->F:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/C;->G:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/C;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Le/C;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Le/C;->J:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "createSubDecor: mContext = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCompatDelegate"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_a
    return-void
.end method

.method public final y()V
    .locals 2

    iget-object v0, p0, Le/C;->l:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/C;->q(Landroid/view/Window;)V

    :cond_0
    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "We have not been given a Window"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(Landroid/content/Context;)Lcom/google/android/gms/internal/firebase-auth-api/O3;
    .locals 4

    iget-object v0, p0, Le/C;->Y:Le/z;

    if-nez v0, :cond_1

    new-instance v0, Le/z;

    sget-object v1, LJ/r0;->f:LJ/r0;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, LJ/r0;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, Le/N;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, LJ/r0;->e:Ljava/lang/Object;

    iput-object p1, v1, LJ/r0;->c:Ljava/lang/Object;

    iput-object v2, v1, LJ/r0;->d:Ljava/lang/Object;

    sput-object v1, LJ/r0;->f:LJ/r0;

    :cond_0
    sget-object p1, LJ/r0;->f:LJ/r0;

    invoke-direct {v0, p0, p1}, Le/z;-><init>(Le/C;LJ/r0;)V

    iput-object v0, p0, Le/C;->Y:Le/z;

    :cond_1
    iget-object p0, p0, Le/C;->Y:Le/z;

    return-object p0
.end method
