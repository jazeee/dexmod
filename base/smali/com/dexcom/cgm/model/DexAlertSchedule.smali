.class public Lcom/dexcom/cgm/model/DexAlertSchedule;
.super Ljava/lang/Object;
.source "DexAlertSchedule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
    createVersion = 0x2
.end annotation


# static fields
.field public static final DEFAULT_ALERTS:I = 0x0

.field public static final SCHEDULE_ALERTS:I = 0x1

.field private static m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "recorded_time_stamp"
    .end annotation
.end field


# instance fields
.field private m_alertScheduleEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_schedule_enabled"
    .end annotation
.end field

.field private m_alertScheduleIndex:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_schedule_index"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_alwaysSoundEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "always_sound_enabled"
    .end annotation
.end field

.field private m_endTime:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "end_time"
    .end annotation
.end field

.field private m_fridayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "friday_enabled"
    .end annotation
.end field

.field private m_mondayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "monday_enabled"
    .end annotation
.end field

.field private m_saturdayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "saturday_enabled"
    .end annotation
.end field

.field private m_scheduleName:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "schedule_name"
    .end annotation
.end field

.field private m_startTime:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "start_time"
    .end annotation
.end field

.field private m_sundayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "sunday_enabled"
    .end annotation
.end field

.field private m_thursdayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "thursday_enabled"
    .end annotation
.end field

.field private m_tuesdayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "tuesday_enabled"
    .end annotation
.end field

.field private m_wednesdayEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "wednesday_enabled"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(IZZLjava/lang/String;JJZZZZZZZ)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alertScheduleIndex:I

    .line 67
    iput-boolean p2, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alertScheduleEnabled:Z

    .line 68
    iput-boolean p3, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alwaysSoundEnabled:Z

    .line 69
    iput-object p4, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_scheduleName:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    sput-object v1, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 71
    iput-wide p5, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_startTime:J

    .line 72
    iput-wide p7, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_endTime:J

    .line 74
    iput-boolean p9, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_mondayEnabled:Z

    .line 75
    iput-boolean p10, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_tuesdayEnabled:Z

    .line 76
    iput-boolean p11, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_wednesdayEnabled:Z

    .line 77
    iput-boolean p12, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_thursdayEnabled:Z

    .line 78
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_fridayEnabled:Z

    .line 79
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_saturdayEnabled:Z

    .line 80
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_sundayEnabled:Z

    .line 81
    return-void
.end method

.method public static getDefaultAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 17

    .prologue
    .line 85
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, ""

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x0

    .line 89
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x0

    .line 90
    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v1 .. v16}, Lcom/dexcom/cgm/model/DexAlertSchedule;-><init>(IZZLjava/lang/String;JJZZZZZZZ)V

    return-object v1
.end method

.method public static getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method private getTimeOfDay(J)J
    .locals 7

    .prologue
    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 261
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    const/16 v1, 0xd

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isActiveByDay(J)Z
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 214
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid DAY_OF_WEEK returned from Calendar"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :pswitch_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_mondayEnabled:Z

    .line 230
    :goto_0
    return v0

    .line 220
    :pswitch_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_tuesdayEnabled:Z

    goto :goto_0

    .line 222
    :pswitch_2
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_wednesdayEnabled:Z

    goto :goto_0

    .line 224
    :pswitch_3
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_thursdayEnabled:Z

    goto :goto_0

    .line 226
    :pswitch_4
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_fridayEnabled:Z

    goto :goto_0

    .line 228
    :pswitch_5
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_saturdayEnabled:Z

    goto :goto_0

    .line 230
    :pswitch_6
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_sundayEnabled:Z

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isActiveByTime(J)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 245
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getTimeOfDay(J)J

    move-result-wide v2

    .line 247
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getAlertScheduleIndex()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alertScheduleIndex:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_endTime:J

    return-wide v0
.end method

.method public getScheduleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_scheduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_startTime:J

    return-wide v0
.end method

.method public isAlertScheduleEnabled()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alertScheduleEnabled:Z

    return v0
.end method

.method public isAlwaysSoundEnabled()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_alwaysSoundEnabled:Z

    return v0
.end method

.method public isFridayEnabled()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_fridayEnabled:Z

    return v0
.end method

.method public isMondayEnabled()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_mondayEnabled:Z

    return v0
.end method

.method public isSaturdayEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_saturdayEnabled:Z

    return v0
.end method

.method public isScheduleActive(J)Z
    .locals 11

    .prologue
    const-wide/16 v8, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlertScheduleEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByDay(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByTime(J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 181
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getTimeOfDay(J)J

    move-result-wide v2

    .line 183
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByDay(J)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByDay(J)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 196
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByDay(J)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_5
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isActiveByDay(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isSundayEnabled()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_sundayEnabled:Z

    return v0
.end method

.method public isThursdayEnabled()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_thursdayEnabled:Z

    return v0
.end method

.method public isTuesdayEnabled()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_tuesdayEnabled:Z

    return v0
.end method

.method public isWednesdayEnabled()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/DexAlertSchedule;->m_wednesdayEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
