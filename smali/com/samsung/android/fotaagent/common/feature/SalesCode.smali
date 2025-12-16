.class public Lcom/samsung/android/fotaagent/common/feature/SalesCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fotaagent/common/feature/SalesCode$LazyInstanceHolder;
    }
.end annotation


# static fields
.field static final COUNTRYCODE_CHINA:Ljava/lang/String; = "CN"

.field private static final PRODUCTCODE_LTN_MOVISTAR_ALL:Ljava/lang/String; = "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

.field static final PRODUCTCODE_RIL:Ljava/lang/String; = "ril.product_code"

.field private static final SALESCODE_CHINA_ALL:Ljava/lang/String; = "CTC/CHN/CHM/CHU/CHC/CBK"

.field static final SALESCODE_CSC:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final SALESCODE_KDI_ALL:Ljava/lang/String; = "KDI/KDR"

.field public static final SALESCODE_KOO_ALL:Ljava/lang/String; = "ANY/KOO"

.field private static final SALESCODE_KOREA_ALL:Ljava/lang/String; = "KT/KTC/KTO/LG/LUC/LUO//SKT/SKC/SKO/ANY/KOO"

.field public static final SALESCODE_KT_ALL:Ljava/lang/String; = "KT/KTC/KTO"

.field static final SALESCODE_KT_DEFAULT:Ljava/lang/String; = "KT"

.field private static final SALESCODE_KT_UNUSED_ALL:Ljava/lang/String; = "MKT/KTT"

.field public static final SALESCODE_LGT_ALL:Ljava/lang/String; = "LG/LUC/LUO"

.field static final SALESCODE_LGT_DEFAULT:Ljava/lang/String; = "LG"

.field private static final SALESCODE_LGT_UNUSED_ALL:Ljava/lang/String; = "MLG/LGT"

.field static final SALESCODE_LTN_OPEN:Ljava/lang/String; = "TFG"

.field static final SALESCODE_RIL:Ljava/lang/String; = "ril.sales_code"

.field public static final SALESCODE_SKT_ALL:Ljava/lang/String; = "SKT/SKC/SKO"

.field static final SALESCODE_SKT_DEFAULT:Ljava/lang/String; = "SKT"

.field private static final SALESCODE_SKT_UNUSED_ALL:Ljava/lang/String; = "MSK"

.field static final SALESCODE_SPR:Ljava/lang/String; = "SPR"

.field private static final SALESCODE_SPR_ALL:Ljava/lang/String; = "BST/SPR/VMU/XAS"


# instance fields
.field private final salesCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->loadSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/fotaagent/common/feature/SalesCode$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/fotaagent/common/feature/SalesCode;-><init>()V

    return-void
.end method

.method public static get()Lcom/samsung/android/fotaagent/common/feature/SalesCode;
    .locals 1

    invoke-static {}, Lcom/samsung/android/fotaagent/common/feature/SalesCode$LazyInstanceHolder;->access$100()Lcom/samsung/android/fotaagent/common/feature/SalesCode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isChinaCountryFeature()Z
    .locals 2

    const-string v0, "CN"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CTC/CHN/CHM/CHU/CHC/CBK"

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKoreaCountryFeature()Z
    .locals 1

    const-string v0, "KT/KTC/KTO/LG/LUC/LUO//SKT/SKC/SKO/ANY/KOO"

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public loadSalesCode()Ljava/lang/String;
    .locals 3

    const-string p0, "ro.csc.sales_code"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "ril.sales_code"

    const-string v1, "BTU"

    invoke-static {p0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "MKT/KTT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "KT"

    return-object p0

    :cond_1
    const-string v1, "MLG/LGT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "LG"

    return-object p0

    :cond_2
    const-string v1, "MSK"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "SKT"

    return-object p0

    :cond_3
    const-string v1, "BST/SPR/VMU/XAS"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "SPR"

    return-object p0

    :cond_4
    const-string v1, "TFG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ril.product_code"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "Use product code as customerCode for Movistar single binary(TFG)"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0

    :cond_6
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/fotaagent/common/feature/SalesCode;->salesCode:Ljava/lang/String;

    return-object p0
.end method
