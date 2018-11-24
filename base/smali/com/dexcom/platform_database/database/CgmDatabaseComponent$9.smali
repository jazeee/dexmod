.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;
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
        "Lcom/dexcom/cgm/model/CalBounds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$200(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/CalBoundsTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/CalBoundsTable;->readLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$9;->call()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    return-object v0
.end method
