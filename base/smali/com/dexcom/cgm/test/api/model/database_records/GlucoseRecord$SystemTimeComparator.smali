.class public final Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord$SystemTimeComparator;
.super Ljava/lang/Object;
.source "GlucoseRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;)I
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getSystemTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->getSystemTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;

    check-cast p2, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;

    invoke-virtual {p0, p1, p2}, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord$SystemTimeComparator;->compare(Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;)I

    move-result v0

    return v0
.end method
