.class public Lcom/dexcom/cgm/model/UserAlertProperties;
.super Ljava/lang/Object;
.source "UserAlertProperties.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# static fields
.field private static final REPEAT_NEVER:Lcom/dexcom/cgm/k/k;


# instance fields
.field private m_alertScheduleIndex:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_schedule_index"
        version = 0x2
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_sound"
    .end annotation
.end field

.field private m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_type"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_isDaytimeAlert:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "is_daytime_alert"
    .end annotation
.end field

.field private m_isEnabled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "is_enabled"
    .end annotation
.end field

.field private final m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation
.end field

.field private m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "recorded_time_stamp"
    .end annotation
.end field

.field private m_repeatTime:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "repeat_time"
    .end annotation
.end field

.field private m_threshold:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "threshold"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    sput-object v0, Lcom/dexcom/cgm/model/UserAlertProperties;->REPEAT_NEVER:Lcom/dexcom/cgm/k/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordID:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;ZILcom/dexcom/cgm/k/k;ZLcom/dexcom/cgm/model/enums/AlertSound;I)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordID:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->isUserAlert()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Non-user alert was passed into UserAlertProperties constructor. The alert type was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 65
    iput-boolean p2, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isDaytimeAlert:Z

    .line 66
    iput p3, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_threshold:I

    .line 67
    invoke-virtual {p4}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_repeatTime:I

    .line 68
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p1, v0, :cond_1

    .line 73
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_repeatTime:I

    iput v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_threshold:I

    .line 75
    :cond_1
    iput-boolean p5, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isEnabled:Z

    .line 76
    iput-object p6, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 77
    iput p7, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertScheduleIndex:I

    .line 78
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;ZILcom/dexcom/cgm/k/k;ZLcom/dexcom/cgm/model/enums/AlertSound;ILcom/dexcom/cgm/model/UserAlertProperties$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/dexcom/cgm/model/UserAlertProperties;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;ZILcom/dexcom/cgm/k/k;ZLcom/dexcom/cgm/model/enums/AlertSound;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/model/UserAlertProperties;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isDaytimeAlert:Z

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/model/UserAlertProperties;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_threshold:I

    return v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/model/UserAlertProperties;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_repeatTime:I

    return v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/model/UserAlertProperties;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/model/UserAlertProperties;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertScheduleIndex:I

    return v0
.end method

.method private static getDefaultFallRateAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 160
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 162
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/UserAlertProperties;->REPEAT_NEVER:Lcom/dexcom/cgm/k/k;

    .line 163
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->FallRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 165
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultHighAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 133
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 134
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/16 v1, 0xc8

    .line 136
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    .line 137
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->HighAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 139
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultLowAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 121
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 123
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    .line 124
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->LowAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 126
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultNoDataAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/4 v2, 0x1

    .line 172
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 173
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 176
    invoke-static {v3}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->SignalLossAlert:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 178
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 179
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultRiseRateAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 147
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 149
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/UserAlertProperties;->REPEAT_NEVER:Lcom/dexcom/cgm/k/k;

    .line 150
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->RiseRate:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 152
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultUrgentLowAlert()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>()V

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 108
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertType(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/16 v1, 0x37

    .line 110
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setThreshold(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/16 v1, 0x1e

    .line 111
    invoke-static {v1}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setIsEnabled(Z)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->UrgentLow:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 113
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertSound(Lcom/dexcom/cgm/model/enums/AlertSound;)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUrgentLowAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultLowAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultHighAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultRiseRateAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultFallRateAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    invoke-static {}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultNoDataAlert()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Non-user alert was passed into UserAlertProperties.getDefaultUserAlert(). The alert type was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/AlertKind;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlertScheduleIndex()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertScheduleIndex:I

    return v0
.end method

.method public getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    return-object v0
.end method

.method public getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getRepeatTime()Lcom/dexcom/cgm/k/k;
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_repeatTime:I

    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_threshold:I

    return v0
.end method

.method public isDaytimeAlert()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isDaytimeAlert:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserAlertProperties{m_alertScheduleIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_isDaytimeAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isDaytimeAlert:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_threshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_repeatTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_repeatTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertSound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_alertSound:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/UserAlertProperties;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
