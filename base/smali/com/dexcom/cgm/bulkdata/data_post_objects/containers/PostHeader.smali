.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.source "PostHeader.java"


# instance fields
.field private PatientId:Ljava/util/UUID;

.field private ReceiverNumber:Ljava/lang/String;

.field private SequenceNumber:J

.field private SourceStream:Ljava/lang/String;

.field private Tag:Ljava/lang/String;

.field private TransmitterNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;-><init>()V

    .line 20
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->SequenceNumber:J

    .line 23
    const-string v0, "Phone2"

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->SourceStream:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->ReceiverNumber:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->Tag:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->PatientId:Ljava/util/UUID;

    .line 35
    invoke-virtual {p2}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->TransmitterNumber:Ljava/lang/String;

    .line 36
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->ReceiverNumber:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getPatientId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->PatientId:Ljava/util/UUID;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/PostHeader;->SequenceNumber:J

    return-wide v0
.end method
