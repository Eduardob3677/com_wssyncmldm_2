package com.idm.fotaagent.database.room.data.repository;

import android.content.Context;
import androidx.lifecycle.C;
import com.idm.fotaagent.abupdate.manager.UpdateInfo;
import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import com.idm.fotaagent.database.room.data.repository.PropertyRepository;
import com.idm.fotaagent.database.sqlite.database.mo.push.field.ServiceType;
import com.idm.fotaagent.enabler.ui.DescriptionContent;
import java.util.Optional;

/* loaded from: classes.dex */
public class FotaJobRepository extends PropertyRepository.SpecificCategory {
    public static final String CATEGORY = "FotaJob";
    public static final String NAME_DESCRIPTION_CONTENT = "descriptionContent";
    private static final String NAME_DM_RETRY_COUNT = "dmRetryCount";
    private static final String NAME_DOWNLOADED_SIZE = "downloadedSize";
    private static final String NAME_EXPIRATION_NOTIFY = "expirationNotify";
    private static final String NAME_FIRST_NET_READY = "firstNetReady";
    private static final String NAME_INSTALL_TYPE_URI = "installTypeUri";
    public static final String NAME_REMAINED_DOWNLOAD_TIME = "remainedDownloadTime";
    private static final String NAME_REPORT_RESULT = "reportResult";
    public static final String NAME_SERVICE_TYPE = "serviceType";
    private static final String NAME_SLOT_SUFFIX = "slotSuffix";
    public static final String NAME_UPDATE_INFO = "updateInfo";

    public FotaJobRepository(Context context) {
        super(FotaRoomDatabase.get(context), CATEGORY);
    }

    @Override // com.idm.fotaagent.database.room.data.repository.PropertyRepository.SpecificCategory, com.idm.fotaagent.database.room.data.repository.CategoryNameValueRepository.SpecificCategory, com.idm.fotaagent.database.room.data.repository.CategoryNameValueDataSource.SpecificCategory
    public int deleteAll() {
        int iDeleteAll = super.deleteAll();
        resetUpdateInfo();
        return iDeleteAll;
    }

    public Optional<DescriptionContent> descriptionContent() {
        return getValueOf(NAME_DESCRIPTION_CONTENT);
    }

    public int getDmRetryCount() {
        return ((Integer) getValueOf(NAME_DM_RETRY_COUNT, 0)).intValue();
    }

    public long getDownloadedSize() {
        return ((Long) getValueOf(NAME_DOWNLOADED_SIZE, 0L)).longValue();
    }

    public boolean getExpirationNotify() {
        return ((Boolean) getValueOf(NAME_EXPIRATION_NOTIFY, Boolean.FALSE)).booleanValue();
    }

    public String getInstallTypeUri() {
        return (String) getValueOf(NAME_INSTALL_TYPE_URI, "");
    }

    public int getReportResult() {
        return ((Integer) getValueOf(NAME_REPORT_RESULT, 0)).intValue();
    }

    public String getSlotSuffix() {
        return (String) getValueOf(NAME_SLOT_SUFFIX, "");
    }

    public UpdateInfo getUpdateInfo() {
        return (UpdateInfo) getValueOf(NAME_UPDATE_INFO, new UpdateInfo(Integer.valueOf(UpdateStatus.InstallationStep.IDLE.getStatus()), 0));
    }

    public C getUpdateInfoLiveData() {
        return getLiveDataValueOf(NAME_UPDATE_INFO, new UpdateInfo(Integer.valueOf(UpdateStatus.InstallationStep.IDLE.getStatus()), 0));
    }

    public boolean isEmergencyService() {
        return serviceType() == ServiceType.Emergency;
    }

    public boolean isFirstNetReady() {
        return ((Boolean) getValueOf(NAME_FIRST_NET_READY, Boolean.FALSE)).booleanValue();
    }

    public boolean isOptionalService() {
        return serviceType() == ServiceType.Optional;
    }

    public long remainedDownloadTime() {
        return ((Long) getValueOf(NAME_REMAINED_DOWNLOAD_TIME, 0L)).longValue();
    }

    public void resetUpdateInfo() {
        setUpdateInfo(new UpdateInfo(Integer.valueOf(UpdateStatus.InstallationStep.IDLE.getStatus()), 0));
    }

    public void saveDescriptionContent(DescriptionContent descriptionContent) {
        insertOrReplaceWithoutException(NAME_DESCRIPTION_CONTENT, descriptionContent);
    }

    public ServiceType serviceType() {
        return (ServiceType) getValueOf(NAME_SERVICE_TYPE, ServiceType.Mandatory);
    }

    public void setDmRetryCount(int i5) {
        insertOrReplaceWithoutException(NAME_DM_RETRY_COUNT, Integer.valueOf(i5));
    }

    public void setDownloadedSize(long j3) {
        insertOrReplaceWithoutException(NAME_DOWNLOADED_SIZE, Long.valueOf(j3));
    }

    public void setExpirationNotify(boolean z4) {
        insertOrReplaceWithoutException(NAME_EXPIRATION_NOTIFY, Boolean.valueOf(z4));
    }

    public void setFirstNetReady(boolean z4) {
        insertOrReplaceWithoutException(NAME_FIRST_NET_READY, Boolean.valueOf(z4));
    }

    public void setInstallTypeUri(String str) {
        insertOrReplaceWithoutException(NAME_INSTALL_TYPE_URI, str);
    }

    public void setRemainedDownloadTime(long j3) {
        insertOrReplaceWithoutException(NAME_REMAINED_DOWNLOAD_TIME, Long.valueOf(j3));
    }

    public void setReportResult(int i5) {
        insertOrReplaceWithoutException(NAME_REPORT_RESULT, Integer.valueOf(i5));
    }

    public void setServiceType(ServiceType serviceType) {
        insertOrReplaceWithoutException(NAME_SERVICE_TYPE, serviceType);
    }

    public void setSlotSuffix(String str) {
        insertOrReplaceWithoutException(NAME_SLOT_SUFFIX, str);
    }

    public void setUpdateInfo(UpdateInfo updateInfo) {
        insertOrReplaceWithoutException(NAME_UPDATE_INFO, updateInfo);
    }
}
