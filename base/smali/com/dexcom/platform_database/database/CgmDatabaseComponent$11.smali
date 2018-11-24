.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;
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
        "Lcom/dexcom/cgm/model/Meter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/model/Meter;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$300(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/MeterTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/MeterTable;->readLatestMeterRecord()Lcom/dexcom/cgm/model/Meter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$11;->call()Lcom/dexcom/cgm/model/Meter;

    move-result-object v0

    return-object v0
.end method
