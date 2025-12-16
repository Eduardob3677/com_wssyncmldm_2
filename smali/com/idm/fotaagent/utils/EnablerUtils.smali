.class public Lcom/idm/fotaagent/utils/EnablerUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDlResultCodeToDmResultCode(I)Ljava/lang/String;
    .locals 2

    const-string v0, "dlResultStatus : "

    invoke-static {v0, p0}, LB/f;->D(Ljava/lang/String;I)V

    const-string v0, "409"

    const-string v1, "DmReportCode : IDM_FOTA_GENERIC_UNDEFINED_ERROR"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0

    :pswitch_1
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_WIFIBACKGROUND_SESSION_FAILED"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "466"

    return-object p0

    :pswitch_2
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_BLOCKED_MDM_UPDATE_FAILED"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "462"

    return-object p0

    :pswitch_3
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_BLOCKED_AFW_UPDATE_FAILED"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "461"

    return-object p0

    :pswitch_4
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_BAD_URL"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "411"

    return-object p0

    :pswitch_5
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_NOT_ACCEPTABLE"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "405"

    return-object p0

    :pswitch_6
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_CLIENT_ERROR"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "400"

    return-object p0

    :pswitch_7
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0

    :pswitch_8
    invoke-static {v1}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    return-object v0

    :pswitch_9
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_CORRUPTED_FW_UP"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "402"

    return-object p0

    :pswitch_a
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_USER_CANCELED_DOWNLOAD"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "401"

    return-object p0

    :pswitch_b
    const-string p0, "DmReportCode : IDM_FOTA_GENERIC_DOWNLOAD_FAILED_OUT_MEMORY"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->I(Ljava/lang/Object;)V

    const-string p0, "501"

    return-object p0

    :pswitch_c
    const-string p0, "DmReportCode : IDM_DL_STATUS_SUCCESS - return empty string!!"

    invoke-static {p0}, Lcom/samsung/android/fotaagent/common/log/Log;->W(Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    ushr-int/lit8 v4, v4, 0x4

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
