.class public final Le/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic d:Le/i;

.field public final synthetic e:Le/g;


# direct methods
.method public constructor <init>(Le/g;Landroidx/appcompat/app/AlertController$RecycleListView;Le/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/f;->e:Le/g;

    iput-object p2, p0, Le/f;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Le/f;->d:Le/i;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/f;->e:Le/g;

    iget-object p2, p1, Le/g;->r:[Z

    iget-object p4, p0, Le/f;->c:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz p2, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p5

    aput-boolean p5, p2, p3

    :cond_0
    iget-object p1, p1, Le/g;->v:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p0, p0, Le/f;->d:Le/i;

    iget-object p0, p0, Le/i;->b:Le/k;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p2

    invoke-interface {p1, p0, p3, p2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
