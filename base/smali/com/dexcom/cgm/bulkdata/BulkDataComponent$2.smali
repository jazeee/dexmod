.class Lcom/dexcom/cgm/bulkdata/BulkDataComponent$2;
.super Ljava/lang/Object;
.source "BulkDataComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/bulkdata/BulkDataComponent;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/bulkdata/BulkDataComponent;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$2;->this$0:Lcom/dexcom/cgm/bulkdata/BulkDataComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/BulkDataComponent$2;->this$0:Lcom/dexcom/cgm/bulkdata/BulkDataComponent;

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataComponent;->createPost()V

    .line 88
    return-void
.end method
