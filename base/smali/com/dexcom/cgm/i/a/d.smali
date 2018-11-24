.class public final Lcom/dexcom/cgm/i/a/d;
.super Ljava/lang/Object;
.source "DexUserEvent.java"


# instance fields
.field private m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/dexcom/cgm/model/UserEvent;

    .line 30
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/a/c;->toInternal()Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v1

    .line 31
    invoke-virtual {p2}, Lcom/dexcom/cgm/i/a/a/b;->toInternal()Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3, p4}, Lcom/dexcom/cgm/model/UserEvent;-><init>(Lcom/dexcom/cgm/model/enums/UserEventType;Lcom/dexcom/cgm/model/enums/UserEventSubType;Lcom/dexcom/cgm/k/j;I)V

    iput-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    .line 34
    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/UserEvent;)Lcom/dexcom/cgm/i/a/d;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/dexcom/cgm/i/a/d;

    invoke-direct {v0}, Lcom/dexcom/cgm/i/a/d;-><init>()V

    .line 89
    iput-object p0, v0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    .line 90
    return-object v0
.end method


# virtual methods
.method public final getEventSubType()Lcom/dexcom/cgm/i/a/a/b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserEvent;->getEventSubType()Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a/b;->fromInernal(Lcom/dexcom/cgm/model/enums/UserEventSubType;)Lcom/dexcom/cgm/i/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getEventTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserEvent;->getEventTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getEventType()Lcom/dexcom/cgm/i/a/a/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserEvent;->getEventType()Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a/c;->fromInternal(Lcom/dexcom/cgm/model/enums/UserEventType;)Lcom/dexcom/cgm/i/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getEventValue()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserEvent;->getEventValue()I

    move-result v0

    return v0
.end method

.method public final setEventTime(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/UserEvent;->setEventTime(Lcom/dexcom/cgm/k/j;)V

    .line 66
    return-void
.end method

.method public final toInternal()Lcom/dexcom/cgm/model/UserEvent;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/d;->m_internalEvent:Lcom/dexcom/cgm/model/UserEvent;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
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
