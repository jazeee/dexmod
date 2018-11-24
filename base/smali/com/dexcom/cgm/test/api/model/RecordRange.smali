.class public Lcom/dexcom/cgm/test/api/model/RecordRange;
.super Ljava/lang/Object;
.source "RecordRange.java"


# instance fields
.field private firstRecordID:I

.field private lastRecordID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/dexcom/cgm/test/api/model/RecordRange;->firstRecordID:I

    .line 17
    iput p2, p0, Lcom/dexcom/cgm/test/api/model/RecordRange;->lastRecordID:I

    .line 18
    return-void
.end method


# virtual methods
.method public getFirstRecordID()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/RecordRange;->firstRecordID:I

    return v0
.end method

.method public getLastRecordID()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/RecordRange;->lastRecordID:I

    return v0
.end method
