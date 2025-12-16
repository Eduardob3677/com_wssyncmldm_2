package h0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.Inflater;

/* renamed from: h0.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0435f {

    /* renamed from: a, reason: collision with root package name */
    public static final e4.d f6969a = new e4.d(13);

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f6970b = {112, 114, 111, 0};

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f6971c = {112, 114, 109, 0};

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f6972d = {48, 49, 53, 0};

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f6973e = {48, 49, 48, 0};
    public static final byte[] f = {48, 48, 57, 0};

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f6974g = {48, 48, 53, 0};

    /* renamed from: h, reason: collision with root package name */
    public static final byte[] f6975h = {48, 48, 49, 0};

    /* renamed from: i, reason: collision with root package name */
    public static final byte[] f6976i = {48, 48, 49, 0};

    /* renamed from: j, reason: collision with root package name */
    public static final byte[] f6977j = {48, 48, 50, 0};

    public static byte[] a(byte[] bArr) {
        Deflater deflater = new Deflater(1);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream, deflater);
            try {
                deflaterOutputStream.write(bArr);
                deflaterOutputStream.close();
                deflater.end();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (Throwable th) {
            deflater.end();
            throw th;
        }
    }

    public static byte[] b(C0431b[] c0431bArr, byte[] bArr) throws IOException {
        int length = 0;
        for (C0431b c0431b : c0431bArr) {
            length += ((((c0431b.f6965g * 2) + 7) & (-8)) / 8) + (c0431b.f6964e * 2) + d(c0431b.f6960a, bArr, c0431b.f6961b).getBytes(StandardCharsets.UTF_8).length + 16 + c0431b.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        if (Arrays.equals(bArr, f)) {
            for (C0431b c0431b2 : c0431bArr) {
                q(byteArrayOutputStream, c0431b2, d(c0431b2.f6960a, bArr, c0431b2.f6961b));
                s(byteArrayOutputStream, c0431b2);
                int[] iArr = c0431b2.f6966h;
                int length2 = iArr.length;
                int i5 = 0;
                int i6 = 0;
                while (i5 < length2) {
                    int i7 = iArr[i5];
                    v(byteArrayOutputStream, i7 - i6);
                    i5++;
                    i6 = i7;
                }
                r(byteArrayOutputStream, c0431b2);
            }
        } else {
            for (C0431b c0431b3 : c0431bArr) {
                q(byteArrayOutputStream, c0431b3, d(c0431b3.f6960a, bArr, c0431b3.f6961b));
            }
            for (C0431b c0431b4 : c0431bArr) {
                s(byteArrayOutputStream, c0431b4);
                int[] iArr2 = c0431b4.f6966h;
                int length3 = iArr2.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length3) {
                    int i10 = iArr2[i8];
                    v(byteArrayOutputStream, i10 - i9);
                    i8++;
                    i9 = i10;
                }
                r(byteArrayOutputStream, c0431b4);
            }
        }
        if (byteArrayOutputStream.size() == length) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + length);
    }

    public static boolean c(File file) {
        if (!file.isDirectory()) {
            file.delete();
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return false;
        }
        boolean z4 = true;
        for (File file2 : fileArrListFiles) {
            z4 = c(file2) && z4;
        }
        return z4;
    }

    public static String d(String str, byte[] bArr, String str2) {
        byte[] bArr2 = f6975h;
        boolean zEquals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = f6974g;
        String str3 = (zEquals || Arrays.equals(bArr, bArr3)) ? ":" : "!";
        if (str.length() <= 0) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return "!".equals(str3) ? str2.replace(":", "!") : ":".equals(str3) ? str2.replace("!", ":") : str2;
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return B.f.w(sb, (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? ":" : "!", str2);
    }

    public static int e(int i5, int i6, int i7) {
        if (i5 == 1) {
            throw new IllegalStateException("HOT methods are not stored in the bitmap");
        }
        if (i5 == 2) {
            return i6;
        }
        if (i5 == 4) {
            return i6 + i7;
        }
        throw new IllegalStateException(B.f.t(i5, "Unexpected flag: "));
    }

    public static void f(PackageInfo packageInfo, File file) throws IOException {
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(new File(file, "profileinstaller_profileWrittenFor_lastUpdateTime.dat")));
            try {
                dataOutputStream.writeLong(packageInfo.lastUpdateTime);
                dataOutputStream.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    public static byte[] g(InputStream inputStream, int i5) throws IOException {
        byte[] bArr = new byte[i5];
        int i6 = 0;
        while (i6 < i5) {
            int i7 = inputStream.read(bArr, i6, i5 - i6);
            if (i7 < 0) {
                throw new IllegalStateException(B.f.t(i5, "Not enough bytes to read: "));
            }
            i6 += i7;
        }
        return bArr;
    }

    public static int[] h(ByteArrayInputStream byteArrayInputStream, int i5) {
        int[] iArr = new int[i5];
        int iN = 0;
        for (int i6 = 0; i6 < i5; i6++) {
            iN += (int) n(byteArrayInputStream, 2);
            iArr[i6] = iN;
        }
        return iArr;
    }

    public static byte[] i(FileInputStream fileInputStream, int i5, int i6) {
        Inflater inflater = new Inflater();
        try {
            byte[] bArr = new byte[i6];
            byte[] bArr2 = new byte[2048];
            int i7 = 0;
            int iInflate = 0;
            while (!inflater.finished() && !inflater.needsDictionary() && i7 < i5) {
                int i8 = fileInputStream.read(bArr2);
                if (i8 < 0) {
                    throw new IllegalStateException("Invalid zip data. Stream ended after $totalBytesRead bytes. Expected " + i5 + " bytes");
                }
                inflater.setInput(bArr2, 0, i8);
                try {
                    iInflate += inflater.inflate(bArr, iInflate, i6 - iInflate);
                    i7 += i8;
                } catch (DataFormatException e5) {
                    throw new IllegalStateException(e5.getMessage());
                }
            }
            if (i7 == i5) {
                if (inflater.finished()) {
                    return bArr;
                }
                throw new IllegalStateException("Inflater did not finish");
            }
            throw new IllegalStateException("Didn't read enough bytes during decompression. expected=" + i5 + " actual=" + i7);
        } finally {
            inflater.end();
        }
    }

    public static C0431b[] j(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, C0431b[] c0431bArr) throws IOException {
        byte[] bArr3 = f6976i;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, f6977j)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int iN = (int) n(fileInputStream, 2);
            byte[] bArrI = i(fileInputStream, (int) n(fileInputStream, 4), (int) n(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrI);
            try {
                C0431b[] c0431bArrL = l(byteArrayInputStream, bArr2, iN, c0431bArr);
                byteArrayInputStream.close();
                return c0431bArrL;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(f6972d, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int iN2 = (int) n(fileInputStream, 1);
        byte[] bArrI2 = i(fileInputStream, (int) n(fileInputStream, 4), (int) n(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArrI2);
        try {
            C0431b[] c0431bArrK = k(byteArrayInputStream2, iN2, c0431bArr);
            byteArrayInputStream2.close();
            return c0431bArrK;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    public static C0431b[] k(ByteArrayInputStream byteArrayInputStream, int i5, C0431b[] c0431bArr) {
        if (byteArrayInputStream.available() == 0) {
            return new C0431b[0];
        }
        if (i5 != c0431bArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i5];
        int[] iArr = new int[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            int iN = (int) n(byteArrayInputStream, 2);
            iArr[i6] = (int) n(byteArrayInputStream, 2);
            strArr[i6] = new String(g(byteArrayInputStream, iN), StandardCharsets.UTF_8);
        }
        for (int i7 = 0; i7 < i5; i7++) {
            C0431b c0431b = c0431bArr[i7];
            if (!c0431b.f6961b.equals(strArr[i7])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i8 = iArr[i7];
            c0431b.f6964e = i8;
            c0431b.f6966h = h(byteArrayInputStream, i8);
        }
        return c0431bArr;
    }

    public static C0431b[] l(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i5, C0431b[] c0431bArr) throws IOException {
        if (byteArrayInputStream.available() == 0) {
            return new C0431b[0];
        }
        if (i5 != c0431bArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i6 = 0; i6 < i5; i6++) {
            n(byteArrayInputStream, 2);
            String str = new String(g(byteArrayInputStream, (int) n(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
            long jN = n(byteArrayInputStream, 4);
            int iN = (int) n(byteArrayInputStream, 2);
            C0431b c0431b = null;
            if (c0431bArr.length > 0) {
                int iIndexOf = str.indexOf("!");
                if (iIndexOf < 0) {
                    iIndexOf = str.indexOf(":");
                }
                String strSubstring = iIndexOf > 0 ? str.substring(iIndexOf + 1) : str;
                int i7 = 0;
                while (true) {
                    if (i7 >= c0431bArr.length) {
                        break;
                    }
                    if (c0431bArr[i7].f6961b.equals(strSubstring)) {
                        c0431b = c0431bArr[i7];
                        break;
                    }
                    i7++;
                }
            }
            if (c0431b == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            c0431b.f6963d = jN;
            int[] iArrH = h(byteArrayInputStream, iN);
            if (Arrays.equals(bArr, f6975h)) {
                c0431b.f6964e = iN;
                c0431b.f6966h = iArrH;
            }
        }
        return c0431bArr;
    }

    public static C0431b[] m(FileInputStream fileInputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, f6973e)) {
            throw new IllegalStateException("Unsupported version");
        }
        int iN = (int) n(fileInputStream, 1);
        byte[] bArrI = i(fileInputStream, (int) n(fileInputStream, 4), (int) n(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArrI);
        try {
            C0431b[] c0431bArrO = o(byteArrayInputStream, str, iN);
            byteArrayInputStream.close();
            return c0431bArrO;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static long n(InputStream inputStream, int i5) throws IOException {
        byte[] bArrG = g(inputStream, i5);
        long j3 = 0;
        for (int i6 = 0; i6 < i5; i6++) {
            j3 += (bArrG[i6] & 255) << (i6 * 8);
        }
        return j3;
    }

    public static C0431b[] o(ByteArrayInputStream byteArrayInputStream, String str, int i5) throws IOException {
        TreeMap treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new C0431b[0];
        }
        C0431b[] c0431bArr = new C0431b[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            int iN = (int) n(byteArrayInputStream, 2);
            int iN2 = (int) n(byteArrayInputStream, 2);
            c0431bArr[i6] = new C0431b(str, new String(g(byteArrayInputStream, iN), StandardCharsets.UTF_8), n(byteArrayInputStream, 4), iN2, (int) n(byteArrayInputStream, 4), (int) n(byteArrayInputStream, 4), new int[iN2], new TreeMap());
        }
        for (int i7 = 0; i7 < i5; i7++) {
            C0431b c0431b = c0431bArr[i7];
            int iAvailable = byteArrayInputStream.available() - c0431b.f;
            int iN3 = 0;
            while (true) {
                int iAvailable2 = byteArrayInputStream.available();
                treeMap = c0431b.f6967i;
                if (iAvailable2 <= iAvailable) {
                    break;
                }
                iN3 += (int) n(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(iN3), 1);
                for (int iN4 = (int) n(byteArrayInputStream, 2); iN4 > 0; iN4--) {
                    n(byteArrayInputStream, 2);
                    int iN5 = (int) n(byteArrayInputStream, 1);
                    if (iN5 != 6 && iN5 != 7) {
                        while (iN5 > 0) {
                            n(byteArrayInputStream, 1);
                            for (int iN6 = (int) n(byteArrayInputStream, 1); iN6 > 0; iN6--) {
                                n(byteArrayInputStream, 2);
                            }
                            iN5--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != iAvailable) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            c0431b.f6966h = h(byteArrayInputStream, c0431b.f6964e);
            int i8 = c0431b.f6965g;
            BitSet bitSetValueOf = BitSet.valueOf(g(byteArrayInputStream, (((i8 * 2) + 7) & (-8)) / 8));
            for (int i9 = 0; i9 < i8; i9++) {
                int i10 = bitSetValueOf.get(e(2, i9, i8)) ? 2 : 0;
                if (bitSetValueOf.get(e(4, i9, i8))) {
                    i10 |= 4;
                }
                if (i10 != 0) {
                    Integer num = (Integer) treeMap.get(Integer.valueOf(i9));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i9), Integer.valueOf(i10 | num.intValue()));
                }
            }
        }
        return c0431bArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean p(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, C0431b[] c0431bArr) throws IOException {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = f6972d;
        int i5 = 0;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = f6973e;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] bArrB = b(c0431bArr, bArr3);
                u(byteArrayOutputStream, c0431bArr.length, 1);
                u(byteArrayOutputStream, bArrB.length, 4);
                byte[] bArrA = a(bArrB);
                u(byteArrayOutputStream, bArrA.length, 4);
                byteArrayOutputStream.write(bArrA);
                return true;
            }
            byte[] bArr4 = f6974g;
            if (Arrays.equals(bArr, bArr4)) {
                u(byteArrayOutputStream, c0431bArr.length, 1);
                for (C0431b c0431b : c0431bArr) {
                    int size = c0431b.f6967i.size() * 4;
                    String strD = d(c0431b.f6960a, bArr4, c0431b.f6961b);
                    Charset charset = StandardCharsets.UTF_8;
                    v(byteArrayOutputStream, strD.getBytes(charset).length);
                    v(byteArrayOutputStream, c0431b.f6966h.length);
                    u(byteArrayOutputStream, size, 4);
                    u(byteArrayOutputStream, c0431b.f6962c, 4);
                    byteArrayOutputStream.write(strD.getBytes(charset));
                    Iterator it = c0431b.f6967i.keySet().iterator();
                    while (it.hasNext()) {
                        v(byteArrayOutputStream, ((Integer) it.next()).intValue());
                        v(byteArrayOutputStream, 0);
                    }
                    for (int i6 : c0431b.f6966h) {
                        v(byteArrayOutputStream, i6);
                    }
                }
                return true;
            }
            byte[] bArr5 = f;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] bArrB2 = b(c0431bArr, bArr5);
                u(byteArrayOutputStream, c0431bArr.length, 1);
                u(byteArrayOutputStream, bArrB2.length, 4);
                byte[] bArrA2 = a(bArrB2);
                u(byteArrayOutputStream, bArrA2.length, 4);
                byteArrayOutputStream.write(bArrA2);
                return true;
            }
            byte[] bArr6 = f6975h;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            v(byteArrayOutputStream, c0431bArr.length);
            for (C0431b c0431b2 : c0431bArr) {
                String strD2 = d(c0431b2.f6960a, bArr6, c0431b2.f6961b);
                Charset charset2 = StandardCharsets.UTF_8;
                v(byteArrayOutputStream, strD2.getBytes(charset2).length);
                TreeMap treeMap = c0431b2.f6967i;
                v(byteArrayOutputStream, treeMap.size());
                v(byteArrayOutputStream, c0431b2.f6966h.length);
                u(byteArrayOutputStream, c0431b2.f6962c, 4);
                byteArrayOutputStream.write(strD2.getBytes(charset2));
                Iterator it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    v(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                }
                for (int i7 : c0431b2.f6966h) {
                    v(byteArrayOutputStream, i7);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            v(byteArrayOutputStream2, c0431bArr.length);
            int i8 = 2;
            int i9 = 2;
            for (C0431b c0431b3 : c0431bArr) {
                u(byteArrayOutputStream2, c0431b3.f6962c, 4);
                u(byteArrayOutputStream2, c0431b3.f6963d, 4);
                u(byteArrayOutputStream2, c0431b3.f6965g, 4);
                String strD3 = d(c0431b3.f6960a, bArr2, c0431b3.f6961b);
                Charset charset3 = StandardCharsets.UTF_8;
                int length2 = strD3.getBytes(charset3).length;
                v(byteArrayOutputStream2, length2);
                i9 = i9 + 14 + length2;
                byteArrayOutputStream2.write(strD3.getBytes(charset3));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i9 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i9 + ", does not match actual size " + byteArray.length);
            }
            C0442m c0442m = new C0442m(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(c0442m);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i10 = 0;
            int i11 = 0;
            while (i10 < c0431bArr.length) {
                try {
                    C0431b c0431b4 = c0431bArr[i10];
                    v(byteArrayOutputStream3, i10);
                    v(byteArrayOutputStream3, c0431b4.f6964e);
                    i11 = i11 + 4 + (c0431b4.f6964e * 2);
                    int[] iArr = c0431b4.f6966h;
                    int length3 = iArr.length;
                    int i12 = i5;
                    while (i5 < length3) {
                        int i13 = iArr[i5];
                        v(byteArrayOutputStream3, i13 - i12);
                        i5++;
                        i12 = i13;
                    }
                    i10++;
                    i5 = 0;
                } catch (Throwable th) {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i11 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i11 + ", does not match actual size " + byteArray2.length);
            }
            C0442m c0442m2 = new C0442m(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(c0442m2);
            byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i14 = 0;
            int i15 = 0;
            while (i14 < c0431bArr.length) {
                try {
                    C0431b c0431b5 = c0431bArr[i14];
                    Iterator it3 = c0431b5.f6967i.entrySet().iterator();
                    int iIntValue = 0;
                    while (it3.hasNext()) {
                        iIntValue |= ((Integer) ((Map.Entry) it3.next()).getValue()).intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        r(byteArrayOutputStream4, c0431b5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            s(byteArrayOutputStream4, c0431b5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            v(byteArrayOutputStream3, i14);
                            int length4 = byteArray3.length + i8 + byteArray4.length;
                            int i16 = i15 + 6;
                            ArrayList arrayList4 = arrayList3;
                            u(byteArrayOutputStream3, length4, 4);
                            v(byteArrayOutputStream3, iIntValue);
                            byteArrayOutputStream3.write(byteArray3);
                            byteArrayOutputStream3.write(byteArray4);
                            i15 = i16 + length4;
                            i14++;
                            arrayList3 = arrayList4;
                            i8 = 2;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                    try {
                        byteArrayOutputStream3.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
            if (i15 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i15 + ", does not match actual size " + byteArray5.length);
            }
            C0442m c0442m3 = new C0442m(4, byteArray5, true);
            byteArrayOutputStream3.close();
            arrayList2.add(c0442m3);
            long j3 = 4;
            long size2 = j3 + j3 + 4 + (arrayList2.size() * 16);
            int i17 = 4;
            u(byteArrayOutputStream, arrayList2.size(), 4);
            int i18 = 0;
            while (i18 < arrayList2.size()) {
                C0442m c0442m4 = (C0442m) arrayList2.get(i18);
                u(byteArrayOutputStream, AbstractC0432c.e(c0442m4.f6986a), i17);
                u(byteArrayOutputStream, size2, i17);
                boolean z4 = c0442m4.f6988c;
                byte[] bArr7 = c0442m4.f6987b;
                if (z4) {
                    long length5 = bArr7.length;
                    byte[] bArrA3 = a(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(bArrA3);
                    u(byteArrayOutputStream, bArrA3.length, 4);
                    u(byteArrayOutputStream, length5, 4);
                    length = bArrA3.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    u(byteArrayOutputStream, bArr7.length, 4);
                    u(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i18++;
                arrayList5 = arrayList;
                i17 = 4;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i19 = 0; i19 < arrayList6.size(); i19++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i19));
            }
            return true;
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream2.close();
                throw th3;
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
                throw th3;
            }
        }
    }

    public static void q(ByteArrayOutputStream byteArrayOutputStream, C0431b c0431b, String str) throws IOException {
        Charset charset = StandardCharsets.UTF_8;
        v(byteArrayOutputStream, str.getBytes(charset).length);
        v(byteArrayOutputStream, c0431b.f6964e);
        u(byteArrayOutputStream, c0431b.f, 4);
        u(byteArrayOutputStream, c0431b.f6962c, 4);
        u(byteArrayOutputStream, c0431b.f6965g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void r(ByteArrayOutputStream byteArrayOutputStream, C0431b c0431b) throws IOException {
        byte[] bArr = new byte[(((c0431b.f6965g * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : c0431b.f6967i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            int iIntValue2 = ((Integer) entry.getValue()).intValue();
            int i5 = iIntValue2 & 2;
            int i6 = c0431b.f6965g;
            if (i5 != 0) {
                int iE = e(2, iIntValue, i6);
                int i7 = iE / 8;
                bArr[i7] = (byte) ((1 << (iE % 8)) | bArr[i7]);
            }
            if ((iIntValue2 & 4) != 0) {
                int iE2 = e(4, iIntValue, i6);
                int i8 = iE2 / 8;
                bArr[i8] = (byte) ((1 << (iE2 % 8)) | bArr[i8]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void s(ByteArrayOutputStream byteArrayOutputStream, C0431b c0431b) throws IOException {
        int i5 = 0;
        for (Map.Entry entry : c0431b.f6967i.entrySet()) {
            int iIntValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                v(byteArrayOutputStream, iIntValue - i5);
                v(byteArrayOutputStream, 0);
                i5 = iIntValue;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01b7 A[PHI: r6
      0x01b7: PHI (r6v8 ??) = (r6v7 ??), (r6v31 ?? I:??[int, float, short, byte, char]), (r6v24 ??), (r6v25 ??) binds: [B:84:0x0155, B:86:0x015b, B:88:0x015e, B:120:0x01b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0289 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0157  */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v35 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v41 */
    /* JADX WARN: Type inference failed for: r6v42 */
    /* JADX WARN: Type inference failed for: r6v43 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void t(Context context, Executor executor, InterfaceC0434e interfaceC0434e, boolean z4) throws Throwable {
        ?? A4;
        IOException iOException;
        int i5;
        C0431b[] c0431bArrM;
        C0431b[] c0431bArr;
        C0430a c0430a;
        C0431b[] c0431bArr2;
        byte[] bArr;
        boolean z5;
        boolean z6;
        boolean z7;
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStreamA;
        boolean z8;
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            if (!z4) {
                File file = new File(filesDir, "profileinstaller_profileWrittenFor_lastUpdateTime.dat");
                if (file.exists()) {
                    try {
                        DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                        try {
                            long j3 = dataInputStream.readLong();
                            dataInputStream.close();
                            z8 = j3 == packageInfo.lastUpdateTime;
                            if (z8) {
                                interfaceC0434e.q(2, null);
                            }
                        } finally {
                        }
                    } catch (IOException unused) {
                    }
                    if (z8) {
                    }
                } else {
                    z8 = false;
                    if (z8) {
                        Log.d("ProfileInstaller", "Skipping profile installation for " + context.getPackageName());
                        AbstractC0441l.b(context, false);
                        return;
                    }
                }
            }
            Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
            int i6 = Build.VERSION.SDK_INT;
            File file2 = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            C0430a c0430a2 = new C0430a(assets, executor, interfaceC0434e, name, file2);
            byte[] bArr2 = c0430a2.f6955c;
            if (bArr2 == null) {
                c0430a2.b(3, Integer.valueOf(i6));
            } else if (file2.canWrite()) {
                c0430a2.f = true;
                byte[] bArr3 = f6970b;
                try {
                    try {
                        A4 = c0430a2.a(assets, "dexopt/baseline.prof");
                    } catch (FileNotFoundException e5) {
                        interfaceC0434e.q(6, e5);
                        A4 = 0;
                        if (A4 != 0) {
                        }
                        c0431bArr = c0430a2.f6958g;
                        if (c0431bArr != null) {
                        }
                        AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                    } catch (IOException e6) {
                        interfaceC0434e.q(7, e6);
                        A4 = 0;
                        if (A4 != 0) {
                        }
                        c0431bArr = c0430a2.f6958g;
                        if (c0431bArr != null) {
                        }
                        AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                    }
                    if (A4 != 0) {
                        try {
                        } catch (IOException e7) {
                            i5 = 7;
                            interfaceC0434e.q(7, e7);
                            try {
                                A4.close();
                            } catch (IOException e8) {
                                iOException = e8;
                                interfaceC0434e.q(i5, iOException);
                                c0431bArrM = null;
                                A4 = A4;
                                c0430a2.f6958g = c0431bArrM;
                                c0431bArr = c0430a2.f6958g;
                                if (c0431bArr != null) {
                                }
                                AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                            }
                            c0431bArrM = null;
                            A4 = A4;
                            c0430a2.f6958g = c0431bArrM;
                            c0431bArr = c0430a2.f6958g;
                            if (c0431bArr != null) {
                            }
                            AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                        } catch (IllegalStateException e9) {
                            try {
                                interfaceC0434e.q(8, e9);
                                try {
                                    A4.close();
                                } catch (IOException e10) {
                                    iOException = e10;
                                    i5 = 7;
                                    interfaceC0434e.q(i5, iOException);
                                    c0431bArrM = null;
                                    A4 = A4;
                                    c0430a2.f6958g = c0431bArrM;
                                    c0431bArr = c0430a2.f6958g;
                                    if (c0431bArr != null) {
                                    }
                                    AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                                }
                                c0431bArrM = null;
                                A4 = A4;
                                c0430a2.f6958g = c0431bArrM;
                                c0431bArr = c0430a2.f6958g;
                                if (c0431bArr != null) {
                                }
                                AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                            } catch (Throwable th) {
                                th = th;
                                Throwable th2 = th;
                                try {
                                    A4.close();
                                    throw th2;
                                } catch (IOException e11) {
                                    interfaceC0434e.q(7, e11);
                                    throw th2;
                                }
                            }
                        }
                        if (!Arrays.equals(bArr3, g(A4, 4))) {
                            throw new IllegalStateException("Invalid magic");
                        }
                        c0431bArrM = m(A4, g(A4, 4), c0430a2.f6957e);
                        try {
                            A4.close();
                            A4 = A4;
                        } catch (IOException e12) {
                            IOException iOException2 = e12;
                            interfaceC0434e.q(7, iOException2);
                            A4 = iOException2;
                        }
                        c0430a2.f6958g = c0431bArrM;
                    }
                    c0431bArr = c0430a2.f6958g;
                    if (c0431bArr != null) {
                        int i7 = Build.VERSION.SDK_INT;
                        A4 = 33;
                        A4 = 33;
                        A4 = 33;
                        if (i7 <= 33 && i7 == 33) {
                            try {
                                fileInputStreamA = c0430a2.a(assets, "dexopt/baseline.profm");
                            } catch (FileNotFoundException e13) {
                                interfaceC0434e.q(9, e13);
                            } catch (IOException e14) {
                                interfaceC0434e.q(7, e14);
                            } catch (IllegalStateException e15) {
                                c0430a2.f6958g = null;
                                interfaceC0434e.q(8, e15);
                            }
                            if (fileInputStreamA != null) {
                                try {
                                    boolean zEquals = Arrays.equals(f6971c, g(fileInputStreamA, 4));
                                    if (!zEquals) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    c0430a2.f6958g = j(fileInputStreamA, g(fileInputStreamA, 4), bArr2, c0431bArr);
                                    fileInputStreamA.close();
                                    c0430a = c0430a2;
                                    A4 = zEquals;
                                    if (c0430a == null) {
                                        c0430a = c0430a2;
                                    }
                                    InterfaceC0434e interfaceC0434e2 = c0430a.f6954b;
                                    c0431bArr2 = c0430a.f6958g;
                                    ?? r6 = A4;
                                    if (c0431bArr2 != null) {
                                        byte[] bArr4 = c0430a.f6955c;
                                        r6 = bArr4;
                                        if (bArr4 != null) {
                                            if (!c0430a.f) {
                                                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            }
                                            try {
                                                byteArrayOutputStream = new ByteArrayOutputStream();
                                                try {
                                                    byteArrayOutputStream.write(bArr3);
                                                    byteArrayOutputStream.write(bArr4);
                                                } finally {
                                                }
                                            } catch (IOException e16) {
                                                interfaceC0434e2.q(7, e16);
                                            } catch (IllegalStateException e17) {
                                                interfaceC0434e2.q(8, e17);
                                            }
                                            if (p(byteArrayOutputStream, bArr4, c0431bArr2)) {
                                                c0430a.f6959h = byteArrayOutputStream.toByteArray();
                                                byteArrayOutputStream.close();
                                                c0430a.f6958g = null;
                                                r6 = bArr4;
                                            } else {
                                                interfaceC0434e2.q(5, null);
                                                c0430a.f6958g = null;
                                                byteArrayOutputStream.close();
                                                r6 = bArr4;
                                            }
                                        }
                                    }
                                    bArr = c0430a.f6959h;
                                    if (bArr != null) {
                                        z6 = false;
                                        z7 = true;
                                    } else {
                                        try {
                                            if (!c0430a.f) {
                                                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            }
                                            try {
                                                try {
                                                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                                                    try {
                                                        FileOutputStream fileOutputStream = new FileOutputStream(c0430a.f6956d);
                                                        try {
                                                            try {
                                                                byte[] bArr5 = new byte[512];
                                                                while (true) {
                                                                    int i8 = byteArrayInputStream.read(bArr5);
                                                                    if (i8 <= 0) {
                                                                        break;
                                                                    } else {
                                                                        fileOutputStream.write(bArr5, 0, i8);
                                                                    }
                                                                }
                                                                z7 = true;
                                                                try {
                                                                    c0430a.b(1, null);
                                                                    fileOutputStream.close();
                                                                    byteArrayInputStream.close();
                                                                    c0430a.f6959h = null;
                                                                    c0430a.f6958g = null;
                                                                    z6 = true;
                                                                } catch (Throwable th3) {
                                                                    th = th3;
                                                                    Throwable th4 = th;
                                                                    try {
                                                                        fileOutputStream.close();
                                                                        throw th4;
                                                                    } catch (Throwable th5) {
                                                                        th4.addSuppressed(th5);
                                                                        throw th4;
                                                                    }
                                                                }
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                Throwable th7 = th;
                                                                try {
                                                                    byteArrayInputStream.close();
                                                                    throw th7;
                                                                } catch (Throwable th8) {
                                                                    th7.addSuppressed(th8);
                                                                    throw th7;
                                                                }
                                                            }
                                                        } catch (Throwable th9) {
                                                            th = th9;
                                                        }
                                                    } catch (Throwable th10) {
                                                        th = th10;
                                                    }
                                                } catch (FileNotFoundException e18) {
                                                    e = e18;
                                                    r6 = 1;
                                                    c0430a.b(6, e);
                                                    z5 = r6;
                                                    z6 = false;
                                                    z7 = z5;
                                                    if (z6) {
                                                    }
                                                    AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                                                } catch (IOException e19) {
                                                    e = e19;
                                                    r6 = 1;
                                                    c0430a.b(7, e);
                                                    z5 = r6;
                                                    z6 = false;
                                                    z7 = z5;
                                                    if (z6) {
                                                    }
                                                    AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                                                }
                                            } catch (FileNotFoundException e20) {
                                                e = e20;
                                                c0430a.b(6, e);
                                                z5 = r6;
                                                z6 = false;
                                                z7 = z5;
                                                if (z6) {
                                                }
                                                AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                                            } catch (IOException e21) {
                                                e = e21;
                                                c0430a.b(7, e);
                                                z5 = r6;
                                                z6 = false;
                                                z7 = z5;
                                                if (z6) {
                                                }
                                                AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                                            }
                                        } finally {
                                            c0430a.f6959h = null;
                                            c0430a.f6958g = null;
                                        }
                                    }
                                    if (z6) {
                                        f(packageInfo, filesDir);
                                    }
                                } finally {
                                }
                            } else {
                                if (fileInputStreamA != null) {
                                    fileInputStreamA.close();
                                }
                                c0430a = null;
                                if (c0430a == null) {
                                }
                                InterfaceC0434e interfaceC0434e22 = c0430a.f6954b;
                                c0431bArr2 = c0430a.f6958g;
                                ?? r62 = A4;
                                if (c0431bArr2 != null) {
                                }
                                bArr = c0430a.f6959h;
                                if (bArr != null) {
                                }
                                if (z6) {
                                }
                            }
                        }
                    }
                    AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
                } catch (Throwable th11) {
                    th = th11;
                }
            } else {
                c0430a2.b(4, null);
            }
            z7 = true;
            z6 = false;
            AbstractC0441l.b(context, (z6 || !z4) ? false : z7);
        } catch (PackageManager.NameNotFoundException e22) {
            interfaceC0434e.q(7, e22);
            AbstractC0441l.b(context, false);
        }
    }

    public static void u(ByteArrayOutputStream byteArrayOutputStream, long j3, int i5) throws IOException {
        byte[] bArr = new byte[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            bArr[i6] = (byte) ((j3 >> (i6 * 8)) & 255);
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void v(ByteArrayOutputStream byteArrayOutputStream, int i5) throws IOException {
        u(byteArrayOutputStream, i5, 2);
    }
}
