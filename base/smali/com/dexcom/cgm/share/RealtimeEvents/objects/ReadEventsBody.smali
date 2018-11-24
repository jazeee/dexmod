.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsBody;
.super Ljava/lang/Object;
.source "ReadEventsBody.java"


# instance fields
.field private final LastSyncTimestamps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 29
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 31
    invoke-static {v0, v1}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsBody;->LastSyncTimestamps:Ljava/util/Map;

    .line 34
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 35
    iget-object v4, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsBody;->LastSyncTimestamps:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method
