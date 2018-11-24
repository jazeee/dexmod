.class public final Lcom/dexcom/cgm/tx/a/b;
.super Ljava/lang/Object;
.source "AdvertisingSyncCharacteristic.java"


# instance fields
.field private final m_absoluteTimeMs:I

.field private final m_advertisingIntervalMs:I

.field private final m_advertisingTimeoutSec:I

.field private final m_operatingIntervalSeconds:I

.field private final m_relativeTimeMs:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/dexcom/cgm/tx/a/b;->m_absoluteTimeMs:I

    .line 31
    iput p2, p0, Lcom/dexcom/cgm/tx/a/b;->m_relativeTimeMs:I

    .line 32
    iput p3, p0, Lcom/dexcom/cgm/tx/a/b;->m_operatingIntervalSeconds:I

    .line 33
    iput p4, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingIntervalMs:I

    .line 34
    iput p5, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingTimeoutSec:I

    .line 35
    return-void
.end method


# virtual methods
.method public final getAbsoluteTimeMilliseconds()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/dexcom/cgm/tx/a/b;->m_absoluteTimeMs:I

    return v0
.end method

.method public final getAdvertisingIntervalMs()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingIntervalMs:I

    return v0
.end method

.method public final getAdvertisingTimeoutSec()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingTimeoutSec:I

    return v0
.end method

.method public final getOperatingIntervalMilliseconds()J
    .locals 4

    .prologue
    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_operatingIntervalSeconds:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{absoluteTimeMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_absoluteTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", relativeTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_relativeTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatingIntervalSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_operatingIntervalSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertisingIntervalMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingIntervalMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertisingTimeoutSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/tx/a/b;->m_advertisingTimeoutSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
