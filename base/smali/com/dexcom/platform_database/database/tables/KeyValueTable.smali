.class public Lcom/dexcom/platform_database/database/tables/KeyValueTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "KeyValueTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/dexcom/cgm/model/KeyValuePair;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public createOrUpdateKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/KeyValuePair;

    invoke-direct {v0, p1, p2}, Lcom/dexcom/cgm/model/KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 25
    return-void
.end method

.method public readKeyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v0, "key = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/KeyValueTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/KeyValuePair;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
