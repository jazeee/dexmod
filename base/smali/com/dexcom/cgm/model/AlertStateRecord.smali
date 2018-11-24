.class public Lcom/dexcom/cgm/model/AlertStateRecord;
.super Ljava/lang/Object;
.source "AlertStateRecord.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_acknowledgementTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "last_acknowledgement_time"
    .end annotation
.end field

.field private m_alertDisplayCount:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_count"
    .end annotation
.end field

.field private m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_state"
    .end annotation
.end field

.field private m_alertTriggeredCount:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_triggered_count"
    .end annotation
.end field

.field private m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "alert_type"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_egv:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "egv"
    .end annotation
.end field

.field private m_expirationTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "expiration_time"
    .end annotation
.end field

.field private m_lastDisplayTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "last_displayed_time"
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

.field private m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "trend_arrow"
    .end annotation
.end field

.field private m_triggerTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "trigger_time"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    .line 50
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 53
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    .line 62
    return-void
.end method

.method public static createExpirationAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;ILcom/dexcom/cgm/k/j;I)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;-><init>()V

    .line 99
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 100
    iput-object p1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 101
    iput-object p2, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    .line 102
    iput-object p3, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    .line 103
    iput-object p4, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    .line 104
    iput p5, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    .line 105
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 106
    iput-object p6, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    .line 107
    iput p7, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    .line 109
    return-object v0
.end method

.method public static createGeneralAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;II)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;-><init>()V

    .line 75
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 76
    iput-object p1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 77
    iput-object p2, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    .line 78
    iput-object p3, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    .line 79
    iput-object p4, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    .line 80
    iput p5, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    .line 81
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 82
    iput p6, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    .line 84
    return-object v0
.end method

.method public static createGlucoseAlertStateRecord(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertState;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;IILcom/dexcom/cgm/model/enums/TrendArrow;I)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;-><init>()V

    .line 125
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 126
    iput-object p1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 127
    iput-object p2, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    .line 128
    iput-object p3, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    .line 129
    iput-object p4, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    .line 130
    iput p5, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    .line 131
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 132
    iput p6, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    .line 133
    iput-object p7, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 134
    iput p8, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    .line 136
    return-object v0
.end method


# virtual methods
.method public cloneWithNewDisplayedCountAndDisplayTime(ILcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertStateRecord;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertStateRecord;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 292
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 293
    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    iput v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    .line 294
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 295
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    .line 296
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    .line 297
    iput-object p2, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    .line 298
    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    iput v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    .line 299
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 300
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    iput-object v1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    .line 301
    iput p1, v0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    .line 302
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 235
    if-ne p0, p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 238
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 240
    iget v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    iget v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 241
    :cond_4
    iget v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    iget v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 242
    :cond_5
    iget v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    iget v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 243
    :cond_6
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 244
    goto :goto_0

    .line 243
    :cond_8
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    if-nez v2, :cond_7

    .line 245
    :cond_9
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    .line 246
    :cond_a
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 247
    :cond_b
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 249
    goto :goto_0

    .line 247
    :cond_d
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_c

    .line 250
    :cond_e
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    move v0, v1

    .line 252
    goto :goto_0

    .line 250
    :cond_10
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_f

    .line 253
    :cond_11
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 253
    :cond_13
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_12

    .line 256
    :cond_14
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_15
    move v0, v1

    .line 258
    goto/16 :goto_0

    .line 256
    :cond_16
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_15

    .line 259
    :cond_17
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-eq v2, v3, :cond_18

    move v0, v1

    goto/16 :goto_0

    .line 260
    :cond_18
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 262
    goto/16 :goto_0

    .line 260
    :cond_19
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAcknowledgementTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getAlertState()Lcom/dexcom/cgm/model/enums/AlertState;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    return-object v0
.end method

.method public getAlertTriggeredCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    return v0
.end method

.method public getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method public getDisplayedCount()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    return v0
.end method

.method public getEgv()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    return v0
.end method

.method public getLastDisplayTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method

.method public getTriggerTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    .line 271
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 272
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertState;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 273
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 275
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 276
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 277
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    add-int/2addr v0, v2

    .line 278
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 279
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    add-int/2addr v0, v2

    .line 280
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TrendArrow;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 281
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 282
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    add-int/2addr v0, v1

    .line 283
    return v0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0

    :cond_2
    move v0, v1

    .line 271
    goto :goto_1

    :cond_3
    move v0, v1

    .line 272
    goto :goto_2

    :cond_4
    move v0, v1

    .line 273
    goto :goto_3

    :cond_5
    move v0, v1

    .line 275
    goto :goto_4

    :cond_6
    move v0, v1

    .line 276
    goto :goto_5

    :cond_7
    move v0, v1

    .line 278
    goto :goto_6

    :cond_8
    move v0, v1

    .line 280
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlertStateRecord{m_recordID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertType:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertState:Lcom/dexcom/cgm/model/enums/AlertState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_acknowledgementTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_acknowledgementTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_lastDisplayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_lastDisplayTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_triggerTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_triggerTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertDisplayCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertDisplayCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_egv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_egv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_trendArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_expirationTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_alertTriggeredCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/AlertStateRecord;->m_alertTriggeredCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
