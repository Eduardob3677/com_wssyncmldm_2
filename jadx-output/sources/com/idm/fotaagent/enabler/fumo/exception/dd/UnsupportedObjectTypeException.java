package com.idm.fotaagent.enabler.fumo.exception.dd;

/* loaded from: classes.dex */
public class UnsupportedObjectTypeException extends DownloadDescriptorException {
    public UnsupportedObjectTypeException(String str) {
        super(str);
    }

    @Override // com.idm.fotaagent.enabler.fumo.exception.dd.DownloadDescriptorException
    public int getErrorCode() {
        return 9;
    }
}
