.class public Lcom/dexcom/cgm/model/UserEvent;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_eventSubType:Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "event_sub_type"
    .end annotation
.end field

.field private m_eventTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "event_time"
    .end annotation
.end field

.field private m_eventType:Lcom/dexcom/cgm/model/enums/UserEventType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "event_type"
    .end annotation
.end field

.field private m_eventValue:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "event_value"
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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/UserEventType;Lcom/dexcom/cgm/model/enums/UserEventSubType;Lcom/dexcom/cgm/k/j;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventType:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 49
    iput-object p2, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventSubType:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 50
    iput-object p3, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventTime:Lcom/dexcom/cgm/k/j;

    .line 51
    iput p4, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventValue:I

    .line 52
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 53
    return-void
.end method


# virtual methods
.method public getEventSubType()Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventSubType:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    return-object v0
.end method

.method public getEventTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getEventType()Lcom/dexcom/cgm/model/enums/UserEventType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventType:Lcom/dexcom/cgm/model/enums/UserEventType;

    return-object v0
.end method

.method public getEventValue()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventValue:I

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/model/UserEvent;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public setEventTime(Lcom/dexcom/cgm/k/j;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dexcom/cgm/model/UserEvent;->m_eventTime:Lcom/dexcom/cgm/k/j;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
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
