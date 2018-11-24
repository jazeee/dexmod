.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;
.super Ljava/lang/Object;
.source "BaseEventRecord.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;)Z
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
