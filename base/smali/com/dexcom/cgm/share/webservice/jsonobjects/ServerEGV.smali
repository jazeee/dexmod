.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;
.super Ljava/lang/Object;
.source "ServerEGV.java"


# instance fields
.field private DT:Ljava/lang/String;

.field private ST:Ljava/lang/String;

.field private Trend:I

.field private Value:I


# direct methods
.method private constructor <init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/k/j;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->Value:I

    .line 32
    invoke-static {p2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->fromLocalTrendArrow(Lcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV$ServerTrendArrow;->getServerEnumValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->Trend:I

    .line 34
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->stringifyTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->ST:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 40
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->stringifyTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->DT:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static fromLocalEGV(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/k/j;)V

    return-object v0
.end method

.method private stringifyTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/Date("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->ST:Ljava/lang/String;

    return-object v0
.end method
