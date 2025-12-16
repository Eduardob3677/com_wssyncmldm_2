.class public interface abstract Lcom/idm/agent/dm/IDMDmCommandInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IDM_APPLICABLE:Ljava/lang/String; = "APPLICABLE"

.field public static final IDM_APPLICABLE_NOUPDATE_MO:Ljava/lang/String; = "APPLICABLE_NOUPDATE"

.field public static final IDM_EXEC_ASYNC:I = 0x2

.field public static final IDM_EXEC_FAIL:I = 0x1

.field public static final IDM_EXEC_SUCCESS:I = 0x0

.field public static final IDM_NOTAPPLICABLE:Ljava/lang/String; = "N/A"


# virtual methods
.method public abstract idmProcessAdd(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract idmProcessExec(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)I
.end method

.method public abstract idmProcessGet(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract idmProcessReplace(Lcom/idm/service/actioninfo/IDMActionInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
