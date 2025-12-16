.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:Z

.field public c0:Landroidx/appcompat/widget/SeslSeekBar;

.field public final d0:Z

.field public final e0:Z

.field public final f0:Landroidx/preference/J;

.field public final g0:Landroidx/preference/K;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0403f7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroidx/preference/J;

    invoke-direct {v2, p0}, Landroidx/preference/J;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->f0:Landroidx/preference/J;

    new-instance v2, Landroidx/preference/K;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroidx/preference/K;-><init>(Landroidx/preference/Preference;I)V

    iput-object v2, p0, Landroidx/preference/SeekBarPreference;->g0:Landroidx/preference/K;

    sget-object v2, Landroidx/preference/I;->k:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->Y:I

    const/4 p2, 0x1

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget v2, p0, Landroidx/preference/SeekBarPreference;->Y:I

    if-ge v0, v2, :cond_0

    move v0, v2

    :cond_0
    iget v2, p0, Landroidx/preference/SeekBarPreference;->Z:I

    if-eq v0, v2, :cond_1

    iput v0, p0, Landroidx/preference/SeekBarPreference;->Z:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget v2, p0, Landroidx/preference/SeekBarPreference;->a0:I

    if-eq v0, v2, :cond_2

    iget v2, p0, Landroidx/preference/SeekBarPreference;->Z:I

    iget v3, p0, Landroidx/preference/SeekBarPreference;->Y:I

    sub-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/SeekBarPreference;->a0:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->d0:Z

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->e0:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final D(IZ)V
    .locals 3

    iget v0, p0, Landroidx/preference/SeekBarPreference;->Y:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->Z:I

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->X:I

    if-eq p1, v0, :cond_5

    iput p1, p0, Landroidx/preference/SeekBarPreference;->X:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    not-int v0, p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    invoke-virtual {v1}, Landroidx/preference/F;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    invoke-virtual {v0}, Landroidx/preference/F;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->C(Landroid/content/SharedPreferences$Editor;)V

    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    :cond_5
    return-void
.end method

.method public final n(Landroidx/preference/H;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->n(Landroidx/preference/H;)V

    iget-object v0, p1, Lj0/b0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->g0:Landroidx/preference/K;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a01e0

    invoke-virtual {p1, v0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez p1, :cond_0

    const-string p0, "SeekBarPreference"

    const-string p1, "SeekBar view is null in onBindViewHolder."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->f0:Landroidx/preference/J;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lk/o1;)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->Z:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->Y:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lk/X0;->setMax(I)V

    iget p1, p0, Landroidx/preference/SeekBarPreference;->a0:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0, p1}, Lk/X0;->setKeyProgressIncrement(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1}, Lk/X0;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->a0:I

    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->X:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->Y:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lk/X0;->setProgress(I)V

    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->c0:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->h()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final q(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final r(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/L;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->r(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/L;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->r(Landroid/os/Parcelable;)V

    iget v0, p1, Landroidx/preference/L;->c:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->X:I

    iget v0, p1, Landroidx/preference/L;->d:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->Y:I

    iget p1, p1, Landroidx/preference/L;->e:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->Z:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->j()V

    return-void
.end method

.method public final s()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    iget-boolean v1, p0, Landroidx/preference/Preference;->t:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroidx/preference/L;

    invoke-direct {v1, v0}, Landroidx/preference/L;-><init>(Landroid/view/AbsSavedState;)V

    iget v0, p0, Landroidx/preference/SeekBarPreference;->X:I

    iput v0, v1, Landroidx/preference/L;->c:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->Y:I

    iput v0, v1, Landroidx/preference/L;->d:I

    iget p0, p0, Landroidx/preference/SeekBarPreference;->Z:I

    iput p0, v1, Landroidx/preference/L;->e:I

    return-object v1
.end method

.method public final t(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->d:Landroidx/preference/F;

    invoke-virtual {v0}, Landroidx/preference/F;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->D(IZ)V

    return-void
.end method
