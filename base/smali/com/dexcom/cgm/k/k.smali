.class public final Lcom/dexcom/cgm/k/k;
.super Ljava/lang/Object;
.source "TimeSpan.java"


# static fields
.field public static MaxValue:Lcom/dexcom/cgm/k/k;

.field public static Zero:Lcom/dexcom/cgm/k/k;


# instance fields
.field private m_seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/k;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/k;->MaxValue:Lcom/dexcom/cgm/k/k;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/k/k;

    invoke-direct {v0, v1, v1, v1}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/k/k;->Zero:Lcom/dexcom/cgm/k/k;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    mul-int/lit16 v0, p1, 0xe10

    mul-int/lit8 v1, p2, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    .line 18
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    .line 23
    return-void
.end method

.method public static FromMinutes(I)Lcom/dexcom/cgm/k/k;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    new-instance v0, Lcom/dexcom/cgm/k/k;

    invoke-direct {v0, v1, p0, v1}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 48
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/k/k;

    .line 50
    iget-wide v2, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    iget-wide v4, p1, Lcom/dexcom/cgm/k/k;->m_seconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getSeconds()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    return-wide v0
.end method

.method public final getTotalMinutes()I
    .locals 4

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 39
    long-to-int v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    iget-wide v2, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeSpan{m_seconds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dexcom/cgm/k/k;->m_seconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
