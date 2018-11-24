.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;
.super Ljava/lang/Object;
.source "ReadEventsResponse.java"


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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecords(Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse$1;->$SwitchMap$com$dexcom$cgm$share$RealtimeEvents$objects$events$EventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;->Glucose:Ljava/util/List;

    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;->Meter:Ljava/util/List;

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
