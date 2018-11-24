.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;
.super Ljava/lang/Object;
.source "CgmDatabaseComponent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/dexcom/cgm/model/Glucose;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$count:I

.field final synthetic val$endTime:Lcom/dexcom/cgm/k/j;

.field final synthetic val$startTime:Lcom/dexcom/cgm/k/j;

.field final synthetic val$transmitterId:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-object p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$startTime:Lcom/dexcom/cgm/k/j;

    iput-object p3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$endTime:Lcom/dexcom/cgm/k/j;

    iput-object p4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iput p5, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/EGVTable;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$startTime:Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$endTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget v4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$6;->val$count:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readEGVRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
