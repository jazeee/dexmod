.class public Lcom/dexcom/cgm/test/api/model/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# instance fields
.field private m_connectionErrorCount:I

.field private m_connectionStateType:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

.field private m_lastSuccessfulConnectionTime:J

.field private m_transmitterID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_transmitterID:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_connectionErrorCount:I

    .line 27
    iput-wide p3, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_lastSuccessfulConnectionTime:J

    .line 28
    invoke-static {p5, p6, p3, p4, p2}, Lcom/dexcom/cgm/test/api/model/ConnectionState;->determineConnectionState(JJI)Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_connectionStateType:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    .line 29
    return-void
.end method

.method private static determineConnectionState(JJI)Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;
    .locals 4

    .prologue
    .line 53
    sub-long v0, p0, p2

    .line 54
    const-wide/16 v2, 0x140

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 56
    sget-object v0, Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;->OutOfRange:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    .line 64
    :goto_0
    return-object v0

    .line 58
    :cond_0
    if-lez p4, :cond_1

    .line 60
    sget-object v0, Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;->ConnectionError:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;->ConnectionSuccess:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    goto :goto_0
.end method


# virtual methods
.method public getConnectionErrorCount()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_connectionErrorCount:I

    return v0
.end method

.method public getConnectionStateType()Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_connectionStateType:Lcom/dexcom/cgm/test/api/model/ConnectionState$ConnectionStateType;

    return-object v0
.end method

.method public getLastSuccessfulConnectionTime()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_lastSuccessfulConnectionTime:J

    return-wide v0
.end method

.method public getTransmitterID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/ConnectionState;->m_transmitterID:Ljava/lang/String;

    return-object v0
.end method
