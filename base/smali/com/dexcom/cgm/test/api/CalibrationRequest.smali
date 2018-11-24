.class public Lcom/dexcom/cgm/test/api/CalibrationRequest;
.super Ljava/lang/Object;
.source "CalibrationRequest.java"


# instance fields
.field private m_sessionOffset:J

.field private m_value:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/dexcom/cgm/test/api/CalibrationRequest;->m_value:I

    .line 17
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/CalibrationRequest;->m_sessionOffset:J

    .line 18
    return-void
.end method


# virtual methods
.method public getSessionOffset()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/CalibrationRequest;->m_sessionOffset:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dexcom/cgm/test/api/CalibrationRequest;->m_value:I

    return v0
.end method
