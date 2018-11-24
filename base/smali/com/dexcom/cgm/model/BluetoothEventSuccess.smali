.class public Lcom/dexcom/cgm/model/BluetoothEventSuccess;
.super Ljava/lang/Object;
.source "BluetoothEventSuccess.java"


# static fields
.field private static final INVALID_SESSION_ID:J


# instance fields
.field private final m_advertiseDurationMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advertiseDurationMs"
    .end annotation
.end field

.field private final m_backfillCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backfillCount"
    .end annotation
.end field

.field private final m_backfillRequestRangeLength:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backfillRequestRangeLength"
    .end annotation
.end field

.field private final m_backfillRequestRangeStart:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "backfillRequestRangeStart"
    .end annotation
.end field

.field private final m_connectStep:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectStep"
    .end annotation
.end field

.field private final m_connectionDurationMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectDurationMs"
    .end annotation
.end field

.field private final m_connectionLog:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "connectLog"
    .end annotation
.end field

.field private final m_disconnectStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disconnectStatus"
    .end annotation
.end field

.field private final m_egvSystemTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "egvSystemTime"
    .end annotation
.end field

.field private final m_egvTxTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "egvTxTime"
    .end annotation
.end field

.field private final m_rssi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rssi"
    .end annotation
.end field

.field private final m_sessionStartTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionStartTime"
    .end annotation
.end field

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txId"
    .end annotation
.end field

.field private final m_txStatusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txStatusCode"
    .end annotation
.end field

.field private final m_warnings:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "warnings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->INVALID_SESSION_ID:J

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/n;Ljava/lang/String;IJJIIIJJLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/n;",
            "Lcom/dexcom/cgm/k/n;",
            "Ljava/lang/String;",
            "IJJIIIJJ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 85
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_egvSystemTime:Ljava/lang/String;

    .line 86
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_egvTxTime:J

    .line 87
    if-eqz p4, :cond_0

    .line 88
    invoke-virtual {p4}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_sessionStartTime:J

    .line 90
    iput-object p5, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_connectStep:Ljava/lang/String;

    .line 91
    iput p6, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_disconnectStatus:I

    .line 92
    iput-wide p7, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_advertiseDurationMs:J

    .line 93
    iput-wide p9, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_connectionDurationMs:J

    .line 94
    iput p11, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_rssi:I

    .line 95
    move/from16 v0, p12

    iput v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_txStatusCode:I

    .line 96
    move/from16 v0, p13

    iput v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_backfillCount:I

    .line 97
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_backfillRequestRangeStart:J

    .line 98
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_backfillRequestRangeLength:J

    .line 99
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_connectionLog:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_warnings:Ljava/util/ArrayList;

    .line 101
    return-void

    .line 88
    :cond_0
    sget-wide v2, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->INVALID_SESSION_ID:J

    goto :goto_0
.end method


# virtual methods
.method public getAdvertiseDurationMs()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_advertiseDurationMs:J

    return-wide v0
.end method

.method public getConnectStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_connectStep:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionDurationMs()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_connectionDurationMs:J

    return-wide v0
.end method

.method public getDisconnectStatus()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_disconnectStatus:I

    return v0
.end method

.method public getEgvSystemTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_egvSystemTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEgvTransmitterTime()Lcom/dexcom/cgm/k/n;
    .locals 4

    .prologue
    .line 111
    new-instance v0, Lcom/dexcom/cgm/k/n;

    iget-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_egvTxTime:J

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_rssi:I

    return v0
.end method

.method public getSessionStartTime()Lcom/dexcom/cgm/k/n;
    .locals 4

    .prologue
    .line 151
    sget-wide v0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->INVALID_SESSION_ID:J

    iget-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_sessionStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dexcom/cgm/k/n;

    iget-wide v2, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_sessionStartTime:J

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTxStatusCode()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/dexcom/cgm/model/BluetoothEventSuccess;->m_txStatusCode:I

    return v0
.end method
