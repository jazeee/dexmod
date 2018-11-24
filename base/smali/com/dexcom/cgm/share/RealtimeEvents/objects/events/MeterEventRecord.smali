.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;
.super Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;
.source "MeterEventRecord.java"


# instance fields
.field private final Timestamp:Ljava/lang/String;

.field private final Value:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;-><init>()V

    .line 20
    iput p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;->Value:I

    .line 21
    invoke-static {p2, p3}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/MeterEventRecord;->Timestamp:Ljava/lang/String;

    .line 22
    return-void
.end method
