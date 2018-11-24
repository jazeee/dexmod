.class public interface abstract Lcom/dexcom/cgm/e/m;
.super Ljava/lang/Object;
.source "FollowerDatabaseOperations.java"


# virtual methods
.method public abstract readFollowerRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setFollowers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;)V"
        }
    .end annotation
.end method
