package com.idm.fotaagent.enabler.ui.downloadprogress;

import android.os.SystemClock;
import androidx.lifecycle.F;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.database.room.data.repository.FotaJobRepository;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationType;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationTypeManager;
import com.idm.fotaagent.utils.Formatted;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class DownloadProgressInfo {
    private static final String DEFAULT_FORMATTED_REMAINING_TIME = "--:--:--";
    private static final RemainingTimeEstimator remainingTimeEstimator = new RemainingTimeEstimator();
    private static final F formattedRemainingTime = new F("");
    private static final F percent = new F(0);

    public static class RemainingTimeEstimator {
        private static final int DECAY_EXPONENT_RECIPROCAL = 6;
        private static final long MIN_REMAINING_TIME_DELTA_IN_MS = 500;
        private static final long MIN_SAMPLING_INTERVAL_IN_MS = 100;
        private static final long ON_STARTED = -1;
        private long cumulativeDownloadSize;
        private long downloadRate;
        private long remainingTimeInMillis;
        private long timestampInMillis;
        private long totalSize;

        private RemainingTimeEstimator() {
            this.remainingTimeInMillis = -1L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean estimate(long j3) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j5 = this.timestampInMillis;
            long j6 = jElapsedRealtime - j5;
            if (j5 != -1) {
                long j7 = j3 - this.cumulativeDownloadSize;
                long j8 = this.remainingTimeInMillis;
                if (estimateDownloadRate(j6, j7)) {
                    this.cumulativeDownloadSize = j3;
                    this.timestampInMillis = jElapsedRealtime;
                    this.remainingTimeInMillis = (this.totalSize - j3) / this.downloadRate;
                }
                return Math.abs(this.remainingTimeInMillis - j8) > 500;
            }
            this.cumulativeDownloadSize = j3;
            this.downloadRate = 0L;
            this.timestampInMillis = jElapsedRealtime;
            Log.V("start downloading at " + this.timestampInMillis + " with cumulative: " + this.cumulativeDownloadSize + " Byte total: " + this.totalSize + "Byte");
            return false;
        }

        private boolean estimateDownloadRate(long j3, long j5) {
            if (j3 < MIN_SAMPLING_INTERVAL_IN_MS) {
                Log.V("interval is less than 100ms; wait for another sample");
                return false;
            }
            if (j5 == 0) {
                Log.V("sampleDownload size is zero; wait for another sample");
                return false;
            }
            long j6 = j5 / j3;
            Log.V("sample time: " + j3 + "ms size: " + j5 + "Byte sampleDownloadRate: " + j6 + "kBps");
            long j7 = this.downloadRate;
            if (j7 == 0) {
                Log.V("first sample, use it without smoothing");
                this.downloadRate = j6;
            } else {
                this.downloadRate = (((j7 << 6) - j7) + j6) >> 6;
            }
            Log.V("downloadRate: " + this.downloadRate + "kBps");
            return this.downloadRate != 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long getRemainingTimeInMillis() {
            return this.remainingTimeInMillis + 999;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void start(String str) {
            this.totalSize = new ActionInfoDao(str).getObjectSize();
            this.timestampInMillis = -1L;
            Log.V("");
        }
    }

    public static F getFormattedRemainingTime() {
        return formattedRemainingTime;
    }

    public static Integer getPercent() {
        return (Integer) percent.d();
    }

    public static F getPercentLiveData() {
        return percent;
    }

    public static void reset() {
        formattedRemainingTime.i("");
        percent.i(0);
    }

    public static void setFormattedRemainTime(long j3) {
        Log.V("" + j3);
        formattedRemainingTime.i(j3 >= 0 ? new Formatted.RemainingTime(j3).toString() : DEFAULT_FORMATTED_REMAINING_TIME);
    }

    public static void setPercent(int i5) {
        percent.i(Integer.valueOf(i5));
    }

    public static void start(String str) {
        remainingTimeEstimator.start(str);
    }

    public static void update(long j3, int i5, String str) {
        boolean zEstimate;
        long remainingTimeInMillis;
        if (i5 == 100) {
            remainingTimeInMillis = 0;
            zEstimate = true;
        } else {
            RemainingTimeEstimator remainingTimeEstimator2 = remainingTimeEstimator;
            zEstimate = remainingTimeEstimator2.estimate(j3);
            remainingTimeInMillis = remainingTimeEstimator2.getRemainingTimeInMillis();
        }
        if (zEstimate || (getPercent().intValue() != i5)) {
            new FotaJobRepository(IDMApplication.idmGetContext()).setRemainedDownloadTime(remainingTimeInMillis);
            setFormattedRemainTime(remainingTimeInMillis);
            setPercent(i5);
            updateUI(str);
        }
    }

    private static void updateUI(String str) {
        Log.V(percent + "% " + formattedRemainingTime);
        NotificationTypeManager.notify(NotificationType.IDM_NOTIFICATION_DOWNLOAD_PROGRESS, str);
    }
}
