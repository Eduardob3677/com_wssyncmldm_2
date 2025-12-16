.class public final LB1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/r;


# instance fields
.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput-object p2, p0, LB1/e;->d:Ljava/lang/Object;

    iput p1, p0, LB1/e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[LG/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB1/e;->c:I

    iput-object p2, p0, LB1/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, LB1/e;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, LB1/e;->c:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    const/4 p0, 0x1

    return p0
.end method
