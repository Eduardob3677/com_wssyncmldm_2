package A2;

import android.animation.ValueAnimator;
import android.view.WindowInsetsController;
import com.idm.fotaagent.abupdate.abenabler.utils.metadata.DownloadTask;
import com.idm.fotaagent.abupdate.abenabler.utils.metadata.TimeoutTask;
import com.idm.fotaagent.analytics.diagmon.DiagMon;
import com.idm.fotaagent.analytics.samsunganalytics.SAConstants;
import com.idm.fotaagent.analytics.samsunganalytics.SALogging;
import com.idm.fotaagent.database.room.data.repository.AdminRepository;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorFumoStart;
import com.idm.fotaagent.enabler.ui.DescriptionContent;
import com.idm.fotaagent.enabler.ui.common.BaseActivity;
import com.idm.fotaagent.enabler.ui.postpone.PostponeDialog;
import com.idm.fotaagent.restapi.restclient.heartbeat.handleintent.OneShotHeartbeatHandle;
import com.idm.fotaagent.utils.storage.FileManager;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.file.Path;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f56c;

    public /* synthetic */ a(int i5) {
        this.f56c = i5;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) throws IOException {
        switch (this.f56c) {
            case 0:
                ((PostponeDialog.RefreshListener) obj).refresh();
                break;
            case 1:
                ((File) obj).delete();
                break;
            case 2:
                ((HttpURLConnection) obj).disconnect();
                break;
            case 3:
                ((TimeoutTask) obj).stopIfRunning();
                break;
            case 4:
                ((DownloadTask) obj).stopIfRunning();
                break;
            case 5:
                ((ScheduledExecutorService) obj).shutdown();
                break;
            case 6:
                DiagMon.Reporter.lambda$prepareFilesToReport$2((Path) obj);
                break;
            case 7:
                ((AdminRepository) obj).deleteDownloadType();
                break;
            case 8:
                ((AdminRepository) obj).deleteInstallPostponeType();
                break;
            case 9:
                ((AdminRepository) obj).deleteInstallType();
                break;
            case 10:
                ((AdminRepository) obj).deleteServiceType();
                break;
            case 11:
                ((AdminRepository) obj).deleteUpdateType();
                break;
            case 12:
                ((AdminRepository) obj).deleteWifiOnlyBearer();
                break;
            case 13:
                ((AdminRepository) obj).deleteWifiOnlyDevice();
                break;
            case 14:
                ((AdminRepository) obj).deleteOperator();
                break;
            case 15:
                IDMFumoExecutorFumoStart.lambda$callDownloadYesNo$0((DescriptionContent) obj);
                break;
            case 16:
                BaseActivity.lambda$applyFullscreenIfNeeded$1((WindowInsetsController) obj);
                break;
            case 17:
                BaseActivity.lambda$applyFullscreenIfNeeded$2((WindowInsetsController) obj);
                break;
            case 18:
                SALogging.send((String) obj, SAConstants.EventId.EVENT_ID_NAVIGATION_UP, null);
                break;
            case 19:
                SALogging.sendScreenEntrance((String) obj);
                break;
            case 20:
                SALogging.send((String) obj, SAConstants.EventId.EVENT_ID_CHOOSE_APPS_TO_UPDATE, null);
                break;
            case 21:
                SALogging.send((String) obj, SAConstants.EventId.EVENT_ID_VIEW_ALL_CHANGES, null);
                break;
            case 22:
                SALogging.send((String) obj, SAConstants.EventId.EVENT_ID_SMART_SWITCH, null);
                break;
            case 23:
                OneShotHeartbeatHandle.lambda$prepare$0((IllegalStateException) obj);
                break;
            case 24:
                ((ScheduledFuture) obj).cancel(false);
                break;
            case 25:
                FileManager.lambda$shouldExclude$2((String) obj);
                break;
            default:
                d.c cVar = (d.c) obj;
                if (cVar.b() && cVar.f6493e) {
                    cVar.f6493e = false;
                    ValueAnimator valueAnimator = cVar.f6492d;
                    if (valueAnimator.isRunning()) {
                        valueAnimator.cancel();
                    }
                    valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
                    valueAnimator.setDuration(350L);
                    valueAnimator.setInterpolator(d.c.f6488h);
                    valueAnimator.start();
                    break;
                }
                break;
        }
    }
}
