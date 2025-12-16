.class public interface abstract Lcom/idm/agent/dm/uic/IDMDmUICInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_INPUT_TYPE;,
        Lcom/idm/agent/dm/uic/IDMDmUICInterface$UIC_DIALOG_TYPE;
    }
.end annotation


# static fields
.field public static final IDM_UIC_ECHOTYPE_PASSWORD:I = 0x2

.field public static final IDM_UIC_ECHOTYPE_TEXT:I = 0x1

.field public static final IDM_UIC_OPTION_DEFAULT:Ljava/lang/String; = "MINDT=30"

.field public static final IDM_UIC_OPTION_DR:Ljava/lang/String; = "DR"

.field public static final IDM_UIC_OPTION_DR_ACCEPT:Ljava/lang/String; = "1"

.field public static final IDM_UIC_OPTION_DR_REJECT:Ljava/lang/String; = "0"

.field public static final IDM_UIC_OPTION_ET:Ljava/lang/String; = "ET"

.field public static final IDM_UIC_OPTION_ET_P:Ljava/lang/String; = "P"

.field public static final IDM_UIC_OPTION_ET_T:Ljava/lang/String; = "T"

.field public static final IDM_UIC_OPTION_IT:Ljava/lang/String; = "IT"

.field public static final IDM_UIC_OPTION_IT_A:Ljava/lang/String; = "A"

.field public static final IDM_UIC_OPTION_IT_D:Ljava/lang/String; = "D"

.field public static final IDM_UIC_OPTION_IT_I:Ljava/lang/String; = "I"

.field public static final IDM_UIC_OPTION_IT_N:Ljava/lang/String; = "N"

.field public static final IDM_UIC_OPTION_IT_P:Ljava/lang/String; = "P"

.field public static final IDM_UIC_OPTION_IT_T:Ljava/lang/String; = "T"

.field public static final IDM_UIC_OPTION_MAXDT:Ljava/lang/String; = "MAXDT"

.field public static final IDM_UIC_OPTION_MAXLEN:Ljava/lang/String; = "MAXLEN"

.field public static final IDM_UIC_OPTION_MINDT:Ljava/lang/String; = "MINDT"

.field public static final IDM_UIC_STATUS_CANCEL:Ljava/lang/String; = "214"

.field public static final IDM_UIC_STATUS_OK:Ljava/lang/String; = "200"

.field public static final IDM_UIC_STATUS_REJECT:Ljava/lang/String; = "304"

.field public static final IDM_UIC_STATUS_TIMEOUT:Ljava/lang/String; = "215"

.field public static final IDM_UIC_TASK_EVENT_END:I = 0x2

.field public static final IDM_UIC_TASK_EVENT_START:I = 0x1
