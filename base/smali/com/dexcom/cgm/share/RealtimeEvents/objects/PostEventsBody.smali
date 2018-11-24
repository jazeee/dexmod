.class public Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsBody;
.super Ljava/lang/Object;
.source "PostEventsBody.java"


# instance fields
.field private Events:Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;

.field private SequenceTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;J)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsBody;->Events:Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;

    .line 21
    invoke-static {p2, p3}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsBody;->SequenceTimestamp:Ljava/lang/String;

    .line 22
    return-void
.end method
