.class public final Lk/i1;
.super Landroid/util/IntProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/j1;


# direct methods
.method public constructor <init>(Lk/j1;)V
    .locals 0

    iput-object p1, p0, Lk/i1;->a:Lk/j1;

    const-string p1, "visual_progress"

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk/j1;

    iget p0, p1, Lk/j1;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lk/j1;

    iput p2, p1, Lk/j1;->e:I

    iget-object p0, p0, Lk/i1;->a:Lk/j1;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
