.class public final LT/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final c:LT/a;

.field public final d:Landroidx/databinding/h;


# direct methods
.method public constructor <init>(LT/a;Landroidx/databinding/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/b;->c:LT/a;

    iput-object p2, p0, LT/b;->d:Landroidx/databinding/h;

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, LT/b;->c:LT/a;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, LT/a;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-object p0, p0, LT/b;->d:Landroidx/databinding/h;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/databinding/h;->onChange()V

    :cond_1
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget-object p0, p0, LT/b;->d:Landroidx/databinding/h;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/databinding/h;->onChange()V

    :cond_0
    return-void
.end method
