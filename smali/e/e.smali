.class public final Le/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Le/i;

.field public final synthetic d:Le/g;


# direct methods
.method public constructor <init>(Le/g;Le/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/e;->d:Le/g;

    iput-object p2, p0, Le/e;->c:Le/i;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/e;->d:Le/g;

    iget-object p2, p1, Le/g;->p:Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Le/e;->c:Le/i;

    iget-object p4, p0, Le/i;->b:Le/k;

    invoke-interface {p2, p4, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-boolean p1, p1, Le/g;->t:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Le/i;->b:Le/k;

    invoke-virtual {p0}, Le/k;->dismiss()V

    :cond_0
    return-void
.end method
