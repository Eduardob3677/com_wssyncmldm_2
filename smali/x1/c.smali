.class public abstract Lx1/c;
.super Lw/a;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx1/c;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lx1/c;->b:I

    return-void
.end method


# virtual methods
.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lx1/c;->s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lx1/c;->a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    iput-object p1, p0, Lx1/c;->a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

    :cond_0
    iget-object p1, p0, Lx1/c;->a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

    iget-object p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->d:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->a:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b:I

    iget-object p1, p0, Lx1/c;->a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b()V

    iget p1, p0, Lx1/c;->b:I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lx1/c;->a:Lcom/google/android/gms/internal/firebase-auth-api/b5;

    iget p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    if-eq p3, p1, :cond_1

    iput p1, p2, Lcom/google/android/gms/internal/firebase-auth-api/b5;->c:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/b5;->b()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lx1/c;->b:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public s(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(ILandroid/view/View;)V

    return-void
.end method
