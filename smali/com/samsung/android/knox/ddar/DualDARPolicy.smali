.class public Lcom/samsung/android/knox/ddar/DualDARPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ddar/DualDARPolicy$DUAL_DAR_VERSION_CODES;
    }
.end annotation


# static fields
.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final KEY_CONFIG_CLIENT_LOCATION:Ljava/lang/String; = "dualdar-config-client-location"

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDualDARVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearResetPasswordTokenForInner()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfig()Landroid/os/Bundle;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPasswordMinimumLengthForInner()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isActivePasswordSufficientForInner()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isResetPasswordTokenActiveForInner()Z
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetPasswordWithTokenForInner(Ljava/lang/String;[B)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfig(Landroid/os/Bundle;)I
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPasswordMinimumLengthForInner(I)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResetPasswordTokenForInner([B)Z
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
