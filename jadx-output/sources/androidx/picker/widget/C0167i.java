package androidx.picker.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.view.View;
import com.wssyncmldm.R;
import java.util.Calendar;

/* renamed from: androidx.picker.widget.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0167i extends View {

    /* renamed from: c, reason: collision with root package name */
    public final Calendar f4517c;

    /* renamed from: d, reason: collision with root package name */
    public final Paint f4518d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4519e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4520g;

    /* renamed from: h, reason: collision with root package name */
    public final int[] f4521h;

    /* renamed from: i, reason: collision with root package name */
    public final String f4522i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SeslDatePicker f4523j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0167i(SeslDatePicker seslDatePicker, Context context, TypedArray typedArray) throws Resources.NotFoundException {
        super(context);
        this.f4523j = seslDatePicker;
        this.f4521h = new int[7];
        this.f4517c = Calendar.getInstance();
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sesl_date_picker_month_day_label_text_size);
        int color = typedArray.getColor(6, resources.getColor(R.color.sesl_date_picker_normal_text_color_light));
        this.f4519e = color;
        this.f = typedArray.getColor(10, resources.getColor(R.color.sesl_date_picker_sunday_text_color_light));
        ThreadLocal threadLocal = A.r.f36a;
        this.f4520g = A.l.a(resources, R.color.sesl_date_picker_saturday_week_text_color_light, null);
        String str = seslDatePicker.f4390O;
        if (str != null) {
            this.f4522i = str;
        } else {
            this.f4522i = i3.x.Z();
        }
        Paint paint = new Paint();
        this.f4518d = paint;
        paint.setAntiAlias(true);
        paint.setColor(color);
        paint.setTextSize(dimensionPixelSize);
        paint.setTypeface(Typeface.create(Typeface.create("sec", 0), 400, false));
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setStyle(Paint.Style.FILL);
        paint.setFakeBoldText(false);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int[] iArr;
        int i5;
        int i6;
        super.onDraw(canvas);
        SeslDatePicker seslDatePicker = this.f4523j;
        int i7 = seslDatePicker.f4426x;
        if (i7 == 0) {
            return;
        }
        int i8 = (seslDatePicker.f4383H * 2) / 3;
        int i9 = seslDatePicker.f4384I / (i7 * 2);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = seslDatePicker.f4426x;
            iArr = this.f4521h;
            if (i11 >= i12) {
                break;
            }
            char cCharAt = this.f4522i.charAt(i11);
            int i13 = (i11 + 2) % seslDatePicker.f4426x;
            if (cCharAt == 'B') {
                iArr[i13] = this.f4520g;
            } else if (cCharAt != 'R') {
                iArr[i13] = this.f4519e;
            } else {
                iArr[i13] = this.f;
            }
            i11++;
        }
        while (true) {
            int i14 = seslDatePicker.f4426x;
            if (i10 >= i14) {
                return;
            }
            int i15 = (seslDatePicker.f4427y + i10) % i14;
            Calendar calendar = this.f4517c;
            calendar.set(7, i15);
            String upperCase = seslDatePicker.f4405f0.format(calendar.getTime()).toUpperCase();
            if (seslDatePicker.f4411j) {
                i5 = ((((seslDatePicker.f4426x - 1) - i10) * 2) + 1) * i9;
                i6 = seslDatePicker.f4378B;
            } else {
                i5 = ((i10 * 2) + 1) * i9;
                i6 = seslDatePicker.f4378B;
            }
            int i16 = i5 + i6;
            Paint paint = this.f4518d;
            paint.setColor(iArr[i15]);
            canvas.drawText(upperCase, i16, i8, paint);
            i10++;
        }
    }
}
