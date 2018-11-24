.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;
.source "AlertScheduleSettings.java"


# instance fields
.field private AlertScheduleName:Ljava/lang/String;

.field private AlwaysSound:Z

.field private DaysOfWeek:[Ljava/lang/String;

.field private EndTime:Ljava/lang/String;

.field private IsDefaultSchedule:Z

.field private IsEnabled:Z

.field private StartTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 102
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 17
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->DaysOfWeek:[Ljava/lang/String;

    .line 103
    iput-boolean v3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->IsDefaultSchedule:Z

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->AlertScheduleName:Ljava/lang/String;

    .line 105
    iput-boolean v3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->AlwaysSound:Z

    .line 106
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->StartTime:Ljava/lang/String;

    .line 107
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->EndTime:Ljava/lang/String;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sunday"

    aput-object v1, v0, v2

    const-string v1, "Monday"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Tuesday"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Wednesday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Thursday"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Friday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Saturday"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->DaysOfWeek:[Ljava/lang/String;

    .line 109
    iput-boolean v3, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->IsEnabled:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostRecord;-><init>()V

    .line 17
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->DaysOfWeek:[Ljava/lang/String;

    .line 23
    if-nez p1, :cond_0

    .line 34
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getAlertScheduleIndex()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->IsDefaultSchedule:Z

    .line 28
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->AlertScheduleName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlertScheduleEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->IsEnabled:Z

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->AlwaysSound:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->addDaysOfWeek(Lcom/dexcom/cgm/model/DexAlertSchedule;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->DaysOfWeek:[Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->StartTime:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/AlertScheduleSettings;->EndTime:Ljava/lang/String;

    goto :goto_0
.end method

.method private addDaysOfWeek(Lcom/dexcom/cgm/model/DexAlertSchedule;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "Sunday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "Monday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "Tuesday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    const-string v1, "Wednesday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    const-string v1, "Thursday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    const-string v1, "Friday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    const-string v1, "Saturday"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_6
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 97
    return-object v0
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x1

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    div-long v0, p1, v0

    .line 41
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    rem-long v2, p1, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    div-long/2addr v2, v4

    .line 45
    cmp-long v4, v0, v8

    if-gez v4, :cond_0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 53
    :goto_0
    cmp-long v0, v2, v8

    if-gez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
