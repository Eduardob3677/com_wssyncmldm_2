.class public Lcom/samsung/android/knox/ex/KnoxContract$License;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/KnoxContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "License"
.end annotation


# static fields
.field public static final CONTENT_URI_STRING:Ljava/lang/String; = "content://com.samsung.android.knox.sdk/license"

.field public static final LICENSE_PERMISSION:Ljava/lang/String; = null

.field public static final PATH:Ljava/lang/String; = "license"

.field public static final RUNTIME_PERMISSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
