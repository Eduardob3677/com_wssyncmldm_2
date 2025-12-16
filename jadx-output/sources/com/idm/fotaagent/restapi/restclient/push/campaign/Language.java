package com.idm.fotaagent.restapi.restclient.push.campaign;

import android.os.SemSystemProperties;
import android.text.TextUtils;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.fotaagent.common.util.Xpath;
import java.util.Locale;

/* loaded from: classes.dex */
class Language {
    static final String LANGUAGE_DEFAULT_CODE = "en";
    static final String LOCALE_DEFAULT_CODE = "en-us";
    static final String PERSIST_SYS_LOCALE = "persist.sys.locale";
    static final String PERSIST_SYS_LOCALE_DEFAULT = "persist.sys.localedefault";

    public static String getCountry() {
        return Locale.getDefault().getCountry();
    }

    public static String getDefaultLanguage(String str) {
        return new Xpath(str).getResultOfString("noti/@default").orElse("");
    }

    public static String getLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static String readLanguage() {
        String language = getLanguage();
        if (TextUtils.isEmpty(language)) {
            language = readLanguageFromProperties();
            if (TextUtils.isEmpty(language)) {
                language = "en";
            }
        }
        Log.I("langCode : " + language);
        return language.toLowerCase();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String readLanguageFromProperties() {
        String str;
        String str2 = SemSystemProperties.get(PERSIST_SYS_LOCALE, "");
        if (!TextUtils.isEmpty(str2)) {
            String[] strArrSplit = str2.split("-");
            str = strArrSplit.length == 2 ? strArrSplit[0] : "";
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str3 = SemSystemProperties.get(PERSIST_SYS_LOCALE_DEFAULT, "");
        if (TextUtils.isEmpty(str3)) {
            return str;
        }
        String[] strArrSplit2 = str3.split("-");
        return strArrSplit2.length == 2 ? strArrSplit2[0] : str;
    }

    public static String readLocaleCode() {
        String language = getLanguage();
        String country = getCountry();
        Log.I("language : " + language + ", country : " + country);
        if (TextUtils.isEmpty(language) || TextUtils.isEmpty(country)) {
            return readLocaleFromProperties();
        }
        return language + "-" + country;
    }

    private static String readLocaleFromProperties() {
        String str = SemSystemProperties.get(PERSIST_SYS_LOCALE, "");
        return TextUtils.isEmpty(str) ? SemSystemProperties.get(PERSIST_SYS_LOCALE_DEFAULT, LOCALE_DEFAULT_CODE) : str;
    }
}
