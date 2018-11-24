.class public Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;
.super Ljava/lang/Object;
.source "SimConnectCreateRequest.java"


# instance fields
.field private m_displayTime:J

.field private m_transmitterTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayTime()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->m_displayTime:J

    return-wide v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->m_transmitterTime:J

    return-wide v0
.end method

.method public setDisplayTime(J)V
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->m_displayTime:J

    .line 22
    return-void
.end method

.method public setTransmitterTime(J)V
    .locals 1

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimConnectCreateRequest;->m_transmitterTime:J

    .line 32
    return-void
.end method
