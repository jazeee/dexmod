.class public Lcom/dexcom/platform_database/database/tables/DataPostTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "DataPostTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-class v0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public createDataPost(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;

    invoke-direct {v0, p1, p2, p3}, Lcom/dexcom/cgm/model/DataPostKeyValuePair;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 28
    return-void
.end method

.method public deleteDataPost(J)V
    .locals 5

    .prologue
    .line 46
    const-string v0, "sequence_number = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->deleteRecords(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public readDataPosts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "sequence_number ASC"

    invoke-virtual {p0, v1, v1, v0}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/DataPostKeyValuePair;

    .line 38
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DataPostKeyValuePair;->getPostJSON()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method
