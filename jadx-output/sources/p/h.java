package p;

import h0.AbstractC0432c;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class h implements Future {

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f8569d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f8570e = Logger.getLogger(h.class.getName());
    public static final AbstractC0735a f;

    /* renamed from: g, reason: collision with root package name */
    public static final Object f8571g;

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f8572a;

    /* renamed from: b, reason: collision with root package name */
    public volatile C0738d f8573b;

    /* renamed from: c, reason: collision with root package name */
    public volatile g f8574c;

    static {
        AbstractC0735a fVar;
        try {
            fVar = new e(AtomicReferenceFieldUpdater.newUpdater(g.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(g.class, g.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, g.class, "c"), AtomicReferenceFieldUpdater.newUpdater(h.class, C0738d.class, "b"), AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            fVar = new f();
        }
        f = fVar;
        if (th != null) {
            f8570e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f8571g = new Object();
    }

    public static void b(h hVar) {
        g gVar;
        C0738d c0738d;
        do {
            gVar = hVar.f8574c;
        } while (!f.c(hVar, gVar, g.f8566c));
        while (gVar != null) {
            Thread thread = gVar.f8567a;
            if (thread != null) {
                gVar.f8567a = null;
                LockSupport.unpark(thread);
            }
            gVar = gVar.f8568b;
        }
        do {
            c0738d = hVar.f8573b;
        } while (!f.a(hVar, c0738d));
        C0738d c0738d2 = null;
        while (c0738d != null) {
            C0738d c0738d3 = c0738d.f8560a;
            c0738d.f8560a = c0738d2;
            c0738d2 = c0738d;
            c0738d = c0738d3;
        }
        while (c0738d2 != null) {
            c0738d2 = c0738d2.f8560a;
            try {
                throw null;
            } catch (RuntimeException e5) {
                f8570e.log(Level.SEVERE, "RuntimeException while executing runnable null with executor null", (Throwable) e5);
            }
        }
    }

    public static Object c(Object obj) throws ExecutionException {
        if (obj instanceof C0736b) {
            Throwable th = ((C0736b) obj).f8558a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        }
        if (obj instanceof AbstractC0737c) {
            ((AbstractC0737c) obj).getClass();
            throw new ExecutionException((Throwable) null);
        }
        if (obj == f8571g) {
            return null;
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        Object obj;
        boolean z4 = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z4 = true;
                } catch (Throwable th) {
                    if (z4) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e5) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e5.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e6) {
                sb.append("FAILURE, cause=[");
                sb.append(e6.getCause());
                sb.append("]");
                return;
            }
        }
        if (z4) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z4) {
        Object obj = this.f8572a;
        if (obj == null) {
            if (f.b(this, obj, f8569d ? new C0736b(new CancellationException("Future.cancel() was called."), z4) : z4 ? C0736b.f8556b : C0736b.f8557c)) {
                b(this);
                return true;
            }
        }
        return false;
    }

    public final void d(g gVar) {
        gVar.f8567a = null;
        while (true) {
            g gVar2 = this.f8574c;
            if (gVar2 == g.f8566c) {
                return;
            }
            g gVar3 = null;
            while (gVar2 != null) {
                g gVar4 = gVar2.f8568b;
                if (gVar2.f8567a != null) {
                    gVar3 = gVar2;
                } else if (gVar3 != null) {
                    gVar3.f8568b = gVar4;
                    if (gVar3.f8567a == null) {
                        break;
                    }
                } else if (!f.c(this, gVar2, gVar4)) {
                    break;
                }
                gVar2 = gVar4;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ac  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x009f -> B:36:0x006e). Please report as a decompilation issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(long j3, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        long j5;
        long nanos = timeUnit.toNanos(j3);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f8572a;
        if ((obj != null) && true) {
            return c(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            g gVar = this.f8574c;
            g gVar2 = g.f8566c;
            if (gVar != gVar2) {
                g gVar3 = new g();
                do {
                    AbstractC0735a abstractC0735a = f;
                    abstractC0735a.n(gVar3, gVar);
                    if (abstractC0735a.c(this, gVar, gVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                d(gVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f8572a;
                            if ((obj2 != null) && true) {
                                return c(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        d(gVar3);
                        j5 = 0;
                        if (nanos <= j5) {
                            String string = toString();
                            String string2 = timeUnit.toString();
                            Locale locale = Locale.ROOT;
                            String lowerCase = string2.toLowerCase(locale);
                            String strH = "Waited " + j3 + " " + timeUnit.toString().toLowerCase(locale);
                            if (nanos + 1000 < 0) {
                                String strH2 = AbstractC0432c.h(strH, " (plus ");
                                long j6 = -nanos;
                                long jConvert = timeUnit.convert(j6, TimeUnit.NANOSECONDS);
                                long nanos2 = j6 - timeUnit.toNanos(jConvert);
                                boolean z4 = jConvert == 0 || nanos2 > 1000;
                                if (jConvert > 0) {
                                    String strH3 = strH2 + jConvert + " " + lowerCase;
                                    if (z4) {
                                        strH3 = AbstractC0432c.h(strH3, ",");
                                    }
                                    strH2 = AbstractC0432c.h(strH3, " ");
                                }
                                if (z4) {
                                    strH2 = strH2 + nanos2 + " nanoseconds ";
                                }
                                strH = AbstractC0432c.h(strH2, "delay)");
                            }
                            if (isDone()) {
                                throw new TimeoutException(AbstractC0432c.h(strH, " but future completed as timeout expired"));
                            }
                            throw new TimeoutException(strH + " for " + string);
                        }
                        Object obj3 = this.f8572a;
                        if ((obj3 != null) && true) {
                            return c(obj3);
                        }
                        if (Thread.interrupted()) {
                            throw new InterruptedException();
                        }
                        nanos = jNanoTime - System.nanoTime();
                        j5 = 0;
                        if (nanos <= j5) {
                        }
                    } else {
                        gVar = this.f8574c;
                    }
                } while (gVar != gVar2);
            }
            return c(this.f8572a);
        }
        j5 = 0;
        if (nanos <= j5) {
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f8572a instanceof C0736b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.f8572a != null) & true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f8572a instanceof C0736b) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e5) {
                str = "Exception thrown from implementation: " + e5.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8572a;
            if ((obj2 != null) & true) {
                return c(obj2);
            }
            g gVar = this.f8574c;
            g gVar2 = g.f8566c;
            if (gVar != gVar2) {
                g gVar3 = new g();
                do {
                    AbstractC0735a abstractC0735a = f;
                    abstractC0735a.n(gVar3, gVar);
                    if (abstractC0735a.c(this, gVar, gVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8572a;
                            } else {
                                d(gVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & true));
                        return c(obj);
                    }
                    gVar = this.f8574c;
                } while (gVar != gVar2);
            }
            return c(this.f8572a);
        }
        throw new InterruptedException();
    }
}
