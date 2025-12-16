.class public abstract LV0/a;
.super La1/d;
.source "SourceFile"


# static fields
.field public static final h:LA3/D;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LP1/e;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LP1/e;-><init>(I)V

    new-instance v1, LV0/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LV0/b;-><init>(I)V

    new-instance v2, LA3/D;

    const-string v3, "SmsRetriever.API"

    invoke-direct {v2, v3, v1, v0}, LA3/D;-><init>(Ljava/lang/String;LW1/a;LP1/e;)V

    sput-object v2, LV0/a;->h:LA3/D;

    return-void
.end method
