.class public abstract Lr3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI2/a;

    const-string v1, "InvalidModuleNotifier"

    invoke-direct {v0, v1}, LI2/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr3/v;->a:LI2/a;

    return-void
.end method
