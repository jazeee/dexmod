.class public Lcom/dexcom/cgm/test/api/FreezeTimePayload;
.super Ljava/lang/Object;
.source "FreezeTimePayload.java"


# instance fields
.field m_secondsToFreezeAt:J

.field m_shouldFreezeTime:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/dexcom/cgm/test/api/FreezeTimePayload;->m_shouldFreezeTime:Z

    .line 26
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/FreezeTimePayload;->m_secondsToFreezeAt:J

    .line 27
    return-void
.end method


# virtual methods
.method public getSecondsToFreezeAt()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/FreezeTimePayload;->m_secondsToFreezeAt:J

    return-wide v0
.end method

.method public shouldFreezeTime()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/FreezeTimePayload;->m_shouldFreezeTime:Z

    return v0
.end method
