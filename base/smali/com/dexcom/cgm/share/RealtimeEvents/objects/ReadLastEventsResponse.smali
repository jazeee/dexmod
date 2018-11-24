.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;
.super Ljava/lang/Object;
.source "ReadLastEventsResponse.java"


# instance fields
.field private Glucose:Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;

.field private Meter:Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecord(Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse$1;->$SwitchMap$com$dexcom$cgm$share$RealtimeEvents$objects$events$EventType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 30
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;->Glucose:Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;

    goto :goto_0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;->Meter:Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
