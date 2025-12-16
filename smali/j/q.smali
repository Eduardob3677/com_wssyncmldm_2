.class public final Lj/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic c:Lj/s;


# direct methods
.method public constructor <init>(Lj/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/q;->c:Lj/s;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lj/q;->c:Lj/s;

    invoke-virtual {p0}, Lj/s;->c()V

    return-void
.end method
