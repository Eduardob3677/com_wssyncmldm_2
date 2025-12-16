.class public final Lcom/google/firebase/messaging/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Lu1/i;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu1/i;

    invoke-direct {v0}, Lu1/i;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/C;->b:Lu1/i;

    iput-object p1, p0, Lcom/google/firebase/messaging/C;->a:Landroid/content/Intent;

    return-void
.end method
