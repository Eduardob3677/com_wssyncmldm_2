.class public abstract Lm1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LZ0/c;

.field public static final b:[LZ0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LZ0/c;

    const-string v1, "sms_code_autofill"

    const-wide/16 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, LZ0/c;-><init>(Ljava/lang/String;J)V

    new-instance v1, LZ0/c;

    const-string v2, "sms_retrieve"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v2, v3, v4}, LZ0/c;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lm1/a;->a:LZ0/c;

    new-instance v2, LZ0/c;

    const-string v3, "user_consent"

    const-wide/16 v4, 0x3

    invoke-direct {v2, v3, v4, v5}, LZ0/c;-><init>(Ljava/lang/String;J)V

    filled-new-array {v0, v1, v2}, [LZ0/c;

    move-result-object v0

    sput-object v0, Lm1/a;->b:[LZ0/c;

    return-void
.end method
