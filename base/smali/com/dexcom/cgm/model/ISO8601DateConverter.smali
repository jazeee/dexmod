.class public Lcom/dexcom/cgm/model/ISO8601DateConverter;
.super Ljava/lang/Object;
.source "ISO8601DateConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLocalISO8601Date()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 57
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 58
    invoke-virtual {v2}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnixTimeFromISO8601Date(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p0}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 28
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 37
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 38
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2, v0}, Lorg/joda/time/DateTime;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
