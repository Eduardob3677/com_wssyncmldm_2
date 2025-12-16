.class public final Li4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Li4/j;

.field public static final b:Li4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li4/j;->a:Li4/j;

    new-instance v0, Li4/l;

    invoke-direct {v0}, Li4/l;-><init>()V

    sput-object v0, Li4/j;->b:Li4/l;

    return-void
.end method
