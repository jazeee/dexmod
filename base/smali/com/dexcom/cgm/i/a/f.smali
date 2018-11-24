.class public final Lcom/dexcom/cgm/i/a/f;
.super Ljava/lang/Object;
.source "DexWatchEGV.java"


# instance fields
.field private m_time:J

.field private m_trend:Lcom/dexcom/cgm/h/a/a/e;

.field private m_value:I


# direct methods
.method public constructor <init>(JLcom/dexcom/cgm/h/a/a/e;I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/dexcom/cgm/i/a/f;->m_time:J

    .line 28
    iput-object p3, p0, Lcom/dexcom/cgm/i/a/f;->m_trend:Lcom/dexcom/cgm/h/a/a/e;

    .line 29
    iput p4, p0, Lcom/dexcom/cgm/i/a/f;->m_value:I

    .line 30
    return-void
.end method


# virtual methods
.method public final getGlucoseValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/dexcom/cgm/i/a/f;->m_value:I

    return v0
.end method

.method public final getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/f;->m_trend:Lcom/dexcom/cgm/h/a/a/e;

    return-object v0
.end method

.method public final getUnixTimestamp()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/dexcom/cgm/i/a/f;->m_time:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
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
