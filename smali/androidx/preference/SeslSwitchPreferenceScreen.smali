.class public Landroidx/preference/SeslSwitchPreferenceScreen;
.super Landroidx/preference/SwitchPreferenceCompat;
.source "SourceFile"


# instance fields
.field public final i0:Landroidx/preference/K;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const v0, 0x7f040488

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroidx/preference/K;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/preference/K;-><init>(Landroidx/preference/Preference;I)V

    iput-object v1, p0, Landroidx/preference/SeslSwitchPreferenceScreen;->i0:Landroidx/preference/K;

    sget-object v1, Landroidx/preference/I;->f:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "SwitchPreferenceScreen"

    const-string v0, "SwitchPreferenceScreen should getfragment property. Fragment property does not exsit in SwitchPreferenceScreen"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const p2, 0x7f0d00a2

    iput p2, p0, Landroidx/preference/Preference;->G:I

    const p2, 0x7f0d00c0

    iput p2, p0, Landroidx/preference/Preference;->H:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final n(Landroidx/preference/H;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->n(Landroidx/preference/H;)V

    iget-object v0, p1, Lj0/b0;->a:Landroid/view/View;

    iget-object p0, p0, Landroidx/preference/SeslSwitchPreferenceScreen;->i0:Landroidx/preference/K;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p0, 0x1020016

    invoke-virtual {p1, p0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026a

    invoke-virtual {p1, v1}, Landroidx/preference/H;->s(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lo4/a;->m()I

    move-result v1

    invoke-static {v1, v0}, Lp0/a;->p(ILandroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method
