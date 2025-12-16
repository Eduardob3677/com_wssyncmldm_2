.class public final Le/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/g;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/k;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Le/g;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, v0}, Le/k;->g(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Le/g;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, Le/j;->a:Le/g;

    iput v0, p0, Le/j;->b:I

    return-void
.end method


# virtual methods
.method public final a()Le/k;
    .locals 13

    new-instance v0, Le/k;

    iget-object v7, p0, Le/j;->a:Le/g;

    iget-object v1, v7, Le/g;->a:Landroid/content/Context;

    iget p0, p0, Le/j;->b:I

    invoke-direct {v0, v1, p0}, Le/k;-><init>(Landroid/content/Context;I)V

    iget-object p0, v7, Le/g;->e:Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, v0, Le/k;->h:Le/i;

    if-eqz p0, :cond_0

    iput-object p0, v9, Le/i;->C:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, v7, Le/g;->d:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    iput-object p0, v9, Le/i;->e:Ljava/lang/CharSequence;

    iget-object v1, v9, Le/i;->A:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, v7, Le/g;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_2

    iput-object p0, v9, Le/i;->y:Landroid/graphics/drawable/Drawable;

    iput v8, v9, Le/i;->x:I

    iget-object v1, v9, Le/i;->z:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v9, Le/i;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    iget-object p0, v7, Le/g;->f:Ljava/lang/CharSequence;

    if-eqz p0, :cond_3

    iput-object p0, v9, Le/i;->f:Ljava/lang/CharSequence;

    iget-object v1, v9, Le/i;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p0, v7, Le/g;->g:Ljava/lang/CharSequence;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, v7, Le/g;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {v9, v2, p0, v1}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object p0, v7, Le/g;->i:Ljava/lang/CharSequence;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v7, Le/g;->j:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x2

    invoke-virtual {v9, v2, p0, v1}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object p0, v7, Le/g;->k:Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, v7, Le/g;->l:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x3

    invoke-virtual {v9, v2, p0, v1}, Le/i;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    iget-object p0, v7, Le/g;->n:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p0, :cond_7

    iget-object p0, v7, Le/g;->o:Landroid/widget/ListAdapter;

    if-eqz p0, :cond_f

    :cond_7
    iget p0, v9, Le/i;->G:I

    iget-object v1, v7, Le/g;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v1, v7, Le/g;->s:Z

    if-eqz v1, :cond_8

    new-instance v12, Le/d;

    iget-object v5, v7, Le/g;->n:[Ljava/lang/CharSequence;

    iget v4, v9, Le/i;->H:I

    iget-object v3, v7, Le/g;->a:Landroid/content/Context;

    move-object v1, v12

    move-object v2, v7

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Le/d;-><init>(Le/g;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_5

    :cond_8
    iget-boolean v1, v7, Le/g;->t:Z

    if-eqz v1, :cond_9

    iget v1, v9, Le/i;->I:I

    goto :goto_4

    :cond_9
    iget v1, v9, Le/i;->J:I

    :goto_4
    iget-object v12, v7, Le/g;->o:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_a

    goto :goto_5

    :cond_a
    new-instance v12, Le/h;

    iget-object v2, v7, Le/g;->n:[Ljava/lang/CharSequence;

    iget-object v3, v7, Le/g;->a:Landroid/content/Context;

    const v4, 0x1020014

    invoke-direct {v12, v3, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_5
    iput-object v12, v9, Le/i;->D:Landroid/widget/ListAdapter;

    iget v1, v7, Le/g;->u:I

    iput v1, v9, Le/i;->E:I

    iget-object v1, v7, Le/g;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_b

    new-instance v1, Le/e;

    invoke-direct {v1, v7, v9}, Le/e;-><init>(Le/g;Le/i;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_6

    :cond_b
    iget-object v1, v7, Le/g;->v:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_c

    new-instance v1, Le/f;

    invoke-direct {v1, v7, p0, v9}, Le/f;-><init>(Le/g;Landroidx/appcompat/app/AlertController$RecycleListView;Le/i;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_c
    :goto_6
    iget-boolean v1, v7, Le/g;->t:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_7

    :cond_d
    iget-boolean v1, v7, Le/g;->s:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_e
    :goto_7
    iput-object p0, v9, Le/i;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_f
    iget-object p0, v7, Le/g;->q:Landroid/view/View;

    if-eqz p0, :cond_10

    iput-object p0, v9, Le/i;->h:Landroid/view/View;

    iput v8, v9, Le/i;->i:I

    iput-boolean v8, v9, Le/i;->j:Z

    :cond_10
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, v7, Le/g;->m:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_11
    return-object v0
.end method
