.class public final Lcom/google/android/material/datepicker/r;
.super Lj0/b0;
.source "SourceFile"


# instance fields
.field public final v:Landroid/widget/TextView;

.field public final w:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 8

    invoke-direct {p0, p1}, Lj0/b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/datepicker/r;->v:Landroid/widget/TextView;

    sget-object v1, LJ/Q;->a:Ljava/util/WeakHashMap;

    new-instance v1, LJ/D;

    const-class v4, Ljava/lang/Boolean;

    const/16 v6, 0x1c

    const v3, 0x7f0a026f

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, LJ/D;-><init>(ILjava/lang/Class;III)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, LJ/F;->e(Landroid/view/View;Ljava/lang/Object;)V

    const v1, 0x7f0a0150

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lcom/google/android/material/datepicker/r;->w:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
