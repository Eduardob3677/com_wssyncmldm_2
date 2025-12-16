.class public Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants$NfcTagType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/peripheral/PeripheralConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NfcTagType"
.end annotation


# static fields
.field public static final CALYPSO:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_CALYPSO"

.field public static final FELICA:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_FELICA"

.field public static final ISO15693:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_ISO15693"

.field public static final JEWEL:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_JEWEL"

.field public static final MIFARE_1K:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_MIFARE_1K"

.field public static final MIFARE_4K:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_MIFARE_4K"

.field public static final MIFARE_DESFIRE:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_MIFARE_DESFIRE"

.field public static final MIFARE_UL:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_MIFARE_UL"

.field public static final MIFARE_UL_C:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_MIFARE_UL_C"

.field public static final NDEF_TYPE1:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_NDEF_TYPE1"

.field public static final NDEF_TYPE2:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_NDEF_TYPE2"

.field public static final RFID:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_RFID"

.field public static final TYPE_A:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_TYPE_A"

.field public static final TYPE_B:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_TYPE_B"

.field public static final UNDEFINED:Ljava/lang/String; = "PERIPHERAL_NFC_TAG_TYPE_UNDEFINED"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
