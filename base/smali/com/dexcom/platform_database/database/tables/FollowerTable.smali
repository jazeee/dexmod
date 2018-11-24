.class public Lcom/dexcom/platform_database/database/tables/FollowerTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "FollowerTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/dexcom/cgm/model/Follower;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public readFollowerRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/FollowerTable;->readRecords()Ljava/util/List;

    move-result-object v0

    .line 36
    return-object v0
.end method

.method public setFollowers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/tables/FollowerTable;->deleteRecords()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 27
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/FollowerTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
