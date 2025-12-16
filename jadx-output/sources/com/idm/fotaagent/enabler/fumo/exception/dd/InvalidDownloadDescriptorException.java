package com.idm.fotaagent.enabler.fumo.exception.dd;

/* loaded from: classes.dex */
public class InvalidDownloadDescriptorException extends DownloadDescriptorException {
    public InvalidDownloadDescriptorException(String str) {
        super(str);
    }

    @Override // com.idm.fotaagent.enabler.fumo.exception.dd.DownloadDescriptorException
    public int getErrorCode() {
        return 6;
    }
}
