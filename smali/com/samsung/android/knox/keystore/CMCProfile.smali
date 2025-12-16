.class public Lcom/samsung/android/knox/keystore/CMCProfile;
.super Lcom/samsung/android/knox/keystore/EnrollmentProfile;
.source "SourceFile"


# static fields
.field public static final KEY_ENCR_FROM_SERVER:Ljava/lang/String; = "requestkeyencrfromserver"

.field public static final KEY_ENCR_TYPE:Ljava/lang/String; = "serverkeygenencrtype"


# instance fields
.field public estServerUrl:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public oneTimePassword:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public serverSideKeyGeneration:Z

.field public subjectAlterNativeName:Ljava/lang/String;

.field public subjectName:Ljava/lang/String;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/EnrollmentProfile;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getProfileType()Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
