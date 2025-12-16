.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final D:Z

.field public final E:Z

.field public final F:Z

.field public G:I

.field public H:I

.field public final I:Z

.field public J:Landroidx/preference/D;

.field public K:Ljava/util/ArrayList;

.field public L:Landroidx/preference/PreferenceGroup;

.field public M:Z

.field public N:Landroidx/preference/p;

.field public O:Landroidx/preference/q;

.field public final Q:Landroidx/preference/l;

.field public R:Z

.field public T:Z

.field public U:I

.field public V:Z

.field public final W:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/Context;

.field public d:Landroidx/preference/F;

.field public e:J

.field public f:Z

.field public g:Landroidx/preference/n;

.field public h:Landroidx/preference/o;

.field public i:I

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:Landroid/graphics/drawable/Drawable;

.field public final n:Ljava/lang/String;

.field public o:Landroid/content/Intent;

.field public final p:Ljava/lang/String;

.field public q:Landroid/os/Bundle;

.field public r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/Object;

.field public w:Z

.field public x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0403c4

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, LA/b;->b(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/Preference;->i:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/preference/Preference;->r:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->s:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->t:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->w:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->x:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->y:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->z:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->A:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->C:Z

    iput-boolean v1, p0, Landroidx/preference/Preference;->F:Z

    const v2, 0x7f0d009a

    iput v2, p0, Landroidx/preference/Preference;->G:I

    new-instance v2, Landroidx/preference/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/preference/l;-><init>(Landroidx/preference/Preference;I)V

    iput-object v2, p0, Landroidx/preference/Preference;->Q:Landroidx/preference/l;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/preference/Preference;->R:Z

    iput-boolean v2, p0, Landroidx/preference/Preference;->T:Z

    iput v2, p0, Landroidx/preference/Preference;->U:I

    iput-boolean v2, p0, Landroidx/preference/Preference;->V:Z

    iput-object p1, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    sget-object v3, Landroidx/preference/I;->f:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/16 p4, 0x17

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/preference/Preference;->l:I

    const/16 p3, 0x1b

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    const/16 p3, 0x23

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    const/16 p3, 0x22

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    if-nez p3, :cond_2

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_2
    iput-object p3, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    const/16 p3, 0x8

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/16 p4, 0x1d

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Landroidx/preference/Preference;->i:I

    const/16 p3, 0x16

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    const/16 p3, 0xd

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_3
    iput-object p3, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    const/4 p3, 0x3

    const p4, 0x7f0d0063

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/16 p4, 0x1c

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/preference/Preference;->G:I

    const/16 p3, 0x9

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/16 p4, 0x24

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/preference/Preference;->H:I

    const/16 p3, 0x19

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->I:Z

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 p4, 0x15

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->r:Z

    const/4 p3, 0x5

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 p4, 0x1f

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->s:Z

    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    const/16 v0, 0x1e

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/preference/Preference;->t:Z

    const/16 p4, 0x13

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    const/16 p4, 0xa

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_4
    iput-object p4, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    const/16 p4, 0x10

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/preference/Preference;->z:Z

    const/16 p4, 0x11

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->A:Z

    const/16 p3, 0x12

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p0, p2, p3}, Landroidx/preference/Preference;->q(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/16 p3, 0xb

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-virtual {p0, p2, p3}, Landroidx/preference/Preference;->q(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    :cond_6
    :goto_0
    const/16 p3, 0xc

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 p4, 0x20

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->F:Z

    const/16 p3, 0x21

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    iput-boolean p4, p0, Landroidx/preference/Preference;->B:Z

    if-eqz p4, :cond_7

    const/16 p4, 0xe

    invoke-virtual {p2, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->C:Z

    :cond_7
    const/16 p3, 0xf

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 p4, 0x18

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->D:Z

    const/16 p3, 0x1a

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->y:Z

    const/16 p3, 0x14

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/preference/Preference;->E:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const p4, 0x1010038

    invoke-virtual {p3, p4, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p3, p2, Landroid/util/TypedValue;->resourceId:I

    if-lez p3, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/Preference;->W:Landroid/content/res/ColorStateList;

    :cond_8
    return-void
.end method

.method public static x(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/preference/Preference;->x(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y(Landroid/widget/TextView;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLineBreakWordStyle(I)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final B()Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iget-object p0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    iget-boolean p0, p0, Landroidx/preference/F;->e:Z

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/Serializable;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroidx/preference/n;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/idm/fotaagent/IDMApplication;->getEnablerFactory()Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/idm/fotaagent/enabler/enablerfactory/AbstractEnablerFactory;->getAdminCommandExecutor(Landroid/content/Context;)Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/idm/fotaagent/enabler/ui/admin/main/hidden/executor/AdminCommandExecutor;->execute(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/o;->a(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->r(Landroid/os/Parcelable;)V

    iget-boolean p0, p0, Landroidx/preference/Preference;->M:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/preference/Preference;

    iget v0, p0, Landroidx/preference/Preference;->i:I

    iget v1, p1, Landroidx/preference/Preference;->i:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroid/os/Parcelable;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->M:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/Preference;->e:J

    return-wide v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    invoke-virtual {v0}, Landroidx/preference/F;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->O:Landroidx/preference/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroidx/preference/q;->b(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/Preference;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->w:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/preference/Preference;->x:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Z
    .locals 1

    const-string v0, "accessibility"

    iget-object p0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/Preference;->J:Landroidx/preference/D;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/preference/D;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, v0, Lj0/A;->a:Lj0/B;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lj0/B;->c(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 4

    iget-object p0, p0, Landroidx/preference/Preference;->K:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    iget-boolean v3, v2, Landroidx/preference/Preference;->w:Z

    if-ne v3, p1, :cond_1

    xor-int/lit8 v3, p1, 0x1

    iput-boolean v3, v2, Landroidx/preference/Preference;->w:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->A()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->k(Z)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->j()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->E(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, v2, Landroidx/preference/Preference;->K:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Landroidx/preference/Preference;->K:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, v2, Landroidx/preference/Preference;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->A()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/preference/Preference;->w:Z

    if-ne v1, v0, :cond_4

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->w:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->k(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dependency \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not found for preference \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" (title: \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public m(Landroidx/preference/F;)V
    .locals 4

    iput-object p1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    iget-boolean v0, p0, Landroidx/preference/Preference;->f:Z

    if-nez v0, :cond_0

    monitor-enter p1

    :try_start_0
    iget-wide v0, p1, Landroidx/preference/F;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p1, Landroidx/preference/F;->b:J

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide v0, p0, Landroidx/preference/Preference;->e:J

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/F;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/preference/Preference;->u(Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/preference/Preference;->u(Ljava/lang/Object;Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public n(Landroidx/preference/H;)V
    .locals 11

    iget-boolean v0, p0, Landroidx/preference/Preference;->C:Z

    iget-boolean v1, p0, Landroidx/preference/Preference;->B:Z

    iget-object v2, p0, Landroidx/preference/Preference;->Q:Landroidx/preference/l;

    iget-object v3, p1, Lj0/b0;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v4}, Landroidx/preference/Preference;->y(Landroid/widget/TextView;)V

    iget-object v7, p0, Landroidx/preference/Preference;->W:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move-object v4, v6

    :goto_0
    iput v2, p1, Landroidx/preference/H;->A:I

    iget-boolean v7, p0, Landroidx/preference/Preference;->R:Z

    iget v8, p0, Landroidx/preference/Preference;->U:I

    iget-boolean v9, p0, Landroidx/preference/Preference;->T:Z

    iput-boolean v7, p1, Landroidx/preference/H;->C:Z

    iput v8, p1, Landroidx/preference/H;->B:I

    iput-boolean v9, p1, Landroidx/preference/H;->D:Z

    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-boolean v8, p0, Landroidx/preference/Preference;->s:Z

    if-eqz v7, :cond_6

    iget-object v9, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_3

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_3
    if-nez v8, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of v4, p0, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_5

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_6

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Landroidx/preference/Preference;->D:Z

    const/4 v4, 0x4

    if-eqz v0, :cond_c

    iget v7, p0, Landroidx/preference/Preference;->l:I

    if-nez v7, :cond_7

    iget-object v9, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_9

    :cond_7
    iget-object v9, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_8

    iget-object v9, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-static {v9, v7}, Lf1/a;->A(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget-object v7, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v7, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    move v7, v4

    goto :goto_2

    :cond_b
    move v7, v5

    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    :goto_3
    const v0, 0x7f0a0107

    invoke-virtual {p1, v0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    const v0, 0x102003e

    invoke-virtual {p1, v0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v0

    :cond_d
    if-eqz v0, :cond_10

    iget-object v7, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_e
    if-eqz v1, :cond_f

    move v5, v4

    :cond_f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_4
    iget-boolean v0, p0, Landroidx/preference/Preference;->F:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Z

    move-result v0

    invoke-static {v3, v0}, Landroidx/preference/Preference;->x(Landroid/view/View;Z)V

    goto :goto_5

    :cond_11
    const/4 v0, 0x1

    invoke-static {v3, v0}, Landroidx/preference/Preference;->x(Landroid/view/View;Z)V

    :goto_5
    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Landroidx/preference/Preference;->z:Z

    iput-boolean v0, p1, Landroidx/preference/H;->y:Z

    iget-boolean v0, p0, Landroidx/preference/Preference;->A:Z

    iput-boolean v0, p1, Landroidx/preference/H;->z:Z

    iget-boolean p1, p0, Landroidx/preference/Preference;->E:Z

    if-eqz p1, :cond_12

    iget-object v0, p0, Landroidx/preference/Preference;->N:Landroidx/preference/p;

    if-nez v0, :cond_12

    new-instance v0, Landroidx/preference/p;

    invoke-direct {v0, p0}, Landroidx/preference/p;-><init>(Landroidx/preference/Preference;)V

    iput-object v0, p0, Landroidx/preference/Preference;->N:Landroidx/preference/p;

    :cond_12
    if-eqz p1, :cond_13

    iget-object p0, p0, Landroidx/preference/Preference;->N:Landroidx/preference/p;

    goto :goto_6

    :cond_13
    move-object p0, v6

    :goto_6
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {v3, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_14

    if-nez v8, :cond_14

    sget-object p0, LJ/Q;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Landroidx/preference/Preference;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/preference/F;->g:Landroidx/preference/PreferenceScreen;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->E(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, v2, Landroidx/preference/Preference;->K:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public q(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public r(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong state class -- expecting Preference State"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public s()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    sget-object p0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object p0
.end method

.method public t(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/preference/Preference;->s:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->o()V

    iget-object p1, p0, Landroidx/preference/Preference;->h:Landroidx/preference/o;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroidx/preference/o;->a(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/preference/F;->h:Landroidx/preference/z;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroidx/preference/z;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/preference/Preference;->c:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    invoke-virtual {v0}, Landroidx/preference/F;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->C(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public z(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/preference/Preference;->O:Landroidx/preference/q;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Preference already has a SummaryProvider set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
