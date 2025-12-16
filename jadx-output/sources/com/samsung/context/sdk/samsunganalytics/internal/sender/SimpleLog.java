package com.samsung.context.sdk.samsunganalytics.internal.sender;

/* loaded from: classes.dex */
public class SimpleLog {
    private String _id;
    private String data;
    private long timestamp;
    private LogType type;

    public SimpleLog() {
    }

    public String getData() {
        return this.data;
    }

    public String getId() {
        return this._id;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public LogType getType() {
        return this.type;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setId(String str) {
        this._id = str;
    }

    public void setTimestamp(long j3) {
        this.timestamp = j3;
    }

    public void setType(LogType logType) {
        this.type = logType;
    }

    public SimpleLog(long j3, String str, LogType logType) {
        this("", j3, str, logType);
    }

    public SimpleLog(String str, long j3, String str2, LogType logType) {
        this._id = str;
        this.timestamp = j3;
        this.data = str2;
        this.type = logType;
    }
}
