package com.idm.core.syncml;

import B.f;

/* loaded from: classes.dex */
public class Source extends Location {
    public Source() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Source [LocURI=");
        sb.append(this.locURI);
        sb.append(", LocName=");
        return f.w(sb, this.locName, "]");
    }

    public Source(String str) {
        super(str, null);
    }

    public Source(String str, String str2) {
        super(str, str2);
    }
}
