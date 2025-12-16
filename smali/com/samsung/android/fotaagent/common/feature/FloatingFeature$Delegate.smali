.class interface abstract Lcom/samsung/android/fotaagent/common/feature/FloatingFeature$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureDelegate;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fotaagent/common/feature/FloatingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/feature/FloatingFeature$Delegate$Impl;
    }
.end annotation


# virtual methods
.method public abstract isMHSDevice()Z
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Return true if MHS device."
        values = {
            "true",
            "false"
        }
    .end annotation
.end method

.method public abstract isUnpackDevice()Z
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "Return true if unpack model."
        values = {
            "true",
            "false"
        }
    .end annotation
.end method

.method public abstract smpConfigSppActivationMode()Ljava/lang/String;
    .annotation runtime Lcom/samsung/android/fotaagent/common/feature/FeatureAttribute;
        description = "force_action_mode: force to use SPP for push"
        values = {
            "force_activation_mode"
        }
    .end annotation
.end method
