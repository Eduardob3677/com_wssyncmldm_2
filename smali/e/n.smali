.class public abstract Le/n;
.super Landroidx/fragment/app/G;
.source "SourceFile"

# interfaces
.implements Le/o;
.implements Ly/C;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Le/r;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/G;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Lx0/d;

    move-result-object v0

    new-instance v1, Le/l;

    invoke-direct {v1, p0}, Le/l;-><init>(Le/n;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Lx0/d;->c(Ljava/lang/String;Lx0/c;)V

    new-instance v0, Le/m;

    invoke-direct {v0, p0}, Le/m;-><init>(Le/n;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(La/b;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Le/n;->j()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->x()V

    iget-object v0, p0, Le/C;->A:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le/C;->m:Le/y;

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/y;->a(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object v1

    check-cast v1, Le/C;

    iput-boolean v0, v1, Le/C;->O:Z

    iget v2, v1, Le/C;->U:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Le/r;->d:I

    :goto_0
    invoke-virtual {v1, p1, v2}, Le/C;->D(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p1}, Le/r;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Le/r;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget v2, LF/b;->a:I

    sget-boolean v2, Le/r;->f:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/idm/fotaagent/analytics/diagmon/b;

    invoke-direct {v2, p1, v0}, Lcom/idm/fotaagent/analytics/diagmon/b;-><init>(Landroid/content/Context;I)V

    sget-object v3, Le/r;->c:Le/I;

    invoke-virtual {v3, v2}, Le/I;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    sget-boolean v2, Le/C;->n0:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_3

    invoke-static {p1, v1, v4, v3}, Le/C;->u(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v5, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    :cond_3
    instance-of v2, p1, Li/e;

    if-eqz v2, :cond_4

    invoke-static {p1, v1, v4, v3}, Le/C;->u(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v2

    :try_start_1
    move-object v3, p1

    check-cast v3, Li/e;

    invoke-virtual {v3, v2}, Li/e;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    :cond_4
    sget-boolean v2, Le/C;->m0:Z

    if-nez v2, :cond_5

    goto/16 :goto_3

    :cond_5
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v3, -0x1

    iput v3, v2, Landroid/content/res/Configuration;->uiMode:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    iput v6, v2, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_1b

    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput v3, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    iget v3, v2, Landroid/content/res/Configuration;->fontScale:F

    iget v6, v5, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_7

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    :cond_7
    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    iget v6, v5, Landroid/content/res/Configuration;->mcc:I

    if-eq v3, v6, :cond_8

    iput v6, v4, Landroid/content/res/Configuration;->mcc:I

    :cond_8
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    iget v6, v5, Landroid/content/res/Configuration;->mnc:I

    if-eq v3, v6, :cond_9

    iput v6, v4, Landroid/content/res/Configuration;->mnc:I

    :cond_9
    invoke-static {v2, v5, v4}, Le/w;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iget v6, v5, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v3, v6, :cond_a

    iput v6, v4, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v3, v6, :cond_b

    iput v6, v4, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v3, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v3, v6, :cond_c

    iput v6, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iget v6, v5, Landroid/content/res/Configuration;->navigation:I

    if-eq v3, v6, :cond_d

    iput v6, v4, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v3, v2, Landroid/content/res/Configuration;->navigationHidden:I

    iget v6, v5, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v3, v6, :cond_e

    iput v6, v4, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v6, :cond_f

    iput v6, v4, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-eq v3, v6, :cond_10

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0xc0

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0xc0

    if-eq v3, v6, :cond_11

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x30

    if-eq v3, v6, :cond_12

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v3, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v3, v3, 0x300

    iget v6, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v6, v6, 0x300

    if-eq v3, v6, :cond_13

    iget v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0x3

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0x3

    if-eq v3, v6, :cond_14

    iget v3, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v3, v2, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v3, v3, 0xc

    iget v6, v5, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v6, v6, 0xc

    if-eq v3, v6, :cond_15

    iget v3, v4, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->colorMode:I

    :cond_15
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0xf

    if-eq v3, v6, :cond_16

    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    iget v6, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v6, v6, 0x30

    if-eq v3, v6, :cond_17

    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v3, v6

    iput v3, v4, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v3, v6, :cond_18

    iput v6, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v3, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v6, :cond_19

    iput v6, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v3, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v3, v6, :cond_1a

    iput v6, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_1a
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v5, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_1b

    iput v3, v4, Landroid/content/res/Configuration;->densityDpi:I

    :cond_1b
    :goto_2
    invoke-static {p1, v1, v4, v0}, Le/C;->u(Landroid/content/Context;ILandroid/content/res/Configuration;Z)Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Li/e;

    const v2, 0x7f140303

    invoke-direct {v1, p1, v2}, Li/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Li/e;->a(Landroid/content/res/Configuration;)V

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1c

    invoke-virtual {v1}, Li/e;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, LA/q;->a(Landroid/content/res/Resources$Theme;)V

    :catch_2
    :cond_1c
    move-object p1, v1

    :goto_3
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Le/a;->j(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Ly/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->x()V

    iget-object p0, p0, Le/C;->l:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate()Le/r;
    .locals 2

    iget-object v0, p0, Le/n;->mDelegate:Le/r;

    if-nez v0, :cond_0

    sget-object v0, Le/r;->c:Le/I;

    new-instance v0, Le/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0, p0}, Le/C;-><init>(Landroid/content/Context;Landroid/view/Window;Le/o;Ljava/lang/Object;)V

    iput-object v0, p0, Le/n;->mDelegate:Le/r;

    :cond_0
    iget-object p0, p0, Le/n;->mDelegate:Le/r;

    return-object p0
.end method

.method public getDrawerToggleDelegate()Le/b;
    .locals 1

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LP1/e;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, LP1/e;-><init>(I)V

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    iget-object v0, p0, Le/C;->p:Li/j;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/C;->B()V

    new-instance v0, Li/j;

    iget-object v1, p0, Le/C;->o:Le/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/C;->k:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Li/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/C;->p:Li/j;

    :cond_1
    iget-object p0, p0, Le/C;->p:Li/j;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Le/n;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget v1, Lk/L1;->a:I

    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSupportActionBar()Le/a;
    .locals 0

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->B()V

    iget-object p0, p0, Le/C;->o:Le/a;

    return-object p0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {p0}, Lp/a;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->b()V

    return-void
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/S;->h(Landroid/view/View;Landroidx/lifecycle/w;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x7f0a02b7

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lp0/a;->r(Landroid/view/View;Lx0/f;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Ld3/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p1

    check-cast p1, Le/C;

    iget-boolean v0, p1, Le/C;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Le/C;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/C;->B()V

    iget-object v0, p1, Le/C;->o:Le/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a;->g()V

    :cond_0
    invoke-static {}, Lk/s;->a()Lk/s;

    move-result-object v0

    iget-object v1, p1, Le/C;->k:Landroid/content/Context;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lk/s;->a:Lk/D0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v2, Lk/D0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Le/C;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p1, Le/C;->T:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/C;->p(Z)Z

    iget-object p1, p0, Le/n;->mResources:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Le/n;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_2
    return-void

    :goto_1
    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onContentChanged()V
    .locals 0

    invoke-virtual {p0}, Le/n;->onSupportContentChanged()V

    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Ly/D;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ly/C;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lp/a;->h(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    iget-object v1, p1, Ly/D;->d:Landroid/content/Context;

    if-nez p0, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_1
    iget-object p1, p1, Ly/D;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :try_start_0
    invoke-static {v1, p0}, Lp/a;->i(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {v1, p0}, Lp/a;->i(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const-string p1, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/G;->onDestroy()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLocalesChanged(LF/i;)V
    .locals 0

    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/G;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object p1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Le/a;->d()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/n;->onSupportNavigateUp()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->x()V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/G;->onPostResume()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    invoke-virtual {p0}, Le/C;->B()V

    iget-object p0, p0, Le/C;->o:Le/a;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a;->n(Z)V

    :cond_0
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Ly/D;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/G;->onStart()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/C;->p(Z)Z

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/G;->onStop()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->h()V

    return-void
.end method

.method public onSupportActionModeFinished(Li/b;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Li/b;)V
    .locals 0

    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 5

    invoke-virtual {p0}, Le/n;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Le/n;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ly/D;

    invoke-direct {v0, p0}, Ly/D;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Le/n;->onCreateSupportNavigateUpTaskStack(Ly/D;)V

    invoke-virtual {p0, v0}, Le/n;->onPrepareSupportNavigateUpTaskStack(Ly/D;)V

    iget-object v2, v0, Ly/D;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-array v3, v1, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v4, 0x1000c000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v0, v0, Ly/D;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, v0}, Le/n;->supportNavigateUpTo(Landroid/content/Intent;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowStartingSupportActionMode(Li/a;)Li/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public openOptionsMenu()V
    .locals 3

    invoke-virtual {p0}, Le/n;->getSupportActionBar()Le/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Le/n;->j()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->k(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Le/n;->j()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->l(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Le/n;->j()V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Le/r;->m(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    iget-object v0, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Le/C;->B()V

    iget-object v0, p0, Le/C;->o:Le/a;

    instance-of v1, v0, Le/Q;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-object v1, p0, Le/C;->p:Li/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/a;->h()V

    :cond_1
    iput-object v1, p0, Le/C;->o:Le/a;

    if-eqz p1, :cond_3

    new-instance v0, Le/L;

    iget-object v1, p0, Le/C;->j:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Le/C;->q:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Le/C;->m:Le/y;

    invoke-direct {v0, p1, v1, v2}, Le/L;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Le/y;)V

    iput-object v0, p0, Le/C;->o:Le/a;

    iget-object v1, p0, Le/C;->m:Le/y;

    iget-object v0, v0, Le/L;->c:Le/K;

    iput-object v0, v1, Le/y;->d:Le/K;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackInvokedCallbackEnabled(Z)V

    iget-object p1, p0, Le/C;->l:Landroid/view/Window;

    if-eqz p1, :cond_4

    iget-object v0, p0, Le/C;->m:Le/y;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Le/C;->m:Le/y;

    iput-object v1, p1, Le/y;->d:Le/K;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/C;->b()V

    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSupportProgress(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    check-cast p0, Le/C;

    iput p1, p0, Le/C;->V:I

    return-void
.end method

.method public startSupportActionMode(Li/a;)Li/b;
    .locals 0

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->o(Li/a;)Li/b;

    move-result-object p0

    return-object p0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0}, Le/r;->b()V

    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 0

    invoke-virtual {p0}, Le/n;->getDelegate()Le/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Le/r;->j(I)Z

    move-result p0

    return p0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
