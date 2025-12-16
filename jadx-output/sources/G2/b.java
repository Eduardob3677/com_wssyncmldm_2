package G2;

import android.app.admin.SystemUpdatePolicy;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import com.idm.core.ddf.DDFTag;
import com.idm.fotaagent.abupdate.abenabler.utils.metadata.DownloadTask;
import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import com.idm.fotaagent.database.room.data.repository.AdminRepository;
import com.idm.fotaagent.database.sqlite.database.mo.push.field.InstallPostponeType;
import com.idm.fotaagent.enabler.adapter.IDMAdapterNetworkImpl;
import com.idm.fotaagent.enabler.network.WifiOnlyChecker;
import com.idm.fotaagent.enabler.ui.downloadprogress.DownloadProgressModel;
import com.idm.fotaagent.enabler.ui.installconfirm.InstallConfirmModel;
import com.idm.fotaagent.utils.rangerequest.HttpRangeRequest;
import com.idm.fotaagent.utils.rangerequest.RangeRequest;
import com.idm.providers.mo.IDMMoNodeInfo;
import java.io.File;
import java.nio.file.Path;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f808a;

    public /* synthetic */ b(int i5) {
        this.f808a = i5;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f808a) {
            case 0:
                return ((IDMMoNodeInfo) obj).idmMoNodeGetValue();
            case 1:
                return ((Path) obj).toFile();
            case 2:
                return ((DDFTag) obj).getValue();
            case 3:
                return DownloadTask.lambda$stopIfRunning$0((RangeRequest) obj);
            case 4:
                return ((HttpRangeRequest) obj).getConnection();
            case 5:
                return Integer.valueOf(((UpdateStatus.InstallationStep) obj).getStatus());
            case 6:
                return new File((String) obj);
            case 7:
                return ((File) obj).toPath();
            case 8:
                return obj.toString();
            case 9:
                return ((AdminRepository) obj).getDownloadType();
            case 10:
                return InstallPostponeType.of(((Byte) obj).byteValue());
            case 11:
                return ((AdminRepository) obj).getInstallPostponeType();
            case 12:
                return ((AdminRepository) obj).getInstallType();
            case 13:
                return ((AdminRepository) obj).getServiceType();
            case 14:
                return ((AdminRepository) obj).getUpdateType();
            case 15:
                return ((AdminRepository) obj).getWifiOnlyBearer();
            case 16:
                return ((AdminRepository) obj).getWifiOnlyDevice();
            case 17:
                return IDMAdapterNetworkImpl.HTTP_SERVICE_TYPE_B2B;
            case 18:
                return ((AdminRepository) obj).getOperator();
            case 19:
                return Integer.valueOf(((SystemUpdatePolicy) obj).getInstallWindowStart());
            case 20:
                return ((SystemUpdatePolicy) obj).getFreezePeriods();
            case 21:
                return Integer.valueOf(((SystemUpdatePolicy) obj).getInstallWindowEnd());
            case 22:
                return Integer.valueOf(((SystemUpdatePolicy) obj).getPolicyType());
            case 23:
                return WifiOnlyChecker.lambda$isWifiOnlyByDevice$0((AdminRepository.WifiOnlyDevice) obj);
            case 24:
                return WifiOnlyChecker.lambda$isWifiOnlyByBearer$1((AdminRepository.WifiOnlyBearer) obj);
            case 25:
                return ((Enum) obj).toString();
            case 26:
                return DownloadProgressModel.lambda$getScheduledExpirationTime$0((JobScheduler) obj);
            case 27:
                return DownloadProgressModel.lambda$getScheduledExpirationTime$1((JobInfo) obj);
            case 28:
                return InstallConfirmModel.lambda$getExpirationTimeString$0((JobScheduler) obj);
            default:
                return InstallConfirmModel.lambda$getExpirationTimeString$1((JobInfo) obj);
        }
    }
}
