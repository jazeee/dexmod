.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
.super Ljava/lang/Object;
.source "Jsonifiable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSON(Ljava/lang/String;Ljava/lang/Class;)Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;",
            ">;)",
            "Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 24
    :cond_0
    check-cast p1, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;

    .line 26
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;->toJSON()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;->toJSON()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/Jsonifiable;->toJSON()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
