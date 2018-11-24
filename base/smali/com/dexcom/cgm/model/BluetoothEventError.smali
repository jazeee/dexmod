.class public Lcom/dexcom/cgm/model/BluetoothEventError;
.super Ljava/lang/Object;
.source "BluetoothEventError.java"


# instance fields
.field private final m_advertiseDurationMs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advertiseDurationMs"
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

.field private final m_failure:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failure"
    .end annotation
.end field

.field private final m_failureExceptionStackTrace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failureStack"
    .end annotation
.end field

.field private final m_rssi:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rssi"
    .end annotation
.end field

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txId"
    .end annotation
.end field

.field private final m_transmitterStatusCode:B
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txStatusCode"
    .end annotation
.end field

.field private final m_warnings:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "warnings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;IJJIBLjava/lang/String;Ljava/lang/Throwable;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "Ljava/lang/String;",
            "IJJIB",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 68
    iput-object p2, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_connectStep:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_disconnectStatus:I

    .line 70
    iput-wide p4, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_advertiseDurationMs:J

    .line 71
    iput-wide p6, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_connectionDurationMs:J

    .line 72
    iput p8, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_rssi:I

    .line 73
    iput-byte p9, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_transmitterStatusCode:B

    .line 74
    iput-object p10, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_failure:Ljava/lang/String;

    .line 75
    invoke-direct {p0, p11}, Lcom/dexcom/cgm/model/BluetoothEventError;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_failureExceptionStackTrace:Ljava/lang/String;

    .line 76
    iput-object p12, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_warnings:Ljava/util/List;

    .line 77
    iput-object p13, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_connectionLog:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 88
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAdvertiseDurationMs()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_advertiseDurationMs:J

    return-wide v0
.end method

.method public getConnectStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_connectStep:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionDurationMs()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_connectionDurationMs:J

    return-wide v0
.end method

.method public getDisconnectStatus()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_disconnectStatus:I

    return v0
.end method

.method public getFailure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_failure:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_rssi:I

    return v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dexcom/cgm/model/BluetoothEventError;->m_warnings:Ljava/util/List;

    return-object v0
.end method
