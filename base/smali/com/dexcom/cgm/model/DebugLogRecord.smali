.class public Lcom/dexcom/cgm/model/DebugLogRecord;
.super Ljava/lang/Object;
.source "DebugLogRecord.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_message:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "message"
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

.field private m_tag:Ljava/lang/String;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "tag"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_tag:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_message:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 44
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_recordID:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, -0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/model/DebugLogRecord;->m_tag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
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
