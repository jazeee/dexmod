.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1
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
    .line 1144
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$51;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1800(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/DataPostTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->readDataPosts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
