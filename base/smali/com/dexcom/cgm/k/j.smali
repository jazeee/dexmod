.class public Lcom/dexcom/cgm/k/j;
.super Ljava/lang/Object;
.source "SystemTime.java"


# static fields
.field public static Min:Lcom/dexcom/cgm/k/j;

.field private static UNKNOWN_LONG:J

.field public static final Unknown:Lcom/dexcom/cgm/k/j;


# instance fields
.field private m_seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 14
    const-wide v0, 0xffffffffL

    sput-wide v0, Lcom/dexcom/cgm/k/j;->UNKNOWN_LONG:J

    .line 15
    new-instance v0, Lcom/dexcom/cgm/k/j;

    sget-wide v2, Lcom/dexcom/cgm/k/j;->UNKNOWN_LONG:J

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/k/j;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    .line 23
    return-void
.end method

.method public static getCurrentSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public addMilliseconds(J)Lcom/dexcom/cgm/k/j;
    .locals 7

    .prologue
    .line 37
    new-instance v0, Lcom/dexcom/cgm/k/j;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    return-object v0
.end method

.method public addSeconds(J)Lcom/dexcom/cgm/k/j;
    .locals 5

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 88
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/dexcom/cgm/k/j;

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dexcom/cgm/k/j;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    add-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 54
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

    .line 56
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/k/j;

    .line 58
    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    iget-wide v4, p1, Lcom/dexcom/cgm/k/j;->m_seconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTimeInSeconds()J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    return-wide v0
.end method

.method public getTimeString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 82
    new-instance v0, Lorg/joda/time/LocalDateTime;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 83
    invoke-static {}, Lorg/joda/time/format/DateTimeFormat;->fullTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/LocalDateTime;->toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-wide v0, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    iget-wide v2, p1, Lcom/dexcom/cgm/k/j;->m_seconds:J

    sub-long/2addr v0, v2

    .line 98
    new-instance v2, Lcom/dexcom/cgm/k/k;

    long-to-int v0, v0

    invoke-direct {v2, v4, v4, v0}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    .line 99
    return-object v2
.end method

.method public subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;
    .locals 7

    .prologue
    .line 42
    new-instance v0, Lcom/dexcom/cgm/k/j;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    return-object v0
.end method

.method public subtractSeconds(J)Lcom/dexcom/cgm/k/j;
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcom/dexcom/cgm/k/j;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    sub-long/2addr v2, p1

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    sget-wide v2, Lcom/dexcom/cgm/k/j;->UNKNOWN_LONG:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 73
    const-string v0, "Unknown"

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDateTime;

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lorg/joda/time/LocalDateTime;-><init>(J)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/k/j;->m_seconds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
