.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;
.super Ljava/lang/Object;
.source "PostEventsContainer.java"


# instance fields
.field private Glucose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;",
            ">;"
        }
    .end annotation
.end field

.field private Meter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;->Glucose:Ljava/util/List;

    .line 20
    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;->Meter:Ljava/util/List;

    .line 25
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No EventRecords were given!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;

    .line 33
    instance-of v4, v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;

    if-eqz v4, :cond_3

    .line 34
    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_3
    instance-of v4, v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;

    if-eqz v4, :cond_2

    .line 36
    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40
    iput-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;->Glucose:Ljava/util/List;

    .line 41
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 42
    iput-object v2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;->Meter:Ljava/util/List;

    .line 43
    :cond_6
    return-void
.end method
