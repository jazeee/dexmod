.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

.field final synthetic val$sequenceNumber:J

.field final synthetic val$stringifiedDataPost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    iput-wide p2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->val$sequenceNumber:J

    iput-object p4, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->val$stringifiedDataPost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$1800(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lcom/dexcom/platform_database/database/tables/DataPostTable;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->val$sequenceNumber:J

    iget-object v1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$50;->val$stringifiedDataPost:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/dexcom/platform_database/database/tables/DataPostTable;->createDataPost(JLjava/lang/String;)V

    .line 1131
    const/4 v0, 0x0

    return-object v0
.end method
