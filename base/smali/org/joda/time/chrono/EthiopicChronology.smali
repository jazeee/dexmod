.class public final Lorg/joda/time/chrono/EthiopicChronology;
.super Lorg/joda/time/chrono/BasicFixedMonthChronology;
.source "EthiopicChronology.java"


# static fields
.field public static final EE:I = 0x1

.field private static final ERA_FIELD:Lorg/joda/time/DateTimeField;

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/EthiopicChronology;

.field private static final MAX_YEAR:I = 0x116bbb58

.field private static final MIN_YEAR:I = -0x116bad19

.field private static final cCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/EthiopicChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x52e3a9d3f80ef876L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    const-string v1, "EE"

    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/chrono/EthiopicChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/EthiopicChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/EthiopicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/EthiopicChronology;

    .line 78
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicFixedMonthChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 168
    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/EthiopicChronology;
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/EthiopicChronology;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;
    .locals 10

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 119
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 122
    :cond_0
    sget-object v0, Lorg/joda/time/chrono/EthiopicChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/EthiopicChronology;

    .line 123
    if-nez v0, :cond_5

    .line 124
    const/4 v0, 0x7

    new-array v1, v0, [Lorg/joda/time/chrono/EthiopicChronology;

    .line 125
    sget-object v0, Lorg/joda/time/chrono/EthiopicChronology;->cCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/EthiopicChronology;

    .line 126
    if-eqz v0, :cond_4

    move-object v9, v0

    .line 131
    :goto_0
    add-int/lit8 v0, p1, -0x1

    :try_start_0
    aget-object v0, v9, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-nez v0, :cond_2

    .line 138
    monitor-enter v9

    .line 139
    add-int/lit8 v0, p1, -0x1

    :try_start_1
    aget-object v0, v9, v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_3

    .line 143
    new-instance v8, Lorg/joda/time/chrono/EthiopicChronology;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1, p1}, Lorg/joda/time/chrono/EthiopicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 145
    new-instance v0, Lorg/joda/time/DateTime;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 146
    new-instance v1, Lorg/joda/time/chrono/EthiopicChronology;

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/joda/time/chrono/EthiopicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    move-object v0, v1

    .line 154
    :goto_1
    add-int/lit8 v1, p1, -0x1

    aput-object v0, v9, v1

    .line 156
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_2
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid min days in first week: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_3
    :try_start_2
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v1

    .line 151
    new-instance v0, Lorg/joda/time/chrono/EthiopicChronology;

    invoke-static {v1, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/chrono/EthiopicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    move-object v9, v1

    goto :goto_0

    :cond_5
    move-object v9, v0

    goto :goto_0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/EthiopicChronology;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/joda/time/chrono/EthiopicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/EthiopicChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    invoke-static {v0, v1}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->getMinimumDaysInFirstWeek()I

    move-result v1

    invoke-static {v0, v1}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;I)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicFixedMonthChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 262
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->year:Lorg/joda/time/DateTimeField;

    .line 263
    new-instance v0, Lorg/joda/time/field/SkipDateTimeField;

    iget-object v1, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/field/SkipDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->weekyear:Lorg/joda/time/DateTimeField;

    .line 265
    sget-object v0, Lorg/joda/time/chrono/EthiopicChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 266
    new-instance v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 267
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 269
    :cond_0
    return-void
.end method

.method final calculateFirstDayOfYearMillis(I)J
    .locals 6

    .prologue
    .line 219
    add-int/lit16 v1, p1, -0x7ab

    .line 221
    if-gtz v1, :cond_1

    .line 224
    add-int/lit8 v0, v1, 0x3

    shr-int/lit8 v0, v0, 0x2

    .line 233
    :cond_0
    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    int-to-long v0, v0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 238
    const-wide v2, 0x516e8ec00L

    add-long/2addr v0, v2

    return-wide v0

    .line 226
    :cond_1
    shr-int/lit8 v0, v1, 0x2

    .line 228
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/EthiopicChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final getApproxMillisAtEpochDividedByTwo()J
    .locals 2

    .prologue
    .line 253
    const-wide v0, 0x1c2919515f00L

    return-wide v0
.end method

.method final getMaxYear()I
    .locals 1

    .prologue
    .line 248
    const v0, 0x116bbb58

    return v0
.end method

.method final getMinYear()I
    .locals 1

    .prologue
    .line 243
    const v0, -0x116bad19

    return v0
.end method

.method final isLeapDay(J)Z
    .locals 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lorg/joda/time/chrono/EthiopicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/EthiopicChronology;

    return-object v0
.end method

.method public final withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/EthiopicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 204
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/EthiopicChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/EthiopicChronology;

    move-result-object p0

    goto :goto_0
.end method
