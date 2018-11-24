.class public Lcom/dexcom/cgm/model/TechSupportLogRecord;
.super Ljava/lang/Object;
.source "TechSupportLogRecord.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_activitySubType:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "activity_sub_type"
    .end annotation
.end field

.field private m_activityType:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "activity_type"
    .end annotation
.end field

.field private m_data:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "data"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "recorded_time_stamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/TechSupportActivityType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_activityType:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 49
    iput-object p2, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_activitySubType:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_data:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 52
    return-void
.end method


# virtual methods
.method public getActivitySubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_activitySubType:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_activityType:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_data:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/model/TechSupportLogRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
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
