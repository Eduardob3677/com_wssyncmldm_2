package com.idm.fotaagent.enabler.fumo.exception.dd;

/* loaded from: classes.dex */
public class NullDownloadDescriptorException extends DownloadDescriptorException {
    public NullDownloadDescriptorException(String str) {
        super(str);
    }

    @Override // com.idm.fotaagent.enabler.fumo.exception.dd.DownloadDescriptorException
    public int getErrorCode() {
        return 6;
    }
}
