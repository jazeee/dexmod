.class public interface abstract Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebservice;
.super Ljava/lang/Object;
.source "RealtimeEventWebservice.java"


# virtual methods
.method public abstract postEvents(Ljava/util/List;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract readEvents()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Ljava/util/List",
            "<+",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;>;"
        }
    .end annotation
.end method

.method public varargs abstract readLastEvents([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract readLastTimestamps([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerPublisherDeviceKey()V
.end method
