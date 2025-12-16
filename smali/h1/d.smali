.class public abstract Lh1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/IntentFilter;

.field public static b:J

.field public static c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh1/d;->a:Landroid/content/IntentFilter;

    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lh1/d;->c:F

    return-void
.end method
