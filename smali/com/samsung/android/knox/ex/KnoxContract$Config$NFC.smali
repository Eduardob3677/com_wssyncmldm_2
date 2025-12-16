.class public Lcom/samsung/android/knox/ex/KnoxContract$Config$NFC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NFC"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/config/nfc"

.field public static final ID:Ljava/lang/String; = "nfc"

.field public static final KEY_NFC:Ljava/lang/String; = "nfc"

.field public static final PARAM_NFC:Ljava/lang/String; = "nfc"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
