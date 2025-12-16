.class public final LT/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/List;

.field public final d:Landroid/content/Context;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, LT/d;->d:Landroid/content/Context;

    const v0, 0x1090008

    iput v0, p0, LT/d;->f:I

    const v0, 0x1090009

    iput v0, p0, LT/d;->e:I

    const/4 v0, 0x0

    iput v0, p0, LT/d;->g:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, LT/d;->h:Landroid/view/LayoutInflater;

    iget-object p1, p0, LT/d;->c:Ljava/util/List;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, LT/d;->c:Ljava/util/List;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_1

    if-nez p1, :cond_0

    new-instance p3, Landroid/widget/TextView;

    iget-object p1, p0, LT/d;->d:Landroid/content/Context;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, LT/d;->h:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    :cond_1
    :goto_0
    iget p1, p0, LT/d;->g:I

    if-nez p1, :cond_2

    move-object p1, p3

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_1
    check-cast p1, Landroid/widget/TextView;

    iget-object p0, p0, LT/d;->c:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    check-cast p0, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, LT/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, LT/d;->e:I

    invoke-virtual {p0, v0, p1, p2, p3}, LT/d;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LT/d;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, LT/d;->f:I

    invoke-virtual {p0, v0, p1, p2, p3}, LT/d;->a(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
