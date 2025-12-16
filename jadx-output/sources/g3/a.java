package g3;

import d3.i;
import f3.AbstractC0422a;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/* loaded from: classes.dex */
public final class a extends AbstractC0422a {
    @Override // f3.AbstractC0422a
    public final Random b() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        i.d("current()", threadLocalRandomCurrent);
        return threadLocalRandomCurrent;
    }
}
