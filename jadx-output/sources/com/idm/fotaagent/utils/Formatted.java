package com.idm.fotaagent.utils;

import android.content.Context;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import h0.AbstractC0432c;
import java.time.Clock;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.time.format.DecimalStyle;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class Formatted {
    final long millis;

    public static abstract class Android extends Formatted {
        final Context context;

        public static class LongDate extends Android {
            @Override // com.idm.fotaagent.utils.Formatted
            public String toString() {
                return DateUtils.formatDateTime(this.context, this.millis, 20);
            }

            private LongDate(long j3, Context context) {
                super(j3, context);
            }
        }

        public static class LongDateWeekDay extends Android {
            @Override // com.idm.fotaagent.utils.Formatted
            public String toString() {
                return DateUtils.formatDateTime(this.context, this.millis, 22);
            }

            private LongDateWeekDay(long j3, Context context) {
                super(j3, context);
            }
        }

        public static class Time extends Android {
            @Override // com.idm.fotaagent.utils.Formatted
            public String toString() {
                String strBy = by(DateFormat.getTimeFormat(this.context));
                return (!"ur".equalsIgnoreCase(Locale.getDefault().getLanguage()) || DateFormat.is24HourFormat(this.context)) ? strBy : AbstractC0432c.i("\u200e", strBy);
            }

            private Time(long j3, Context context) {
                super(j3, context);
            }
        }

        public static String longDateAndTime(long j3, int i5, Context context) {
            return longDateAndTime(j3, context.getString(i5), context);
        }

        public static String longDateWeekDayAndTime(long j3, int i5, Context context) {
            return longDateWeekDayAndTime(j3, context.getString(i5), context);
        }

        private Android(long j3, Context context) {
            super(j3);
            this.context = context;
        }

        public static String longDateAndTime(long j3, String str, Context context) {
            return String.format(str, new LongDate(j3, context), new Time(j3, context));
        }

        public static String longDateWeekDayAndTime(long j3, String str, Context context) {
            return String.format(str, new LongDateWeekDay(j3, context), new Time(j3, context));
        }
    }

    public static class DateTimeForLog extends Formatted {
        private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);

        public DateTimeForLog(long j3) {
            super(j3);
        }

        @Override // com.idm.fotaagent.utils.Formatted
        public String toString() {
            return by(FORMATTER);
        }
    }

    public static class DateTimeWithoutYearForLog extends Formatted {
        private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("MM-dd HH:mm:ss.SSS", Locale.US);

        public DateTimeWithoutYearForLog(long j3) {
            super(j3);
        }

        @Override // com.idm.fotaagent.utils.Formatted
        public String toString() {
            return by(FORMATTER);
        }
    }

    public static class HourMinuteForSA extends Formatted {
        private static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("HHmm", Locale.US);

        public HourMinuteForSA(long j3) {
            super(j3);
        }

        @Override // com.idm.fotaagent.utils.Formatted
        public String toString() {
            return by(FORMATTER);
        }
    }

    public static class RemainingTime extends Formatted {
        private static volatile DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("HH:mm:ss").withDecimalStyle(DecimalStyle.ofDefaultLocale());

        public RemainingTime(long j3) {
            super(j3);
        }

        @Override // com.idm.fotaagent.utils.Formatted
        public String toString() {
            FORMATTER = FORMATTER.withDecimalStyle(DecimalStyle.ofDefaultLocale());
            return by(FORMATTER, ZoneOffset.UTC);
        }
    }

    public String by(DateTimeFormatter dateTimeFormatter) {
        return by(dateTimeFormatter, Clock.systemDefaultZone().getZone());
    }

    public abstract String toString();

    private Formatted(long j3) {
        this.millis = j3;
    }

    public String by(DateTimeFormatter dateTimeFormatter, ZoneId zoneId) {
        return LocalDateTime.ofInstant(Instant.ofEpochMilli(this.millis), zoneId).format(dateTimeFormatter);
    }

    public String by(java.text.DateFormat dateFormat) {
        return dateFormat.format(new Date(this.millis));
    }
}
