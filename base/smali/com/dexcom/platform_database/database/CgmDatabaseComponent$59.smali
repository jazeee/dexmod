.class Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;
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


# direct methods
.method constructor <init>(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)V
    .locals 0

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/dexcom/platform_database/database/CgmDatabaseComponent$59;->this$0:Lcom/dexcom/platform_database/database/CgmDatabaseComponent;

    invoke-static {v0}, Lcom/dexcom/platform_database/database/CgmDatabaseComponent;->access$2100(Lcom/dexcom/platform_database/database/CgmDatabaseComponent;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lnet/sqlcipher/database/SQLiteDatabase;->setMaximumSize(J)J

    .line 1273
    const/4 v0, 0x0

    return-object v0
.end method
