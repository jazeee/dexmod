.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;
.super Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;
.source "GlucoseEventRecord.java"


# instance fields
.field private final Timestamp:Ljava/lang/String;

.field private final TrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field private final Value:I


# direct methods
.method public constructor <init>(ILcom/dexcom/cgm/model/enums/TrendArrow;J)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;-><init>()V

    .line 23
    iput p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;->Value:I

    .line 24
    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;->TrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 25
    invoke-static {p3, p4}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/GlucoseEventRecord;->Timestamp:Ljava/lang/String;

    .line 26
    return-void
.end method
