.class public final Lcom/samsung/android/knox/ex/KnoxContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/KnoxContract$License;,
        Lcom/samsung/android/knox/ex/KnoxContract$Config;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.knox.sdk"

.field public static final AUTHORITY_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk"

.field public static final KEY:Ljava/lang/String; = "key"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
