.class public Lcom/dexcom/cgm/test/api/ReadRecordsPayload;
.super Ljava/lang/Object;
.source "ReadRecordsPayload.java"


# instance fields
.field private recordRange:Lcom/dexcom/cgm/test/api/model/RecordRange;

.field private recordType:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;Lcom/dexcom/cgm/test/api/model/RecordRange;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/ReadRecordsPayload;->recordType:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    .line 20
    iput-object p2, p0, Lcom/dexcom/cgm/test/api/ReadRecordsPayload;->recordRange:Lcom/dexcom/cgm/test/api/model/RecordRange;

    .line 21
    return-void
.end method


# virtual methods
.method public getRecordRange()Lcom/dexcom/cgm/test/api/model/RecordRange;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/ReadRecordsPayload;->recordRange:Lcom/dexcom/cgm/test/api/model/RecordRange;

    return-object v0
.end method

.method public getRecordType()Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/ReadRecordsPayload;->recordType:Lcom/dexcom/cgm/test/api/model/enums/DatabaseRecordType;

    return-object v0
.end method
