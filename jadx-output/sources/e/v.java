package e;

import J.C0042p;
import J.a0;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import c.AbstractC0206a;
import c3.InterfaceC0222b;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import i3.InterfaceC0482c;
import j.MenuC0508i;
import j0.b0;
import j0.i0;
import j0.l0;
import j0.m0;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.Arrays;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import k.W;
import o.C0716e;
import o.C0722k;
import org.xmlpull.v1.XmlPullParserException;
import p.AbstractC0735a;
import s2.C0837c;
import y0.InterfaceC0926b;
import z0.C0944f;

/* loaded from: classes.dex */
public final class v implements InterfaceC0473a, W, InterfaceC0926b {

    /* renamed from: c, reason: collision with root package name */
    public Object f6792c;

    /* renamed from: d, reason: collision with root package name */
    public Object f6793d;

    public v(InterfaceC0222b interfaceC0222b) {
        this.f6792c = interfaceC0222b;
        this.f6793d = new ConcurrentHashMap();
    }

    public static v d(Context context) throws IOException {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), "generatefid.lock"), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
            } catch (IOException | Error | OverlappingFileLockException e5) {
                e = e5;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e6) {
            e = e6;
            channel = null;
            fileLockLock = null;
        }
        try {
            return new v(channel, fileLockLock);
        } catch (IOException | Error | OverlappingFileLockException e7) {
            e = e7;
            Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
            if (fileLockLock != null) {
                try {
                    fileLockLock.release();
                } catch (IOException unused) {
                }
            }
            if (channel != null) {
                try {
                    channel.close();
                } catch (IOException unused2) {
                }
            }
            return null;
        }
    }

    public static h4.G j(List list) {
        return list.isEmpty() ? h4.G.f7020e : new h4.G(list);
    }

    public static int r(int i5, int i6) {
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < i5; i9++) {
            i7++;
            if (i7 == i6) {
                i8++;
                i7 = 0;
            } else if (i7 > i6) {
                i8++;
                i7 = 1;
            }
        }
        return i7 + 1 > i6 ? i8 + 1 : i8;
    }

    public C0042p A(b0 b0Var, int i5) {
        m0 m0Var;
        C0042p c0042p;
        C0722k c0722k = (C0722k) this.f6792c;
        int iE = c0722k.e(b0Var);
        if (iE >= 0 && (m0Var = (m0) c0722k.j(iE)) != null) {
            int i6 = m0Var.f7535a;
            if ((i6 & i5) != 0) {
                int i7 = i6 & (~i5);
                m0Var.f7535a = i7;
                if (i5 == 4) {
                    c0042p = m0Var.f7536b;
                } else {
                    if (i5 != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    c0042p = m0Var.f7537c;
                }
                if ((i7 & 12) == 0) {
                    c0722k.i(iE);
                    m0Var.f7535a = 0;
                    m0Var.f7536b = null;
                    m0Var.f7537c = null;
                    m0.f7534d.c(m0Var);
                }
                return c0042p;
            }
        }
        return null;
    }

    public void B() throws IOException {
        try {
            ((FileLock) this.f6793d).release();
            ((FileChannel) this.f6792c).close();
        } catch (IOException e5) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e5);
        }
    }

    public void C(b0 b0Var) {
        m0 m0Var = (m0) ((C0722k) this.f6792c).getOrDefault(b0Var, null);
        if (m0Var == null) {
            return;
        }
        m0Var.f7535a &= -2;
    }

    public void D(b0 b0Var) {
        C0716e c0716e = (C0716e) this.f6793d;
        int iF = c0716e.f() - 1;
        while (true) {
            if (iF < 0) {
                break;
            }
            if (b0Var == c0716e.g(iF)) {
                Object[] objArr = c0716e.f8419e;
                Object obj = objArr[iF];
                Object obj2 = C0716e.f8416g;
                if (obj != obj2) {
                    objArr[iF] = obj2;
                    c0716e.f8417c = true;
                }
            } else {
                iF--;
            }
        }
        m0 m0Var = (m0) ((C0722k) this.f6792c).remove(b0Var);
        if (m0Var != null) {
            m0Var.f7535a = 0;
            m0Var.f7536b = null;
            m0Var.f7537c = null;
            m0.f7534d.c(m0Var);
        }
    }

    public void E(boolean z4) {
        X.i iVar = (X.i) ((A3.D) ((C0837c) this.f6793d).f9022c).f81e;
        if (iVar.f != z4) {
            if (iVar.f2859e != null) {
                androidx.emoji2.text.j jVarA = androidx.emoji2.text.j.a();
                X.h hVar = iVar.f2859e;
                jVarA.getClass();
                Z0.j.m("initCallback cannot be null", hVar);
                ReentrantReadWriteLock reentrantReadWriteLock = jVarA.f3696a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    jVarA.f3697b.remove(hVar);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            iVar.f = z4;
            if (z4) {
                X.i.a(iVar.f2857c, androidx.emoji2.text.j.a().b());
            }
        }
    }

    @Override // k.W
    public void a(int i5) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i5);
    }

    @Override // k.W
    public void b(int i5) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i5);
    }

    @Override // i.InterfaceC0473a
    public boolean c(AbstractC0474b abstractC0474b, MenuItem menuItem) {
        return ((InterfaceC0473a) this.f6792c).c(abstractC0474b, menuItem);
    }

    public void e(b0 b0Var, C0042p c0042p) {
        C0722k c0722k = (C0722k) this.f6792c;
        m0 m0VarA = (m0) c0722k.getOrDefault(b0Var, null);
        if (m0VarA == null) {
            m0VarA = m0.a();
            c0722k.put(b0Var, m0VarA);
        }
        m0VarA.f7537c = c0042p;
        m0VarA.f7535a |= 8;
    }

    @Override // i.InterfaceC0473a
    public boolean f(AbstractC0474b abstractC0474b, MenuC0508i menuC0508i) {
        return ((InterfaceC0473a) this.f6792c).f(abstractC0474b, menuC0508i);
    }

    @Override // y0.InterfaceC0926b
    public void g(C0944f c0944f) {
        Object[] objArr = (Object[]) this.f6793d;
        if (objArr == null) {
            return;
        }
        int length = objArr.length;
        int i5 = 0;
        while (i5 < length) {
            Object obj = objArr[i5];
            i5++;
            if (obj == null) {
                c0944f.m(i5);
            } else if (obj instanceof byte[]) {
                c0944f.g(i5, (byte[]) obj);
            } else if (obj instanceof Float) {
                c0944f.h(i5, ((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                c0944f.h(i5, ((Double) obj).doubleValue());
            } else if (obj instanceof Long) {
                c0944f.l(i5, ((Long) obj).longValue());
            } else if (obj instanceof Integer) {
                c0944f.l(i5, ((Integer) obj).intValue());
            } else if (obj instanceof Short) {
                c0944f.l(i5, ((Short) obj).shortValue());
            } else if (obj instanceof Byte) {
                c0944f.l(i5, ((Byte) obj).byteValue());
            } else if (obj instanceof String) {
                c0944f.n(i5, (String) obj);
            } else {
                if (!(obj instanceof Boolean)) {
                    throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i5 + " Supported types: null, byte[], float, double, long, int, short, byte, string");
                }
                c0944f.l(i5, ((Boolean) obj).booleanValue() ? 1L : 0L);
            }
        }
    }

    @Override // y0.InterfaceC0926b
    public String h() {
        return (String) this.f6792c;
    }

    public void i() {
        int[] iArr = (int[]) this.f6792c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f6793d = null;
    }

    public void k(int i5) {
        int[] iArr = (int[]) this.f6792c;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i5, 10) + 1];
            this.f6792c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i5 >= iArr.length) {
            int length = iArr.length;
            while (length <= i5) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f6792c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.f6792c;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    @Override // i.InterfaceC0473a
    public boolean l(AbstractC0474b abstractC0474b, MenuC0508i menuC0508i) {
        ViewGroup viewGroup = ((C) this.f6793d).f6600A;
        WeakHashMap weakHashMap = J.Q.f940a;
        J.G.c(viewGroup);
        return ((InterfaceC0473a) this.f6792c).l(abstractC0474b, menuC0508i);
    }

    public C0837c m(Q3.b bVar, P3.f fVar) {
        w3.b bVarF;
        d3.i.e("classId", bVar);
        d3.i.e("jvmMetadataVersion", fVar);
        String strQ = s4.h.q(bVar.i().b(), '.', '$');
        if (!bVar.h().d()) {
            strQ = bVar.h() + '.' + strQ;
        }
        Class clsR = o4.a.r((ClassLoader) this.f6792c, strQ);
        if (clsR == null || (bVarF = AbstractC0735a.f(clsR)) == null) {
            return null;
        }
        return new C0837c(bVarF);
    }

    @Override // i.InterfaceC0473a
    public void n(AbstractC0474b abstractC0474b) {
        ((InterfaceC0473a) this.f6792c).n(abstractC0474b);
        C c2 = (C) this.f6793d;
        if (c2.f6644w != null) {
            c2.f6634l.getDecorView().removeCallbacks(c2.f6645x);
        }
        if (c2.f6643v != null) {
            a0 a0Var = c2.f6646y;
            if (a0Var != null) {
                a0Var.b();
            }
            a0 a0VarA = J.Q.a(c2.f6643v);
            a0VarA.a(0.0f);
            c2.f6646y = a0VarA;
            a0VarA.d(new u(2, this));
        }
        InterfaceC0411o interfaceC0411o = c2.n;
        if (interfaceC0411o != null) {
            interfaceC0411o.onSupportActionModeFinished(c2.f6642u);
        }
        c2.f6642u = null;
        ViewGroup viewGroup = c2.f6600A;
        WeakHashMap weakHashMap = J.Q.f940a;
        J.G.c(viewGroup);
        c2.J();
    }

    public View o(int i5, int i6, int i7, int i8) {
        j0.H h5 = (j0.H) this.f6792c;
        int iE = h5.e();
        int iD = h5.d();
        int i9 = i6 > i5 ? 1 : -1;
        View view = null;
        while (i5 != i6) {
            View viewA = h5.a(i5);
            int iC = h5.c(viewA);
            int iB = h5.b(viewA);
            l0 l0Var = (l0) this.f6793d;
            l0Var.f7502b = iE;
            l0Var.f7503c = iD;
            l0Var.f7504d = iC;
            l0Var.f7505e = iB;
            if (i7 != 0) {
                l0Var.f7501a = i7;
                if (l0Var.a()) {
                    return viewA;
                }
            }
            if (i8 != 0) {
                l0Var.f7501a = i8;
                if (l0Var.a()) {
                    view = viewA;
                }
            }
            i5 += i9;
        }
        return view;
    }

    public int p(InterfaceC0482c interfaceC0482c) {
        int iIntValue;
        d3.i.e("kClass", interfaceC0482c);
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f6792c;
        String strL = interfaceC0482c.l();
        d3.i.b(strL);
        d3.i.e("<this>", concurrentHashMap);
        Integer num = (Integer) concurrentHashMap.get(strL);
        if (num != null) {
            return num.intValue();
        }
        synchronized (concurrentHashMap) {
            try {
                Integer numValueOf = (Integer) concurrentHashMap.get(strL);
                if (numValueOf == null) {
                    numValueOf = Integer.valueOf(((AtomicInteger) this.f6793d).getAndIncrement());
                    concurrentHashMap.putIfAbsent(strL, Integer.valueOf(numValueOf.intValue()));
                }
                iIntValue = numValueOf.intValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public KeyListener q(KeyListener keyListener) {
        if (!(!(keyListener instanceof NumberKeyListener))) {
            return keyListener;
        }
        ((A3.D) ((C0837c) this.f6793d).f9022c).getClass();
        if (keyListener instanceof X.e) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new X.e(keyListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int s(int i5) {
        int i6;
        int[] iArr = (int[]) this.f6792c;
        if (iArr == null || i5 >= iArr.length) {
            return -1;
        }
        List list = (List) this.f6793d;
        if (list == null) {
            i6 = -1;
        } else {
            i0 i0Var = null;
            if (list != null) {
                int size = list.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    i0 i0Var2 = (i0) ((List) this.f6793d).get(size);
                    if (i0Var2.f7465c == i5) {
                        i0Var = i0Var2;
                        break;
                    }
                    size--;
                }
            }
            if (i0Var != null) {
                ((List) this.f6793d).remove(i0Var);
            }
            int size2 = ((List) this.f6793d).size();
            int i7 = 0;
            while (true) {
                if (i7 >= size2) {
                    i7 = -1;
                    break;
                }
                if (((i0) ((List) this.f6793d).get(i7)).f7465c >= i5) {
                    break;
                }
                i7++;
            }
            if (i7 != -1) {
                i0 i0Var3 = (i0) ((List) this.f6793d).get(i7);
                ((List) this.f6793d).remove(i7);
                i6 = i0Var3.f7465c;
            }
        }
        if (i6 == -1) {
            int[] iArr2 = (int[]) this.f6792c;
            Arrays.fill(iArr2, i5, iArr2.length, -1);
            return ((int[]) this.f6792c).length;
        }
        int iMin = Math.min(i6 + 1, ((int[]) this.f6792c).length);
        Arrays.fill((int[]) this.f6792c, i5, iMin, -1);
        return iMin;
    }

    public void t() {
        ((SparseIntArray) this.f6792c).clear();
    }

    public boolean u(View view) {
        j0.H h5 = (j0.H) this.f6792c;
        int iE = h5.e();
        int iD = h5.d();
        int iC = h5.c(view);
        int iB = h5.b(view);
        l0 l0Var = (l0) this.f6793d;
        l0Var.f7502b = iE;
        l0Var.f7503c = iD;
        l0Var.f7504d = iC;
        l0Var.f7505e = iB;
        l0Var.f7501a = 24579;
        return l0Var.a();
    }

    public void v(AttributeSet attributeSet, int i5) {
        TypedArray typedArrayObtainStyledAttributes = ((EditText) this.f6792c).getContext().obtainStyledAttributes(attributeSet, AbstractC0206a.f5168i, i5, 0);
        try {
            boolean z4 = typedArrayObtainStyledAttributes.hasValue(14) ? typedArrayObtainStyledAttributes.getBoolean(14, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            E(z4);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void w(int i5, int i6) {
        int[] iArr = (int[]) this.f6792c;
        if (iArr == null || i5 >= iArr.length) {
            return;
        }
        int i7 = i5 + i6;
        k(i7);
        int[] iArr2 = (int[]) this.f6792c;
        System.arraycopy(iArr2, i5, iArr2, i7, (iArr2.length - i5) - i6);
        Arrays.fill((int[]) this.f6792c, i5, i7, -1);
        List list = (List) this.f6793d;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            i0 i0Var = (i0) ((List) this.f6793d).get(size);
            int i8 = i0Var.f7465c;
            if (i8 >= i5) {
                i0Var.f7465c = i8 + i6;
            }
        }
    }

    public void x(int i5, int i6) {
        int[] iArr = (int[]) this.f6792c;
        if (iArr == null || i5 >= iArr.length) {
            return;
        }
        int i7 = i5 + i6;
        k(i7);
        int[] iArr2 = (int[]) this.f6792c;
        System.arraycopy(iArr2, i7, iArr2, i5, (iArr2.length - i5) - i6);
        int[] iArr3 = (int[]) this.f6792c;
        Arrays.fill(iArr3, iArr3.length - i6, iArr3.length, -1);
        List list = (List) this.f6793d;
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            i0 i0Var = (i0) ((List) this.f6793d).get(size);
            int i8 = i0Var.f7465c;
            if (i8 >= i5) {
                if (i8 < i7) {
                    ((List) this.f6793d).remove(size);
                } else {
                    i0Var.f7465c = i8 - i6;
                }
            }
        }
    }

    public X.b y(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        C0837c c0837c = (C0837c) this.f6793d;
        if (inputConnection == null) {
            c0837c.getClass();
            inputConnection2 = null;
        } else {
            A3.D d2 = (A3.D) c0837c.f9022c;
            d2.getClass();
            if (!(inputConnection instanceof X.b)) {
                inputConnection = new X.b((EditText) d2.f80d, inputConnection, editorInfo);
            }
            inputConnection2 = inputConnection;
        }
        return (X.b) inputConnection2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x01d3, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void z(Context context, XmlResourceParser xmlResourceParser) throws XmlPullParserException, NumberFormatException, IOException {
        int eventType;
        u.g gVarD;
        u.l lVar = new u.l();
        int attributeCount = xmlResourceParser.getAttributeCount();
        for (int i5 = 0; i5 < attributeCount; i5++) {
            if ("id".equals(xmlResourceParser.getAttributeName(i5))) {
                String attributeValue = xmlResourceParser.getAttributeValue(i5);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                try {
                    eventType = xmlResourceParser.getEventType();
                    gVarD = null;
                } catch (IOException e5) {
                    e5.printStackTrace();
                } catch (XmlPullParserException e6) {
                    e6.printStackTrace();
                }
                while (eventType != 1) {
                    if (eventType != 0) {
                        char c2 = 3;
                        if (eventType == 2) {
                            String name = xmlResourceParser.getName();
                            switch (name.hashCode()) {
                                case -2025855158:
                                    if (name.equals("Layout")) {
                                        c2 = 5;
                                        break;
                                    } else {
                                        c2 = 65535;
                                        break;
                                    }
                                case -1984451626:
                                    if (name.equals("Motion")) {
                                        c2 = 6;
                                        break;
                                    }
                                    break;
                                case -1269513683:
                                    if (name.equals("PropertySet")) {
                                        break;
                                    }
                                    break;
                                case -1238332596:
                                    if (name.equals("Transform")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                                case -71750448:
                                    if (name.equals("Guideline")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case 1331510167:
                                    if (name.equals("Barrier")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                                case 1791837707:
                                    if (name.equals("CustomAttribute")) {
                                        c2 = 7;
                                        break;
                                    }
                                    break;
                                case 1803088381:
                                    if (name.equals("Constraint")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            switch (c2) {
                                case 0:
                                    gVarD = u.l.d(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 1:
                                    gVarD = u.l.d(context, Xml.asAttributeSet(xmlResourceParser));
                                    gVarD.f9224d.f9252a = true;
                                    break;
                                case 2:
                                    gVarD = u.l.d(context, Xml.asAttributeSet(xmlResourceParser));
                                    gVarD.f9224d.f9257c0 = 1;
                                    break;
                                case 3:
                                    if (gVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    gVarD.f9222b.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 4:
                                    if (gVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    gVarD.f9225e.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 5:
                                    if (gVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    gVarD.f9224d.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 6:
                                    if (gVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    gVarD.f9223c.a(context, Xml.asAttributeSet(xmlResourceParser));
                                    break;
                                case 7:
                                    if (gVarD == null) {
                                        throw new RuntimeException("XML parser error must be within a Constraint " + xmlResourceParser.getLineNumber());
                                    }
                                    u.b.a(context, xmlResourceParser, gVarD.f);
                                    break;
                            }
                        } else if (eventType != 3) {
                            continue;
                        } else {
                            String name2 = xmlResourceParser.getName();
                            if ("ConstraintSet".equals(name2)) {
                                ((SparseArray) this.f6793d).put(identifier, lVar);
                                return;
                            } else if (name2.equalsIgnoreCase("Constraint")) {
                                lVar.f9309c.put(Integer.valueOf(gVarD.f9221a), gVarD);
                                gVarD = null;
                            }
                        }
                    } else {
                        xmlResourceParser.getName();
                    }
                    eventType = xmlResourceParser.next();
                }
                ((SparseArray) this.f6793d).put(identifier, lVar);
                return;
            }
        }
    }

    public /* synthetic */ v(Object obj, Object obj2) {
        this.f6792c = obj;
        this.f6793d = obj2;
    }

    public v(ClassLoader classLoader) {
        this.f6792c = classLoader;
        this.f6793d = new e4.d(0);
    }

    public v(EditText editText) {
        this.f6792c = editText;
        C0837c c0837c = new C0837c();
        Z0.j.m("editText cannot be null", editText);
        c0837c.f9022c = new A3.D(editText);
        this.f6793d = c0837c;
    }

    public v(int i5) {
        switch (i5) {
            case 3:
                this.f6792c = new SparseIntArray();
                this.f6793d = new SparseIntArray();
                break;
            case 6:
                this.f6792c = new C0722k();
                this.f6793d = new C0716e();
                break;
            default:
                this.f6792c = new ConcurrentHashMap();
                this.f6793d = new AtomicInteger(0);
                break;
        }
    }

    public v(j0.H h5) {
        this.f6792c = h5;
        l0 l0Var = new l0();
        l0Var.f7501a = 0;
        this.f6793d = l0Var;
    }

    public v(List list) {
        R2.w wVar = R2.w.f2327c;
        this.f6792c = list;
        this.f6793d = wVar;
    }

    public v(AppCompatTextView appCompatTextView) {
        this.f6793d = appCompatTextView;
        this.f6792c = appCompatTextView;
    }
}
