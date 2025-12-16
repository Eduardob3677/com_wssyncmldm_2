package E2;

import J.r0;
import L0.b;
import R0.f;
import S1.z;
import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import b2.t;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.datatransport.TransportRegistrar;
import com.idm.core.ddf.DDFParsingStrategy;
import com.idm.fotaagent.enabler.ui.DescriptionContent;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationBuilderStrategy;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationType;
import com.idm.fotaagent.enabler.ui.whatsnew.DescriptionBody;
import com.idm.fotaagent.restapi.parser.XmlParser;
import com.idm.fotaagent.restapi.response.Response;
import com.idm.fotaagent.restapi.restclient.exception.ParseFailedException;
import com.idm.fotaagent.restapi.restclient.strategies.OnHttpResponseStrategy;
import com.wssyncmldm.R;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements OnHttpResponseStrategy, f, z, b2.f, DDFParsingStrategy, NotificationBuilderStrategy.Action, NotificationBuilderStrategy.BigText, NotificationBuilderStrategy.SmallIcon, DescriptionBody {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f544c;

    public /* synthetic */ a(int i5) {
        this.f544c = i5;
    }

    @Override // R0.f
    public Object apply(Object obj) {
        Cursor cursorRawQuery = ((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        try {
            ArrayList arrayList = new ArrayList();
            while (cursorRawQuery.moveToNext()) {
                r0 r0VarA = b.a();
                r0VarA.o(cursorRawQuery.getString(1));
                r0VarA.f1008e = U0.a.b(cursorRawQuery.getInt(2));
                String string = cursorRawQuery.getString(3);
                r0VarA.f1007d = string == null ? null : Base64.decode(string, 0);
                arrayList.add(r0VarA.b());
            }
            return arrayList;
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.whatsnew.DescriptionBody
    public CharSequence get(Context context, DescriptionContent descriptionContent) {
        return DescriptionBody.lambda$static$0(context, descriptionContent);
    }

    @Override // com.idm.fotaagent.enabler.ui.notification.manager.NotificationBuilderStrategy.Action
    public Notification.Action getAction(Context context, String str, NotificationType notificationType) {
        switch (this.f544c) {
            case 16:
                return NotificationBuilderStrategy.Action.lambda$static$0(context, str, notificationType);
            case 17:
                return NotificationBuilderStrategy.Action.lambda$static$1(context, str, notificationType);
            case 18:
                return NotificationBuilderStrategy.Action.lambda$static$2(context, str, notificationType);
            case 19:
                return NotificationBuilderStrategy.Action.lambda$static$3(context, str, notificationType);
            case 20:
                return NotificationBuilderStrategy.Action.lambda$static$4(context, str, notificationType);
            default:
                return NotificationBuilderStrategy.Action.lambda$static$5(context, str, notificationType);
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.notification.manager.NotificationBuilderStrategy.BigText
    public Notification.BigTextStyle getBigTextStyle(NotificationType notificationType, String str) {
        switch (this.f544c) {
            case 22:
                return NotificationBuilderStrategy.BigText.lambda$static$0(notificationType, str);
            default:
                return NotificationBuilderStrategy.BigText.lambda$static$1(notificationType, str);
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.notification.manager.NotificationBuilderStrategy.SmallIcon
    public int getSmallIcon() {
        switch (this.f544c) {
            case 24:
                return R.drawable.stat_fota;
            case 25:
                return R.drawable.stat_fota_postpone;
            case 26:
                return R.drawable.stat_fota_completion;
            case 27:
                return R.drawable.stat_fota_fail;
            default:
                return NotificationBuilderStrategy.SmallIcon.lambda$static$4();
        }
    }

    @Override // b2.f
    public Object m(t tVar) {
        return TransportRegistrar.lambda$getComponents$0(tVar);
    }

    @Override // com.idm.fotaagent.restapi.restclient.strategies.OnHttpResponseStrategy
    public void parse(HttpURLConnection httpURLConnection, XmlParser xmlParser, Response response) throws ParseFailedException, IOException {
        switch (this.f544c) {
            case 0:
                OnHttpResponseStrategy.lambda$static$0(httpURLConnection, xmlParser, response);
                break;
            case 1:
                OnHttpResponseStrategy.lambda$static$1(httpURLConnection, xmlParser, response);
                break;
            case 2:
                OnHttpResponseStrategy.lambda$static$2(httpURLConnection, xmlParser, response);
                break;
            case 3:
                OnHttpResponseStrategy.lambda$static$3(httpURLConnection, xmlParser, response);
                break;
            default:
                OnHttpResponseStrategy.lambda$static$4(httpURLConnection, xmlParser, response);
                break;
        }
    }

    @Override // com.idm.core.ddf.DDFParsingStrategy
    public String parseValue(XmlPullParser xmlPullParser) {
        switch (this.f544c) {
            case 13:
                return DDFParsingStrategy.lambda$static$0(xmlPullParser);
            case 14:
                return DDFParsingStrategy.lambda$static$1(xmlPullParser);
            default:
                return DDFParsingStrategy.lambda$static$2(xmlPullParser);
        }
    }

    public String z(Context context) {
        switch (this.f544c) {
            case 8:
                ApplicationInfo applicationInfo = context.getApplicationInfo();
                return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
            case 9:
                ApplicationInfo applicationInfo2 = context.getApplicationInfo();
                return applicationInfo2 != null ? String.valueOf(applicationInfo2.minSdkVersion) : "";
            case 10:
                return context.getPackageManager().hasSystemFeature("android.hardware.type.television") ? "tv" : context.getPackageManager().hasSystemFeature("android.hardware.type.watch") ? "watch" : context.getPackageManager().hasSystemFeature("android.hardware.type.automotive") ? "auto" : context.getPackageManager().hasSystemFeature("android.hardware.type.embedded") ? "embedded" : "";
            default:
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                return installerPackageName != null ? FirebaseCommonRegistrar.a(installerPackageName) : "";
        }
    }
}
