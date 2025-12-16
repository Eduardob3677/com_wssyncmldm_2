package F2;

import com.idm.core.ddf.DDFNode;
import com.idm.core.ddf.DDFTag;
import com.idm.fotaagent.receiver.SecureBroadcastReceiver;
import com.idm.fotaagent.tool.ddf.DDFManager;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f756a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f757b;

    public /* synthetic */ b(int i5, Object obj) {
        this.f756a = i5;
        this.f757b = obj;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        int i5 = this.f756a;
        Object obj2 = this.f757b;
        switch (i5) {
            case 0:
                return ((DDFManager) obj2).getFilePaths((String) obj);
            case 1:
                return ((DDFNode) obj2).lambda$getPath$0((DDFTag) obj);
            default:
                return SecureBroadcastReceiver.lambda$isCorpIdChanged$0((String) obj2, (String) obj);
        }
    }
}
